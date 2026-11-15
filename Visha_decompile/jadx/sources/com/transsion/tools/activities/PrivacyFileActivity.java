package com.transsion.tools.activities;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.tools.R;
import com.transsion.tools.fragments.PrivacyFileFragment;
import com.transsion.tools.fragments.PrivacyPasswordFragment;
import defpackage.a64;

public class PrivacyFileActivity extends BaseActivity {
    public boolean N = false;

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 3) {
            this.N = true;
        } else if (i == 4) {
            this.N = true;
        } else if (i == 5) {
            this.N = true;
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_privacy_files);
        getWindow().setFlags(8192, 8192);
        if (getIntent() != null) {
            boolean z = getIntent().getIntExtra("privacy_setting_mode", 0) == 1;
            this.N = z;
            if (z) {
                PrivacyFileFragment privacyFileFragment = (PrivacyFileFragment) new PrivacyFileFragment().setBaseActivity(this);
                privacyFileFragment.setNeedBg(true);
                a64.n(privacyFileFragment, true, true);
            } else {
                PrivacyPasswordFragment privacyPasswordFragment = (PrivacyPasswordFragment) new PrivacyPasswordFragment().setBaseActivity(this);
                privacyPasswordFragment.setNeedBg(true);
                a64.n(privacyPasswordFragment, true, true);
                this.N = true;
            }
        }
    }

    @Override
    public void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        for (Fragment fragment : getFragments()) {
            if (fragment instanceof BaseFragment) {
                BaseFragment.cast(fragment).onFragmentAnimationEnd(null);
            }
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (!this.N) {
            PrivacyPasswordFragment privacyPasswordFragment = (PrivacyPasswordFragment) new PrivacyPasswordFragment().setBaseActivity(this);
            privacyPasswordFragment.setNeedBg(true);
            a64.k(privacyPasswordFragment, false, false, false);
        }
        this.N = false;
    }

    public void p0(boolean z) {
        this.N = z;
    }
}
