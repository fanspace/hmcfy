import { LocalDataManager, StyleConstants, BreakpointConstants } from '@ohos/common';
import { SearchTitle } from '../../views/SearchTitle';
import {IconButtonModel} from '../../viewmodel/IconButtonModel';
import { myButton, mySettingButton, myAboutButton } from '../../viewmodel/btnData';
import {IconButton} from '../../views/IconButton';
@Component
export struct MyPage {
  @StorageProp('currentBreakpoint') currentBreakpoint: string = 'md';
  getdynamicRows = (btn:IconButtonModel[]) => {
    const rows =  Math.ceil(btn.length / 4);
    const tmp = new Array(rows).fill('1fr').join(' ');
    console.log(tmp)
    return tmp
  }
  getdynamicHeight = (btn:IconButtonModel[]) => {
    return  70 * Math.ceil( btn.length / 4)  + 'vp'
  }
@Builder
TopBoard(){
  Column(){
    Row(){
      Image($r('app.media.avatar'))
        .height('60vp')
        .aspectRatio(1)
        .opacity(1)

      Column(){
        Text('某某某').fontSize('16vp').fontColor('#000').fontWeight(600).letterSpacing('10vp')
        Text('上次登录时间 2024年7月10日').fontSize('12vp').fontColor('#333').margin({top: '5vp'})
      }
      .padding({left: '10vp'})
      .alignItems(HorizontalAlign.Start)
      .width('60%')

    }.height('80vp')
    .width('100%')
    .padding('12vp')
    .align(Alignment.Start)


    Row(){
      Rect().width('12vp')
      Image($r('app.media.unit'))
        .height('24vp')
        .aspectRatio(1)
      Text('青岛市人才发展集团 / 测试部门').fontSize('12vp').fontWeight(600).letterSpacing('2vp').padding({left:'6vp'})

    }.height('40vp')
    .width('100%')
    .padding('12vp')
    .align(Alignment.Start)



  }
  .alignItems(HorizontalAlign.Start)
  .width('100%')
  .height('118vp')
  .backgroundColor(Color.White)
  .borderRadius({topLeft:'16vp', topRight: '16vp'})
  .opacity(0.76)
}

@Builder
MyBoard(){
  Column(){
    this.BiLineButtons('我的',myButton)
  }.alignItems(HorizontalAlign.Start)
  .width('100%')
  .height('80vp')
  .backgroundColor(Color.White)


}

  @Builder
  BiLineButtons(title:string ,buttons: IconButtonModel[]){
    Grid() {
      ForEach(buttons, (item: IconButtonModel) => {
        GridItem() {
          Column() {
            Image(item.icon)
              .width($r('app.float.vp_twenty_four'))
              .height($r('app.float.vp_twenty_four'))
            Text(item.text)
              .fontSize($r('app.float.vp_twelve'))
              .margin({ top: $r('app.float.vp_four') })
          }
        }
      }, (item: IconButtonModel) => JSON.stringify(item))
    }
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsTemplate(this.getdynamicRows(buttons))
    .columnsGap($r('app.float.vp_eight'))
    .rowsGap($r('app.float.vp_sixteen'))
    .padding({ top: $r('app.float.vp_eighteen'), bottom: $r('app.float.vp_twelve') })
    .height(this.getdynamicHeight(buttons))
    .width(StyleConstants.FULL_WIDTH)
    .backgroundColor(Color.White)
    .margin({top:'5vp'})
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
      Image($r('app.media.cfy_bg'))
        .width(StyleConstants.FULL_WIDTH)
        .height($r('app.float.image_background_height'))
        .objectFit(ImageFit.Auto)
      SearchTitle()
      Flex({ direction: FlexDirection.Column }) {

        /***********  top board *********/
        this.TopBoard()
        Row().height('12vp')
        this.MyBoard()
        Row().height('6vp')
        this.BiLineButtons('', mySettingButton)
        Row().height('6vp')
        this.BiLineButtons('关于', myAboutButton)


      }.padding('12vp')
      .margin({top: '120vp'})
    }.backgroundColor($r('app.color.page_background'))

  }
}