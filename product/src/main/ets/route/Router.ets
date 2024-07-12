import router from '@ohos.router'
import { Logger } from '@ohos/common';

export class Router {
  static push(url: string, params?: Object) {
    router.pushUrl({ url: url, params: params }, router.RouterMode.Standard, (err) => {
      if (err) {
        Logger.error(`pushUrl failed, code is ${err.code}, message is ${err.message}`);
        return;
      }
      Logger.info('pushUrl success' + url);
    })
  }

  static replace(url: string, params?: Object) {
    router.replaceUrl({ url: url, params: params }, router.RouterMode.Standard, (err) => {
      if (err) {
        Logger.error(`replaceUrl failed, code is ${err.code}, message is ${err.message}`);
        return;
      }
      Logger.info('replaceUrl success' + url);
    })
  }
}