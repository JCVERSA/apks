package com.transsion.magicvideo.activities;

import android.os.Bundle;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.fragments.SearchSubtitleFragment;
import com.transsion.playercommon.activities.BasePermissionActivity;
import defpackage.a64;

public class SubtitleActivity extends BasePermissionActivity {
    public String N;
    public SearchSubtitleFragment O;

    private void B0() {
        SearchSubtitleFragment searchSubtitleFragment = this.O;
        if (searchSubtitleFragment != null) {
            searchSubtitleFragment.j0();
        }
    }

    public void initFragment() {
        SearchSubtitleFragment baseActivity = SearchSubtitleFragment.i0(this.N).setBaseActivity(this);
        this.O = baseActivity;
        a64.i(this, baseActivity, false);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() != null) {
            this.N = getIntent().getStringExtra("subtitle_media_path");
        }
        setContentView(R.layout.subtitle_main);
        initFragment();
    }

    @Override
    public void onEjected(String str) {
        super.onEjected(str);
        B0();
    }

    @Override
    public void onMounted(String str) {
        super.onMounted(str);
        this.O.j0();
    }

    @Override
    public void onUnMounted(String str) {
        super.onUnMounted(str);
        B0();
    }
}
