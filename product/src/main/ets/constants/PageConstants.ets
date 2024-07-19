/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License,Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

export class PageConstants {
  static readonly FULL_PARENT = '100%';
  /**
   * Spacing of other login methods
   */
  static readonly LOGIN_METHODS_SPACE = 44;
  /**
   * The width of button
   */
  static readonly BUTTON_WIDTH = '90%';
  /**
   * Input length of the account.
   */
  static readonly INPUT_ACCOUNT_LENGTH = 11;

  /**
   *  Input length of the password.
   */
  static readonly INPUT_PASSWORD_LENGTH = 8;
  /**
   * Delay time of simulated login
   */
  static readonly LOGIN_DELAY_TIME = 2000;
  /**
   *  Left padding of the input box
   */
  static readonly INPUT_PADDING_LEFT = 0;
  /**
   * Delay time to router MainPage.
   */
  static readonly DELAY_TIME: number = 2000;

  /**
   * The value of letter space: 16vp.
   */
  static readonly LETTER_SPACE: string = '16vp';

  /**
   * The value of tab bar button space: 6vp.
   */
  static readonly BUTTON_SPACE: string = '6vp';
  /**
   * Loginpage url.
   */
  static readonly  LOGIN_PAGE_URL: string = 'pages/LoginPage';

  /**
   * MainPage url.
   */
  static readonly  MAIN_PAGE_URL: string = 'pages/MainPage';

  /**
   * CommodityDetailPage url.
   */
  static readonly  COMMODITY_DETAIL_PAGE_URL: string = 'pages/CommodityDetailPage';

  /**
   * Index of home tab.
   */
  static readonly HOME_INDEX: number = 0;

  /**
   * Index of newProduct tab.
   */
  static readonly APP_INDEX: number = 1;

  /**
   * Index of shopCart tab.
   */
  static readonly MSG_INDEX: number = 2;

  /**
   * Index of personal tab.
   */
  static readonly MY_INDEX: number = 3;

  /**
   * Image aspect ratio value: 1.
   */
  static readonly IMAGE_ASPECT_RATIO: number = 1;

  /**
   * Key of router get params: tabIndex.
   */
  static readonly TABLE_INDEX_KEY: string = 'tabIndex';

  /**
   * Key of router get params: orderList.
   */
  static readonly ORDER_LIST_KEY: string = 'orderList';

  /**
   * Key of router get params: order.
   */
  static readonly ORDER_KEY: string = 'order';

  /**
   * Key of router get params: orderIds.
   */
  static readonly ORDER_IDS_KEY: string = 'orderIds';

  /**
   * Key of router get params: id.
   */
  static readonly ID_KEY: string = 'id';
  /**
   * Size of badge.
   */
  static readonly BADGE_SIZE: number = 16;
}