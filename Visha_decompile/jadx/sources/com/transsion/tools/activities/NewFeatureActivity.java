package com.transsion.tools.activities;

import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.tools.R;
import defpackage.hb0;
import defpackage.i07;
import defpackage.t08;

public class NewFeatureActivity extends BasePermissionActivity implements View.OnClickListener {
    public final int N = 1;
    public i07 O;
    public FrameLayout P;
    public ImageView Q;
    public TextView R;

    private void B0() {
        this.P = (FrameLayout) findViewById(R.id.fl_content_container);
    }

    public final void C0() {
        if (this.P == null) {
            return;
        }
        D0();
    }

    public final void D0() {
        if (this.O == null) {
            this.O = new i07(this);
        }
        View viewB = this.O.b(this.P);
        if (viewB != null) {
            ImageView imageView = (ImageView) viewB.findViewById(R.id.iv_close);
            this.Q = imageView;
            if (imageView != null) {
                imageView.setOnClickListener(this);
            }
            TextView textView = (TextView) viewB.findViewById(R.id.btn_confirm);
            this.R = textView;
            if (textView != null) {
                textView.setOnClickListener(this);
            }
        }
    }

    public final void E0() {
        hb0.markDirect("vd_hide_popup_close");
        finish();
    }

    public final boolean F0() {
        hb0.markDirect("vd_hide_popup_ok");
        if (Build.VERSION.SDK_INT >= 30) {
            if (!Environment.isExternalStorageManager()) {
                t08.a(this);
                return true;
            }
        } else if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0 || checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            t08.m(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 132);
            return true;
        }
        RouterUtils.jumpToPrivacyRoom(this, 1, 6);
        finish();
        return false;
    }

    public final void G0(int i, boolean z) {
        if (i == 131) {
            if (Build.VERSION.SDK_INT < 30 || !Environment.isExternalStorageManager()) {
                return;
            }
            RouterUtils.jumpToPrivacyRoom(this, 1, 6);
            finish();
            return;
        }
        if (i == 132 && z) {
            RouterUtils.jumpToPrivacyRoom(this, 1, 6);
            finish();
        }
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_close) {
            E0();
        } else if (id == R.id.btn_confirm) {
            F0();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activcity_new_feature);
        B0();
        C0();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        i07 i07Var = this.O;
        if (i07Var != null) {
            i07Var.a();
        }
    }

    @Override
    public void onFinishRequestPermission(int i, boolean z) {
        G0(i, z);
    }
}
