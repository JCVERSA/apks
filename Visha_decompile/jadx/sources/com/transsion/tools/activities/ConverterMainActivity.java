package com.transsion.tools.activities;

import android.os.Bundle;
import com.transsion.playercommon.activities.BaseShowAudioVideoListActivity;
import com.transsion.tools.R;
import com.transsion.tools.covert.fragments.ConverterMainFragment;
import com.transsion.utils.a;
import defpackage.a64;

public class ConverterMainActivity extends BaseShowAudioVideoListActivity {
    public int N;

    public void initFragment() {
        a64.i(this, (ConverterMainFragment) ConverterMainFragment.O0(this.N).setBaseActivity(this), false);
    }

    @Override
    public void onBackPressed() {
        if (a64.a(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_container);
        a.a(this, 10);
        if (getIntent() != null && getIntent().getExtras() != null) {
            this.N = getIntent().getIntExtra("video_to_mp3_item_id", 0);
        }
        initFragment();
    }
}
