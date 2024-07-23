import { LocalDataManager, StyleConstants, BreakpointConstants } from '@ohos/common';
import {IconButtonModel} from '../../viewmodel/IconButtonModel';
import { app1, app2 } from '../../viewmodel/btnData';
import { SearchTitle } from '../../views/SearchTitle';
import uiEffect from '@ohos.graphics.uiEffect';

@Component
export struct AppPage {
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
  @Builder
  adapters(title:string, buttons: IconButtonModel[]) {
      GridRow({ columns: 3, gutter: 1 }) {
        ForEach(buttons, (item: IconButtonModel) => {
          GridCol() {
            Column() {
              Image(item.icon)
                .size({ width: 35, height: 35 })
              Text(item.text).fontSize(12).fontColor(Color.Black).margin({ top: 5 })
            }
            .justifyContent(FlexAlign.Center)
            .backgroundColor(Color.White)
            .aspectRatio(1.4)
            .width('100%')
            .onClick(e => {
              /*
            switch (item.id) {
              case 0: {
                break
              }
              case 1: {
                break
              }
              case 2: {
                break
              }
              case 3: {
                break
              }
              case 4: {
                break
              }
              case 6: {
                break
              }
              case 8: {
                break
              }
              case 9: {
                break
              }
              case 11: {
                break
              }

              case 5:
              case 7:
              case 10:
              case 12:
              case 13:
                goWebView(item.url)
                break
            }
            */
            })
          }
        })

    }
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
          .margin({top: '122vp'})

        Scroll() {
        Column() {
          Text('常用应用').fontSize('14vp').height('30vp').width('100%').textAlign(TextAlign.Center).backgroundColor($r('app.color.page_background')).margin({top:'30vp', bottom:'10vp'}).padding({top:'10vp'})
          this.BiLineButtons('常用应用', app1)
          Row().height('6vp')
          //this.BiLineButtons('协同办公', app2)
          Text('协同办公').fontSize('14vp').margin({top:'10vp', bottom:'10vp'})
          this.adapters('协同办公', app2)
        }
      }
      .scrollBar(BarState.Off)

    }
      }
  }


}