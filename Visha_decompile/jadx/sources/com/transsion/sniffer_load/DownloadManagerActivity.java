package com.transsion.sniffer_load;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.WindowManager;
import com.transsion.cloud.updownload.fragment.TransferManagerFragment;
import com.transsion.playercommon.activities.BaseShowAudioVideoListActivity;
import com.transsion.utils.BaseConstant;
import defpackage.a64;
import defpackage.p06;
import defpackage.ydc;

public class DownloadManagerActivity extends BaseShowAudioVideoListActivity {
    public static final int R = 0;
    public WindowManager.LayoutParams N;
    public int O = 0;
    public TransferManagerFragment P;
    public boolean Q;

    public final void Y0() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        this.N = attributes;
        updateWebWindowParams(attributes, this.Q);
    }

    public final void Z0() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            p06.h("dl_manager_show", extras.getString("from"));
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (this.P != null && i == 1125 && ((Integer) objArr[1]).intValue() == this.P.X()) {
            if (((Boolean) objArr[0]).booleanValue()) {
                getWindow().setNavigationBarColor(this.mActivityNavigationColor);
            } else {
                getWindow().setNavigationBarColor(getResources().getColor(R.color.download_window_background, null));
            }
        }
    }

    public void initFragment() {
        String string;
        boolean z;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            string = extras.getString("from");
            this.O = extras.getInt("go_download");
            this.Q = extras.getBoolean("show_full_screen", false);
            z = extras.getBoolean("go_transfer_working", false);
        } else {
            string = "0";
            z = false;
        }
        this.Q = !ydc.g() || this.Q;
        TransferManagerFragment transferManagerFragment = (TransferManagerFragment) TransferManagerFragment.j0(string, this.O, false, false).setBaseActivity(this);
        this.P = transferManagerFragment;
        Bundle arguments = transferManagerFragment.getArguments();
        if (arguments != null) {
            arguments.putBoolean("go_transfer_working", z);
        }
        this.P.setArguments(arguments);
        a64.i(this, this.P, false);
    }

    @Override
    public void initNotify() {
        super.initNotify();
        this.mNotifys.add(1125);
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
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
        setDefaultWindowBackground();
        initFragment();
        if (this.Q) {
            clearWindowDimFlag(true);
        }
        com.transsion.utils.a.a(this, 10);
        setFinishOnTouchOutside(true);
        Y0();
        Z0();
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(com.transsion.common.R.attr.foot_bar_background, typedValue, true);
        this.mActivityNavigationColor = getResources().getColor(typedValue.resourceId, null);
        getWindow().setNavigationBarColor(getResources().getColor(R.color.download_window_background, null));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        updateWebWindowParams(this.N, this.Q);
    }

    @Override
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras == null || this.P == null) {
            return;
        }
        int i = extras.getInt("go_download");
        this.O = i;
        this.P.n0(i, true);
    }

    @Override
    public void onResume() {
        super.onResume();
        TransferManagerFragment transferManagerFragment = this.P;
        if (transferManagerFragment != null) {
            transferManagerFragment.o0();
        }
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onScreenTypeChange(screen_type);
        updateWebWindowParams(this.N, this.Q);
    }

    @Override
    public void setDefaultWindowBackground() {
    }

    @Override
    public void setThemeWindowBackground(Bitmap bitmap) {
        setDefaultWindowBackground();
    }
}
