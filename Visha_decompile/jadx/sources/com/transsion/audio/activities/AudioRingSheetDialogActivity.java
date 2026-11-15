package com.transsion.audio.activities;

import com.transsion.audio.R;
import com.transsion.audio.widgets.AudioRingTypeListView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import defpackage.da7;

public class AudioRingSheetDialogActivity extends RxPermissionOSBottomSheetDialog {
    @Override
    public void initView() {
        super.initView();
        OSPageView oSPageViewAddPage = addPage(new AudioRingTypeListView(this, (AudioItem) getIntent().getParcelableExtra("data")));
        oSPageViewAddPage.setTitle(R.string.set_as).setCloseIconVisibility(false);
        da7.a(oSPageViewAddPage);
    }

    @Override
    public boolean isFixedHeight() {
        return false;
    }
}
