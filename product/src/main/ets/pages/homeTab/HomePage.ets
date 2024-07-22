import { LocalDataManager, StyleConstants, BreakpointConstants } from '@ohos/common';
import {IconButtonModel} from '../../viewmodel/IconButtonModel';
import { sysButton, getHomeGridBtnData } from '../../viewmodel/btnData';
import {IconButton} from '../../views/IconButton';
import { SearchTitle } from '../../views/SearchTitle';
@Component
export struct HomePage {
  @StorageProp('currentBreakpoint') currentBreakpoint: string = 'sm';
  @State  newsIdx:number = 0;
  /*
  @Builder
  SearchTitle() {
    Column() {
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Image($r('app.media.title'))
          .height(StyleConstants.FULL_HEIGHT)


        Image($r('app.media.ic_scan'))
          .height(StyleConstants.FULL_HEIGHT)
          .aspectRatio(1)
      }
      .height($r('app.float.vp_twenty_four'))
      .width(StyleConstants.FULL_WIDTH)
      .margin({ bottom: $r('app.float.vp_eight') })


    }
    .width(StyleConstants.FULL_WIDTH)
    .padding($r('app.float.vp_twelve'))
  }
*/
  @Builder
  IconSysDock(buttons: IconButtonModel[]) {
    Flex({
      justifyContent: FlexAlign.SpaceAround,
      alignItems: ItemAlign.Center
    }) {
      ForEach(buttons, (iconButton: IconButtonModel) => {
        IconButton({
          props: iconButton
        })
      }, (iconButton: IconButtonModel[]) => JSON.stringify(iconButton))
    }
    .height($r('app.float.icon_dock_height'))
    .padding($r('app.float.vp_twelve'))
  }

  @Builder
  BiLineButtons(){
    Grid() {
      ForEach(getHomeGridBtnData(), (item: IconButtonModel) => {
        GridItem() {
          Column() {
            Image(item.icon)
              .width($r('app.float.vp_thirty_six'))
              .height($r('app.float.vp_thirty_six'))
            Text(item.text)
              .fontSize($r('app.float.vp_twelve'))
              .margin({ top: $r('app.float.vp_four') })
          }
        }
      }, (item: IconButtonModel) => JSON.stringify(item))
    }
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr')
    .columnsGap($r('app.float.vp_eight'))
    .rowsGap($r('app.float.vp_sixteen'))
    .padding({ top: $r('app.float.vp_eighteen'), bottom: $r('app.float.vp_twelve') })
    .height($r('app.float.home_grid_height'))
    .width(StyleConstants.FULL_WIDTH)
    .backgroundColor(Color.White)
    //.borderRadius($r('app.float.vp_twenty_four'))

  }

  @Builder
  MyData(txt:string, lef:string, type:string) {
    Flex({ direction: FlexDirection.Column }) {
      Row() {
        Text(txt)
          .fontSize($r('app.float.micro_font_size'))
        Image($r('app.media.ic_right_arrow'))
          .objectFit(ImageFit.Contain)
          .height($r('app.float.vp_ten'))
          .width($r('app.float.vp_ten'))
      }
      .alignSelf(ItemAlign.End)
      .margin({ bottom: $r('app.float.vp_fourteen') })

      Row() {
        Text(lef).fontColor('#666666').fontWeight(700)
        if(type == 'h'){
          Text('天').fontSize($r('app.float.vp_twelve'))
        } else {

        }

      }
      .alignSelf(ItemAlign.Center)

    }
    .height('100vp')
    .padding({top: $r('app.float.vp_twenty_four')})
    .margin($r('app.float.vp_twelve'))

  }

  @Builder
  MyDataBar(){
    Column()
      .width($r('app.float.vp_one'))
      .backgroundColor($r('app.color.page_background'))
      .height($r('app.float.vp_thirty_six'))
      .margin({top:$r('app.float.vp_six'), bottom:$r('app.float.vp_six')})

  }


  @Builder
  NewsHeader(){
    Flex({
      justifyContent: FlexAlign.SpaceBetween,
      alignItems: ItemAlign.Center
    }) {
      Row(){
        if(this.newsIdx == 0) {
          Text($r('app.string.text_group_news')).fontSize($r('app.float.vp_sixteen')).fontWeight(800).fontColor($r('app.color.news_btn_focus'))
          Text($r('app.string.text_group_policy')).fontSize($r('app.float.vp_fourteen')).fontWeight(500).fontColor($r('app.color.news_btn_blue')).margin({left:$r('app.float.vp_ten')})
        } else {
          Text($r('app.string.text_group_news')).fontSize($r('app.float.vp_fourteen')).fontWeight(500).fontColor($r('app.color.news_btn_blue'))
          Text($r('app.string.text_group_policy')).fontSize($r('app.float.vp_sixteen')).fontWeight(800).fontColor($r('app.color.news_btn_focus')).margin({left:$r('app.float.vp_ten')})
        }
      }
      Button($r('app.string.text_more'),{type: ButtonType.Capsule}).fontSize($r('app.float.vp_ten')).height($r('app.float.vp_sixteen')).width($r('app.float.empty_image_size')).backgroundColor(Color.Gray)
    }.height($r('app.float.home_news_header_height'))
    .width(StyleConstants.FULL_WIDTH)
  }


  @Builder
  NewsBody(){
    Column(){
      Row(){
        Column(){
          Text('06/07').fontSize('18vp').fontWeight(800).fontColor('#999999')
          Text('2024').fontSize('14vp').fontColor('#999999').margin({top:'10vp'})
        }.width('80vp')
        Column(){
          Text('唯才唯青岛·惠才赋能|“青岛菁英人才”常态化路演明白纸').fontSize('14vp').fontColor('#555555').fontWeight(800)
          Text('为持续优化我市金融赋胞人才发展生布...').fontSize('12vp').fontColor('#999999').margin({top:'6vp'})
        }.width('240vp')
      }.width('100%')
      .height('80vp')
      Divider()
        .width(StyleConstants.FULL_WIDTH)
        .height($r('app.float.vp_one'))
        .backgroundColor($r("app.color.five_alpha_black"))
        .margin({
          top: $r('app.float.vp_eight')
        })

      Row(){
        Column(){
          Text('06/07').fontSize('18vp').fontWeight(800).fontColor('#999999')
          Text('2024').fontSize('14vp').fontColor('#999999').margin({top:'10vp'})
        }.width('80vp')
        Column(){
          Text('唯才唯青岛·惠才赋能|“青岛菁英人才”常态化路演明白纸').fontSize('14vp').fontColor('#555555').fontWeight(800)
          Text('为持续优化我市金融赋胞人才发展生布...').fontSize('12vp').fontColor('#999999').margin({top:'6vp'})
        }.width('240vp')
        .align(Alignment.Start)

      }.width('100%')
      .height('80vp')

      Divider()
        .width(StyleConstants.FULL_WIDTH)
        .height($r('app.float.vp_one'))
        .backgroundColor($r("app.color.five_alpha_black"))
        .margin({
          top: $r('app.float.vp_eight')
        })


    }.padding({right:'10vp'})
  }

  @Builder
  NewsComp(){
    Column(){
      this.NewsHeader()
      this.NewsBody()
    }.backgroundColor(Color.White)
    .margin({top: $r('app.float.vp_twelve') })
    .padding($r('app.float.vp_twelve'))

  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
      Image($r('app.media.cfy_bg'))
        .width(StyleConstants.FULL_WIDTH)
        .height($r('app.float.image_background_height'))
        .objectFit(ImageFit.Auto)
      Flex({ direction: FlexDirection.Column }) {
        SearchTitle()
        Scroll() {
          Column() {
            Row().height($r('app.float.icon_dock_height'))
            this.IconSysDock(sysButton)
            this.BiLineButtons()
            // ------ start data
            Flex({
              alignItems: ItemAlign.Center,
              justifyContent: FlexAlign.SpaceAround,
              direction: FlexDirection.Row
            }){
              this.MyData('年假剩余', '12.5', 'h')
              this.MyDataBar()
              this.MyData('调休剩余', '2.0', 'h')
              this.MyDataBar()
              this.MyData('上班打卡', '8:30', 'w')
              this.MyDataBar()
              this.MyData('下班打卡', '', 'w')
            }.backgroundColor(Color.White)
            .height($r('app.float.icon_dock_height'))
            .margin({top:$r('app.float.vp_twelve')})
            // -------- end data

            this.NewsComp()
          }
          }
        .scrollBar(BarState.Off)
      }
      //.padding({ left: $r('app.float.vp_twelve'), right: $r('app.float.vp_twelve') })
    }


    }
  }



