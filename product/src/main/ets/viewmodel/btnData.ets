import { IconButtonModel } from './IconButtonModel';

export const sysButton: IconButtonModel[] = [
  new IconButtonModel($r('app.media.news_w'), $r('app.string.text_msg')),
  new IconButtonModel($r('app.media.privacy_w'), $r('app.string.text_todo')),
  new IconButtonModel($r('app.media.notification_w'), $r('app.string.text_notice'))
]


export const myButton: IconButtonModel[] = [
  new IconButtonModel($r('app.media.personal_docs'), $r('app.string.text_personal')),
  new IconButtonModel($r('app.media.oa_todo'), $r('app.string.text_todo')),

]

export const mySettingButton: IconButtonModel[] = [
  new IconButtonModel($r('app.media.my_pwd'), $r('app.string.text_reset_pwd')),
  new IconButtonModel($r('app.media.my_dev'), $r('app.string.text_manage_dev')),
  new IconButtonModel($r('app.media.my_acc'), $r('app.string.text_change_acc')),

]


export const myAboutButton: IconButtonModel[] = [
  new IconButtonModel($r('app.media.aboutus'), $r('app.string.text_about_us')),


]


export  const app1:IconButtonModel[] = [
  new IconButtonModel($r('app.media.attendance'), $r('app.string.text_attendance')),
  new IconButtonModel($r('app.media.new_flow'), $r('app.string.text_new_flow')),
];

export const app2:IconButtonModel[] = [
  new IconButtonModel($r('app.media.attendance'), $r('app.string.text_attendance')),
  new IconButtonModel($r('app.media.new_flow'), $r('app.string.text_new_flow')),
  new IconButtonModel($r('app.media.my_flow'), $r('app.string.text_my_flow')),
  new IconButtonModel($r('app.media.schedule'), $r('app.string.text_schedule')),
  new IconButtonModel($r('app.media.done_flow'), $r('app.string.text_done_flow')),
  new IconButtonModel($r('app.media.undo_flow'), $r('app.string.text_undo_flow')),
  new IconButtonModel($r('app.media.outing_record'), $r('app.string.text_outing_record')),
  new IconButtonModel($r('app.media.email'), $r('app.string.text_email')),
  new IconButtonModel($r('app.media.conference'), $r('app.string.text_conference')),
  new IconButtonModel($r('app.media.cc'), $r('app.string.text_cc')),

];

export function getHomeGridBtnData(): Array<IconButtonModel> {
  let firstGridData: IconButtonModel[] = [
    new IconButtonModel($r('app.media.attendance'), $r('app.string.text_attendance')),
    new IconButtonModel($r('app.media.new_flow'), $r('app.string.text_new_flow')),
    new IconButtonModel($r('app.media.my_flow'), $r('app.string.text_my_flow')),
    new IconButtonModel($r('app.media.schedule'), $r('app.string.text_schedule')),
    new IconButtonModel($r('app.media.done_flow'), $r('app.string.text_done_flow')),
    new IconButtonModel($r('app.media.undo_flow'), $r('app.string.text_undo_flow')),
    new IconButtonModel($r('app.media.outing_record'), $r('app.string.text_outing_record')),
    new IconButtonModel($r('app.media.more'), $r('app.string.text_more')),

  ];
  return firstGridData;
}