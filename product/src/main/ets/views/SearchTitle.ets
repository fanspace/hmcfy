import { StyleConstants } from '@ohos/common';
@Component
export struct SearchTitle {
build(){
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
}