import { LocalDataManager, StyleConstants, BreakpointConstants } from '@ohos/common';
@Component
export struct MyPage {

  @Builder
  SearchComp(){
    Row() {
      Image($r('app.media.ic_search_normal'))
        .width($r('app.float.vp_twenty'))
        .height($r('app.float.vp_twenty'))
        .margin({
          left: $r('app.float.vp_twelve'),
          right: $r('app.float.vp_eight')
        })

      /*
      Swiper() {
        ForEach(searchSwiper, (item: Resource) => {
          Column() {
            Text(item)
              .fontSize($r('app.float.small_font_size'))
              .fontColor(Color.Black)
          }
          .alignItems(HorizontalAlign.Start)
        }, (item: Resource) => JSON.stringify(item))
      }
      .autoPlay(true)
      .loop(true)
      .vertical(true)
      .indicator(false)*/
    }
    .height($r('app.float.search_swiper_height'))
    .width(StyleConstants.FULL_WIDTH)
    .borderRadius($r('app.float.vp_twenty'))
    .backgroundColor(Color.White)
  }
  build() {
    Text('My')
  }

}