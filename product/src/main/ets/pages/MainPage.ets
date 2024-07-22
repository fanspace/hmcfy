import {
  BreakpointSystem,
  LocalDataManager,
  Logger,
  StyleConstants,
  BreakpointConstants
} from '@ohos/common';
import { HomePage } from './homeTab/HomePage'
import { AppPage } from './appTab/AppPage'
import { MsgPage } from './msgTab/MsgPage'
import { MyPage } from './myTab/MyPage'
import { PageConstants } from '../constants/PageConstants';
import { buttonInfo, ButtonInfoModel } from '../viewmodel/TabData';
@Entry
@Component
struct MainPage {
  @StorageProp('currentBreakpoint') currentBreakpoint: string = 'sm';
  @StorageLink('IndexPage') currentPageIndex: number = 0;
  private breakpointSystem = new BreakpointSystem();
  //private localDataManager: LocalDataManager = LocalDataManager.instance();
  aboutToAppear() {
    this.breakpointSystem.register();
  }
  aboutToDisappear() {
    this.breakpointSystem.unregister();
  }

  onPageShow() {
   // this.queryOrderList();
  }
  @Builder BottomNavigation(button: ButtonInfoModel) {
    Column({ space: PageConstants.BUTTON_SPACE }) {
      Image(this.currentPageIndex === button.index ? button.selectImg : button.img)
        .objectFit(ImageFit.Contain)
        .width($r('app.float.main_image_size'))
        .height($r('app.float.main_image_size'))
      Text(button.title)
        .fontColor(this.currentPageIndex === button.index ? $r('app.color.focus_color') : Color.Black)
        .opacity(this.currentPageIndex === button.index ? StyleConstants.FULL_OPACITY : StyleConstants.SIXTY_OPACITY)
        .fontWeight(StyleConstants.FONT_WEIGHT_FIVE)
        .textAlign(TextAlign.Center)
        .fontSize($r('app.float.micro_font_size'))
    }
    .width(StyleConstants.FULL_WIDTH)
    .height(StyleConstants.FULL_HEIGHT)
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Column() {
      Tabs({
        barPosition: this.currentBreakpoint === BreakpointConstants.BREAKPOINT_LG ? BarPosition.Start : BarPosition.End,
        index: this.currentPageIndex
      }) {
        TabContent() {
          HomePage()
        }
        .tabBar(this.BottomNavigation(buttonInfo[PageConstants.HOME_INDEX]))

        TabContent() {
          AppPage()
        }
        .tabBar(this.BottomNavigation(buttonInfo[PageConstants.APP_INDEX]))

        TabContent() {
          MsgPage()
        }
        .tabBar(this.BottomNavigation(buttonInfo[PageConstants.MSG_INDEX]))

        TabContent() {
          MyPage()
        }
        .tabBar(this.BottomNavigation(buttonInfo[PageConstants.MY_INDEX]))
      }
      .barWidth(this.currentBreakpoint === BreakpointConstants.BREAKPOINT_LG ?
      $r('app.float.bar_width') : StyleConstants.FULL_WIDTH)
      .barHeight(this.currentBreakpoint === BreakpointConstants.BREAKPOINT_LG ?
      StyleConstants.SIXTY_HEIGHT : $r('app.float.vp_fifty_six'))
      .vertical(this.currentBreakpoint === BreakpointConstants.BREAKPOINT_LG)
      .scrollable(false)
      .onChange((index: number) => {
        this.currentPageIndex = index;
        /*if (index === PageConstants.HOME_INDEX) {
          this.queryNews();
        } else if (index === PageConstants.MSG_INDEX) {
          this.queryMsgs();
        }*/
      })
    }
    .backgroundColor($r('app.color.page_background'))
  }
}