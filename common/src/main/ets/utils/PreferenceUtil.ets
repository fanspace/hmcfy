/**
 * 轻量级缓存工具类
 */

import DataPreferences from '@ohos.data.preferences';
import { Logger } from './Logger';


export class PreferencesUtils {
  private constructor() {
  }

  /**
   * 封装一层，增加获取失败的日志输出
   * @param context
   * @param name
   */
  public static getPreferences(context: Context, name: string): Promise<DataPreferences.Preferences> {
    return new Promise<DataPreferences.Preferences>((resolved, rejected) => {
      DataPreferences.getPreferences(context, name)
        .then((res) => {
          resolved(res);
        })
        .catch((reason: Error) => {
          Logger.error('PreferencesUtils', '获取Preferences实例失败');
          rejected(reason);
        })
    });

  }


  public static setToken(context: Context, token: string, exp: number) {
    DataPreferences.getPreferences(context, 'hmcfy')
      .then((preferences) => {
        preferences.put('accessToken', token)
          .then(() => {
            // 数据存储成功
            console.log('accessToken save successfully ', token)
            console.log(typeof token)
            preferences.put('tokenExpTime', exp)
              .then(() => {
                // 第二个数据也存储成功
                console.log('tokenExpTime save successfully', exp)
                console.log(typeof exp)
              })
              .catch((reason: Error) => {
                Logger.error('PreferencesUtils', '存储tokenExpTime失败');
              });
          })
          .catch((reason: Error) => {
            Logger.error('PreferencesUtils', '存储accessToken失败');
          });
      }).catch((reason: Error) => {
      Logger.error('PreferencesUtils', '获取Preferences实例失败');

    })
  }

  public static clearToken(context: Context) {
    DataPreferences.getPreferences(context, 'hmcfy')
      .then((preferences) => {
        preferences.deleteSync('accessToken')
        preferences.deleteSync('tokenExpTime')
      }).catch((reason: Error) => {
      Logger.error('PreferencesUtils', '获取Preferences实例失败');
    })
  }

  public static getToken(context: Context): Promise<string> {
    // 异步获取token的逻辑
    return new Promise<string>((resolved, rejected) => {
      DataPreferences.getPreferences(context, 'hmcfy')
        .then((preferences) => {
          preferences.get('accessToken', '').then((accessToken) => {
            console.log('getToken and accessToken is  ', accessToken)
            preferences.get('tokenExpTime', 0).then((exptime) => {
              console.log('exp is ', exptime)
              console.log('cur time ', new Date().getTime() / 1000)
              if (exptime > new Date().getTime() / 1000 && accessToken !== '') {
                console.log('okoikokokokokokokokokokokokokokooookokokokokokokookokoko')
                resolved(accessToken.toString())
              } else {
                rejected('')
              }

            }).catch((reason: Error) => {
              Logger.error('PreferencesUtils', '获取token过期时间失败');
              rejected('')
            })
          }).catch((reason: Error) => {
            Logger.error('PreferencesUtils', '获取token失败');
            rejected('')
          })
        })
        .catch((reason: Error) => {
          Logger.error('PreferencesUtils', '获取Preferences实例失败');
          rejected('')
        })

    });
  }
  public static async getTokenAsync(context: Context): Promise<string> {
    try {
      // 模拟异步操作的完成
      const result = await PreferencesUtils.getToken(context); // 使用 await 等待异步操作完成
      return result; // 直接返回结果
    } catch (error) {
      // 如果异步操作中出现错误，抛出错误
      Logger.error('PreferencesUtils getTokenAsync', '获取Token失败');
      return ''
    }
  }

}


