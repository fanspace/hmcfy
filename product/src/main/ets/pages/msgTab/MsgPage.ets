import { LocalDataManager, StyleConstants, BreakpointConstants } from '@ohos/common';
import { SearchTitle } from '../../views/SearchTitle';
@Component
export struct MsgPage {
  @StorageProp('currentBreakpoint') currentBreakpoint: string = 'md';
  @State  newsIdx:number = 0;
  @Builder
  MsgHeader(){
    Flex({
      justifyContent: FlexAlign.SpaceBetween,
      alignItems: ItemAlign.Center
    }) {
      Row(){
        if(this.newsIdx == 0) {
          Text($r('app.string.text_msg')).fontSize($r('app.float.vp_eighteen')).fontWeight(800).fontColor('#eeeeee')
          Text($r('app.string.text_group')).fontSize($r('app.float.vp_fourteen')).fontWeight(500).fontColor($r('app.color.news_btn_blue')).margin({left:$r('app.float.vp_ten')})
        } else {
          Text($r('app.string.text_msg')).fontSize($r('app.float.vp_fourteen')).fontWeight(500).fontColor($r('app.color.news_btn_blue'))
          Text($r('app.string.text_group')).fontSize($r('app.float.vp_eighteen')).fontWeight(800).fontColor('#eeeeee').margin({left:$r('app.float.vp_ten')})
        }
      }
      Button($r('app.string.text_todo'),{type: ButtonType.Capsule}).fontSize($r('app.float.vp_ten')).height($r('app.float.vp_sixteen')).width($r('app.float.empty_image_size')).backgroundColor('#333333')
    }
    .width(StyleConstants.FULL_WIDTH)
    .height('50vp')
    .padding('12vp')

  }

  @Builder
  MsgBody(){
    Column(){
      Row(){
        Column(){
          Image($r('app.media.oa_msg')).width('36vp').height('36vp')
          Text('消息').fontSize('12vp').fontColor('#666666').margin({top:'3vp'})
        }.width('80vp')
        Column(){
          Text('唯才唯青岛·惠才赋能|“青岛菁英人才”常态化路演明白纸').fontSize('14vp').fontColor('#333333').fontWeight(800)
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
          Image($r('app.media.oa_todo')).width('36vp').height('36vp')
          Text('待办').fontSize('12vp').fontColor('#666666').margin({top:'3vp'})
        }.width('80vp')
        Column(){
          Text('唯才唯青岛·惠才赋能|“青岛菁英人才”常态化路演明白纸').fontSize('14vp').fontColor('#333333').fontWeight(800)
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
      Row(){
        Column(){
          Image($r('app.media.oa_grp')).width('36vp').height('36vp')
          Text('群组').fontSize('12vp').fontColor('#666666').margin({top:'3vp'})
        }.width('80vp')
        Column(){
          Text('唯才唯青岛·惠才赋能|“青岛菁英人才”常态化路演明白纸').fontSize('14vp').fontColor('#333333').fontWeight(800)
          Text('为持续优化我市金融赋胞人才发展生布...').fontSize('12vp').fontColor('#999999').margin({top:'6vp'})
        }.width('240vp')
        .align(Alignment.Start)

      }.width('100%')
      .height('80vp')

    }.padding({right:'10vp'})
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
      Image($r('app.media.cfy_bg'))
        .width(StyleConstants.FULL_WIDTH)
        .height($r('app.float.image_background_height'))
        .objectFit(ImageFit.Auto)
      Flex({ direction: FlexDirection.Column }) {
        SearchTitle()
        Column() {
          Rect().height('128vp')
          this.MsgHeader()

        }
        Scroll() {
        this.MsgBody()
        }.margin({top: '20vp'})
        .scrollBar(BarState.Off)


      }
      }
  }

}