package com.transsion.tools.activities;

import android.os.Bundle;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.tools.R;
import com.transsion.tools.fragments.LockScreenPlayerPreviewFragment;
import defpackage.a64;

public class LockScreenPlayerPreviewActivity extends BasePermissionActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_lock_screen_preview);
        LockScreenPlayerPreviewFragment lockScreenPlayerPreviewFragment = (LockScreenPlayerPreviewFragment) new LockScreenPlayerPreviewFragment().setBaseActivity(this);
        lockScreenPlayerPreviewFragment.U("playpage");
        a64.n(lockScreenPlayerPreviewFragment, true, true);
    }
}
