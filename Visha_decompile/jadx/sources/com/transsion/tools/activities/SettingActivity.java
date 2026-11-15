package com.transsion.tools.activities;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.tools.R;
import com.transsion.tools.fragments.SettingFragment;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.a;
import defpackage.a64;
import defpackage.h27;

public class SettingActivity extends BasePermissionActivity {
    public boolean N = true;

    @Override
    public void finishSetWindowBackground() {
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.fragment_content);
        if (fragmentFindFragmentById instanceof SettingFragment) {
            ((SettingFragment) fragmentFindFragmentById).refreshThemeBackground();
        }
    }

    public void initFragment() {
        String stringExtra;
        Bundle bundle = new Bundle();
        if (getIntent() != null) {
            stringExtra = getIntent().getStringExtra("from");
            String stringExtra2 = getIntent().getStringExtra("source");
            String stringExtra3 = getIntent().getStringExtra("web_start_url");
            if (!TextUtils.isEmpty(stringExtra3)) {
                Intent intent = new Intent();
                intent.putExtra("web_start_url", stringExtra3);
                setResult(1243, intent);
            }
            if (!TextUtils.isEmpty(stringExtra2)) {
                bundle.putString("source", stringExtra2);
            }
        } else {
            stringExtra = null;
        }
        bundle.putString("from", stringExtra);
        a64.i(this, SettingFragment.newInstance(bundle).setBaseActivity((BaseActivity) this), false);
    }

    @Override
    public void onBackPressed() {
        if (a64.a(this)) {
            return;
        }
        super.onBackPressed();
        h27.c().e(1087, Boolean.valueOf(MainApp.l));
    }

    @Override
    public void onCreate(Bundle bundle) {
        this.N = getIntent() != null && getIntent().getBooleanExtra("show_full_screen", true);
        super.onCreate(bundle);
        a.a(this, 10);
        setContentView(R.layout.activity_container);
        initFragment();
        resetNavigationBarColor(true);
        if (this.N) {
            return;
        }
        updateWebWindowParams(getWindow().getAttributes(), false);
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        if (!this.N) {
            updateWebWindowParams(getWindow().getAttributes(), false);
        }
        super.onScreenTypeChange(screen_type);
    }
}
