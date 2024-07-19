import { LocalDataManager, StyleConstants, BreakpointConstants } from '@ohos/common';
import {IconButtonModel} from '../../viewmodel/IconButtonModel';
import { sysButton } from '../../viewmodel/btnData';
import {IconButton} from '../../views/IconButton';
@Component
export struct HomePage {

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
    .padding({ top: $r('app.float.vp_twelve'), bottom: $r('app.float.vp_twelve') })
  }

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


  build() {
    Stack({ alignContent: Alignment.Top }) {
      Image($r('app.media.cfy_bg'))
        .width(StyleConstants.FULL_WIDTH)
        .height($r('app.float.image_background_height'))
        .objectFit(ImageFit.Auto)
      Flex({ direction: FlexDirection.Column }) {
        this.SearchTitle()
        Scroll() {
          Column() {
            Row().height($r('app.float.icon_dock_height'))
            this.IconSysDock(sysButton)
          }
          }
        .scrollBar(BarState.Off)
      }
      .padding({ left: $r('app.float.vp_twelve'), right: $r('app.float.vp_twelve') })
    }


    }
  }



