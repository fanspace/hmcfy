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

import { IconButtonModel } from './IconButtonModel';

const orderButton: IconButtonModel[] = [
  new IconButtonModel(
    $r('app.media.ic_credit_card'),
    $r('app.string.pending_payment'),
    OrderType.PAYMENT,
    0
  ),
  new IconButtonModel(
    $r('app.media.ic_evaluation'),
    $r('app.string.pending_shipment'),
    OrderType.SHIP,
    0
  ),
/*
new IconButtonModel(
  $r('app.media.ic_flat'),
  $r('app.string.pending_receive'),
  OrderType.RECEIPT,
  0
),
new IconButtonModel(
  $r('app.media.ic_evaluation'),
  $r('app.string.pending_evaluated'),
  OrderType.EVALUATION,
  0
),
new IconButtonModel(
  $r('app.media.ic_sale'),
  $r('app.string.pending_after_sales'),
  OrderType.SALE,
  0
)*/
]

const sysButton: IconButtonModel[] = [
  new IconButtonModel($r('app.media.ic_public_community_messages'), $r('app.string.sys_msg')),
  new IconButtonModel($r('app.media.ic_public_community_messages'), $r('app.string.sys_todo')),
  new IconButtonModel($r('app.media.ic_public_community_messages'), $r('app.string.sys_notice'))
]

const home1Button: IconButtonModel[] = [
  new IconButtonModel($r('app.media.ic_member'), $r('app.string.home_workcard')),
  new IconButtonModel($r('app.media.ic_member'), $r('app.string.home_outcard')),
  new IconButtonModel($r('app.media.ic_member'), $r('app.string.home_newflow')),
  new IconButtonModel($r('app.media.ic_member'), $r('app.string.home_myapplication')),
]

const home2Button: IconButtonModel[] = [
  new IconButtonModel($r('app.media.ic_member'), $r('app.string.home_flowing')),
  new IconButtonModel($r('app.media.ic_member'), $r('app.string.home_flowdone')),
  new IconButtonModel($r('app.media.ic_member'), $r('app.string.home_calendar')),
  new IconButtonModel($r('app.media.ic_member'), $r('app.string.home_more')),
]


const memberButton: IconButtonModel[] = [
  new IconButtonModel($r('app.media.ic_member'), $r('app.string.member_type')),
  new IconButtonModel($r('app.media.ic_score'), $r('app.string.bonus_store')),
  new IconButtonModel($r('app.media.ic_interact'), $r('app.string.interactive')),

]

const activityButton: IconButtonModel[] = [
  new IconButtonModel($r('app.media.ic_official'), $r('app.string.official_service')),
/*new IconButtonModel($r('app.media.ic_cash'), $r('app.string.cash')),
new IconButtonModel($r('app.media.ic_trade'), $r('app.string.trade_in')),
new IconButtonModel($r('app.media.ic_my_evaluation'), $r('app.string.my_evaluation'))*/
]

class LiveDataModel {
  liveId: string = '';
  living: boolean = false;
  watchDesc: string = '';
  previewIcon: string = '';
  liverIcon: string = '';
  liverName: string = '';
  liverDesc: string = '';
}

const liveData: LiveDataModel[] = [
  {
    liveId: '1',
    living: true,
    watchDesc: '2.9万人观看',
    previewIcon: 'common/food.png',
    liverIcon: 'common/ic_person.png',
    liverName: '首席美食家',
    liverDesc: '带您品尝各地美食'
  },
  {
    liveId: '2',
    living: true,
    watchDesc: '2.9万人观看',
    previewIcon: 'common/scenery.png',
    liverIcon: 'common/ic_person.png',
    liverName: '大旅游家',
    liverDesc: '带您走遍天下奇景'
  },
  {
    liveId: '3',
    living: false,
    watchDesc: '0人观看',
    previewIcon: 'common/food.png',
    liverIcon: 'common/ic_person.png',
    liverName: '首席美食家',
    liverDesc: '带您品尝各地美食'
  },
  {
    liveId: '4',
    living: true,
    watchDesc: '2.9万人观看',
    previewIcon: 'common/scenery.png',
    liverIcon: 'common/ic_person.png',
    liverName: '大旅游家',
    liverDesc: '带您走遍天下奇景'
  },
  {
    liveId: '5',
    living: true,
    watchDesc: '2.9万人观看',
    previewIcon: 'common/food.png',
    liverIcon: 'common/ic_person.png',
    liverName: '首席美食家',
    liverDesc: '带您品尝各地美食'
  },
  {
    liveId: '6',
    living: true,
    watchDesc: '2.9万人观看',
    previewIcon: 'common/scenery.png',
    liverIcon: 'common/ic_person.png',
    liverName: '大旅游家',
    liverDesc: '带您走遍天下奇景'
  },
  {
    liveId: '7',
    living: true,
    watchDesc: '2.9万人观看',
    previewIcon: 'common/food.png',
    liverIcon: 'common/ic_person.png',
    liverName: '首席美食家',
    liverDesc: '带您品尝各地美食'
  },
  {
    liveId: '8',
    living: true,
    watchDesc: '2.9万人观看',
    previewIcon: 'common/scenery.png',
    liverIcon: 'common/ic_person.png',
    liverName: '大旅游家',
    liverDesc: '带您走遍天下奇景'
  }
]

export { home1Button, home2Button, sysButton, orderButton, memberButton, activityButton, liveData, LiveDataModel };