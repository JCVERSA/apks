package com.transsion.audio.activities;

import androidx.p004lifecycle.Observer;
import com.transsion.audio.widgets.MusicPlayListView;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;

public class AudioPlayListSheetDialogActivity extends RxPermissionOSBottomSheetDialog {
    public final void g0(Boolean bool) {
        dismissWithoutAnim();
    }

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
        addPage(new MusicPlayListView(this).setNightType(getIntent().getBooleanExtra("theme", false)).adaptFoldState(true).fixedPagerHeight(com.transsion.utils.a.d(getBaseContext(), 473.0f))).setTitleLayoutVisible(false);
        LiveEventBus.b().d("is_hide_audio_play_list").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.g0((Boolean) obj);
            }
        });
    }
}
