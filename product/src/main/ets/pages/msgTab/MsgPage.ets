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
          Text($r('app.string.text_msg')).fontSize($r('app.float.vp_sixteen')).fontWeight(800).fontColor('#eeeeee')
          Text($r('app.string.text_todo')).fontSize($r('app.float.vp_fourteen')).fontWeight(500).fontColor($r('app.color.news_btn_blue')).margin({left:$r('app.float.vp_ten')})
        } else {
          Text($r('app.string.text_msg')).fontSize($r('app.float.vp_fourteen')).fontWeight(500).fontColor($r('app.color.news_btn_blue'))
          Text($r('app.string.text_todo')).fontSize($r('app.float.vp_sixteen')).fontWeight(800).fontColor('#eeeeee').margin({left:$r('app.float.vp_ten')})
        }
      }
      Button($r('app.string.text_more'),{type: ButtonType.Capsule}).fontSize($r('app.float.vp_ten')).height($r('app.float.vp_sixteen')).width($r('app.float.empty_image_size')).backgroundColor('#333333')
    }
    .width(StyleConstants.FULL_WIDTH)
    .height('40vp')
    .padding('12vp')
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
          Column(){

          }.width(StyleConstants.FULL_WIDTH)
          .height('100%')
          .backgroundColor(Color.White)
          .margin({top: '20vp'})

        }
        Scroll() {

        }
        .scrollBar(BarState.Off)


      }
      }
  }

}