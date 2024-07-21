import { LocalDataManager, StyleConstants, BreakpointConstants } from '@ohos/common';
import {IconButtonModel} from '../../viewmodel/IconButtonModel';
import { app1, app2 } from '../../viewmodel/btnData';
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
  SearchTitle() {
    Column() {
      Row() {
        Image($r('app.media.ic_search_normal'))
          .width($r('app.float.vp_twenty'))
          .height($r('app.float.vp_twenty'))
          .margin({
            left: $r('app.float.vp_twelve'),
            right: $r('app.float.vp_eight')
          })

      }
      .height('40vp')
      .width(StyleConstants.FULL_WIDTH)
      .borderRadius($r('app.float.vp_twenty'))
      .backgroundColor(Color.White)
    }
    .width(StyleConstants.FULL_WIDTH)
    .padding({ top: $r('app.float.vp_twelve'), bottom: $r('app.float.vp_twelve') })
  }

  @Builder
  BiLineButtons(buttons: IconButtonModel[]){
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
    //.borderRadius($r('app.float.home_grid_borderRadius'))

  }

  build() {
    Scroll() {
      Column() {
        Text('应用')
        this.SearchTitle()
        Text('常用应用')
          .margin('10vp')
       this.BiLineButtons(app1)
        Text('协同办公')
          .margin('10vp')
        this.BiLineButtons(app2)

      }
    }
    .scrollBar(BarState.Off)

  }

}