package com.transsion.sniffer_load;

import android.os.Bundle;
import android.util.Log;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.sniffer_load.fragment.DownloadGuideFragment;
import defpackage.a64;

public class DownloadGuideActivity extends BaseActivity {
    public DownloadGuideFragment N;
    public Bundle O;
    public boolean P;

    public void initFragment() {
        DownloadGuideFragment downloadGuideFragment = (DownloadGuideFragment) DownloadGuideFragment.f0(this.O).setBaseActivity(this);
        this.N = downloadGuideFragment;
        a64.i(this, downloadGuideFragment, false);
    }

    @Override
    public int loadSkin(boolean z) {
        Log.d("DownloadGuideActivity", "loadSkin: " + this.P);
        return super.loadSkin(this.P);
    }

    @Override
    public void onCreate(Bundle bundle) {
        if (getIntent() != null) {
            Bundle extras = getIntent().getExtras();
            this.O = extras;
            if (extras != null) {
                this.P = extras.getBoolean("support_theme_background", true);
            }
        }
        super.onCreate(bundle);
        setContentView(R.layout.activity_container);
        com.transsion.utils.a.a(this, 10);
        initFragment();
    }
}
