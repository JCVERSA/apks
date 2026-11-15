package com.transsion.magicvideo.activities;

import com.transsion.magicvideo.widgets.minibar.VideoPlayListView;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.utils.a;
import defpackage.j06;

public class VideoPlayListSheetDialogActivity extends RxPermissionOSBottomSheetDialog {
    @Override
    public boolean getDragHandlerVisibility() {
        return true;
    }

    @Override
    public boolean getSupportGesture() {
        return true;
    }

    @Override
    public void initView() {
        super.initView();
        addPage(new VideoPlayListView(this).setDayNightType(this.mIsDayNight).setCallFrom(this.mCallFrom).adaptFoldState(true).fixedPagerHeight(a.d(getBaseContext(), 473.0f))).setTitleLayoutVisible(false);
        j06.d(this.mCallFrom);
    }
}
