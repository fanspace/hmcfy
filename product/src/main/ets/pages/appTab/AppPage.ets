import { LocalDataManager, StyleConstants, BreakpointConstants } from '@ohos/common';
import {IconButtonModel} from '../../viewmodel/IconButtonModel';
import { app1, app2 } from '../../viewmodel/btnData';
import { SearchTitle } from '../../views/SearchTitle';
@Component
export struct AppPage {
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
  BiLineButtons(title:string ,buttons: IconButtonModel[]){
    Column(){
      Text(title).fontSize('14vp').height('26vp').width('100%').backgroundColor(Color.White).padding({left:'12vp', top:'8vp'})
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

    }.margin({top:'5vp'})



  }
  @Builder
  SearchComp() {
     Row() {
        Image($r('app.media.ic_search_normal'))
          .width($r('app.float.vp_sixteen'))
          .height($r('app.float.vp_sixteen'))
          .opacity(0.7)
          .margin({
            left: $r('app.float.vp_twelve'),
            right: $r('app.float.vp_eight')
          })
        Text($r('app.string.text_search_app')).fontSize($r('app.float.vp_twelve')).fontColor($r('app.color.search_app'))
      }
      .height('36vp')
      .width('90%')
      .borderRadius($r('app.float.vp_twenty'))
      .backgroundColor('#eeeeee')

    }

    build() {
      Stack({ alignContent: Alignment.Top }) {
        Image($r('app.media.cfy_bg'))
          .width(StyleConstants.FULL_WIDTH)
          .height($r('app.float.image_background_height'))
          .objectFit(ImageFit.Auto)
        Flex({ direction: FlexDirection.Column }) {
          SearchTitle()
          //Row().height('160vp')
          Row(){
            this.SearchComp()
          }.
          alignSelf(ItemAlign.Center)
          .margin({top: '128vp'})
          Row().height('16vp')
        Scroll() {
        Column() {
          this.BiLineButtons('常用应用', app1)
          Row().height('6vp')
          this.BiLineButtons('协同办公', app2)

        }
      }
      .scrollBar(BarState.Off)

    }
      }
  }
}