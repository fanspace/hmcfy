import { LocalDataManager, StyleConstants, BreakpointConstants } from '@ohos/common';
import {IconButtonModel} from '../../viewmodel/IconButtonModel';
import { sysButton, getHomeGridBtnData } from '../../viewmodel/btnData';
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
    .padding($r('app.float.vp_twelve'))
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
            this.BiLineButtons()
          }
          }
        .scrollBar(BarState.Off)
      }
      //.padding({ left: $r('app.float.vp_twelve'), right: $r('app.float.vp_twelve') })
    }


    }
  }



