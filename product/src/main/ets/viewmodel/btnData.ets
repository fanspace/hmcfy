import { IconButtonModel } from './IconButtonModel';

export const sysButton: IconButtonModel[] = [
  new IconButtonModel($r('app.media.news_w'), $r('app.string.text_msg')),
  new IconButtonModel($r('app.media.privacy_w'), $r('app.string.text_todo')),
  new IconButtonModel($r('app.media.card_w'), $r('app.string.text_notice'))
]

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