package com.transsion.tools.activities;

import android.os.Bundle;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.tools.R;
import com.transsion.tools.fragments.AboutUsFragment;
import defpackage.a64;

public class AboutUsActivity extends BaseActivity {
    public void initFragment() {
        a64.i(this, (AboutUsFragment) new AboutUsFragment().setBaseActivity(this), false);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_container);
        initFragment();
        resetNavigationBarColor(true);
    }
}
