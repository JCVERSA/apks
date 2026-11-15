package com.transsion.audio.activities;

import android.os.Build;
import android.os.Bundle;
import com.transsion.audio.R;
import com.transsion.audio.fragments.AudiosFragment;
import com.transsion.playercommon.activities.BaseShowAudioVideoListActivity;
import defpackage.a64;
import defpackage.hb0;

public class FilterResultActivity extends BaseShowAudioVideoListActivity {
    public void initFragment() {
        AudiosFragment audiosFragment = (AudiosFragment) AudiosFragment.a3(36).setBaseActivity(this);
        audiosFragment.L = true;
        a64.i(this, audiosFragment, true);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_container);
        if (Build.VERSION.SDK_INT >= 30) {
            getWindow().setDecorFitsSystemWindows(false);
        }
        initFragment();
        hb0.markDirect("vd_audio_filt_hide_show");
    }
}
