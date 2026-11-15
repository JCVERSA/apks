package com.transsion.sniffer_load;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.utils.UpdateUtils;
import com.transsion.playercommon.utils.storage.MountPointManager;
import com.transsion.privacy.MarkPointUtil;
import com.transsion.widgetslib.dialog.d;
import defpackage.ikc;
import defpackage.nx8;
import defpackage.p06;
import defpackage.pp3;

public class WhatsappPermissionActivity extends BaseActivity implements MountPointManager.a {
    public d N;
    public boolean O = true;
    public boolean P = false;
    public int Q = 0;
    public final boolean[] R = {false};

    public void exitAPP() {
        finish();
    }

    @Override
    public void finish() {
        super.finish();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        Log.i("WhatsappPermissionActivity", "onActivityResult");
        super.onActivityResult(i, i2, intent);
        if (nx8.p(this, i, i2, intent)) {
            return;
        }
        if (i == 1236) {
            if (i2 == -1) {
                recreate();
            }
        } else if (i == 19001) {
            requestFilePermission();
        } else if (i == 1238 || i == 1239) {
            onFinishRequestPermission(i, i2 == -1);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d("WhatsappPermissionActivity", "onCreate()");
        MountPointManager.f().p(this);
    }

    @Override
    public void onDestroy() {
        Log.d("WhatsappPermissionActivity", "onDestroy:" + this);
        MountPointManager.f().t(this);
        super.onDestroy();
        d dVar = this.N;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.R[0] = true;
        this.N.dismiss();
    }

    @Override
    public void onEjected(String str) {
    }

    @Override
    public void onMounted(String str) {
    }

    @Override
    public void onPause() {
        super.onPause();
        Log.d("WhatsappPermissionActivity", "onPause()" + this);
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 123) {
            if (i != 125) {
                super.onRequestPermissionsResult(i, strArr, iArr);
                return;
            }
            if (iArr.length == 1) {
                if (iArr[0] != 0) {
                    if (s0()) {
                        w0(false);
                        return;
                    } else {
                        exitAPP();
                        return;
                    }
                }
                successWritePermission();
                d dVar = this.N;
                if (dVar == null || !dVar.isShowing()) {
                    return;
                }
                this.N.setOnDismissListener(null);
                this.N.cancel();
                return;
            }
            return;
        }
        if (iArr.length > 1) {
            if (iArr[0] == 0 && iArr[1] == 0) {
                successWritePermission();
                d dVar2 = this.N;
                if (dVar2 == null || !dVar2.isShowing()) {
                    return;
                }
                this.N.setOnDismissListener(null);
                this.N.cancel();
                return;
            }
            boolean z = ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE") || ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_EXTERNAL_STORAGE");
            if ((pp3.a || !z) && !(this.Q == 0 && z)) {
                w0(true);
            } else {
                w0(false);
            }
            this.Q++;
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        Log.d("WhatsappPermissionActivity", "onResume()" + this);
    }

    @Override
    public void onSdSwap() {
    }

    @Override
    public void onStart() {
        super.onStart();
        Log.d("WhatsappPermissionActivity", "onStart: " + this);
        if (MarkPointUtil.c(getApplicationContext())) {
            return;
        }
        UpdateUtils.b(getApplicationContext());
    }

    @Override
    public void onStop() {
        super.onStop();
        Log.d("WhatsappPermissionActivity", "onStop():" + this);
    }

    @Override
    public void onUnMounted(String str) {
    }

    public void requestFilePermission() {
        Log.i("WhatsappPermissionActivity", "requestFilePermission");
        w0(true);
    }

    public final boolean s0() {
        boolean z = true;
        if ((!pp3.a || ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.MANAGE_EXTERNAL_STORAGE")) && ((Build.VERSION.SDK_INT >= 30 || ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE")) && ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_EXTERNAL_STORAGE"))) {
            z = false;
        }
        Log.i("WhatsappPermissionActivity", "isNeverShowPermissionDialog=" + z);
        return z;
    }

    public void successWritePermission() {
        if (this.P) {
            return;
        }
        this.P = true;
        successWritePermissionOnce();
    }

    public void successWritePermissionOnce() {
    }

    public final void t0(boolean z, DialogInterface dialogInterface, int i) {
        p06.f0(null, z ? "popup_mediafile2_n" : "popup_mediafile1_n", 9324L);
        onBackPressed();
    }

    public final void u0(DialogInterface dialogInterface, int i) {
        ikc.b(this);
    }

    public final void v0(DialogInterface dialogInterface) {
        if (!ikc.b(this)) {
            onBackPressed();
        } else if (dialogInterface != null) {
            dialogInterface.dismiss();
        }
    }

    public final void w0(final boolean z) {
        this.R[0] = false;
        d dVar = this.N;
        if (dVar != null && dVar.isShowing()) {
            this.N.cancel();
        }
        d.a aVar = new d.a(this);
        View viewInflate = LayoutInflater.from(this).inflate(com.transsion.playercommon.R.layout.dialog_permission_remind, (ViewGroup) null, false);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.title)).setText(com.transsion.playercommon.R.string.whats_app_permission_content);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.tv2)).setText(com.transsion.playercommon.R.string.whats_app_permission_notice);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.description)).setText(com.transsion.playercommon.R.string.whats_app_permission_guide);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.content)).setText(com.transsion.playercommon.R.string.whats_app_permission_explanation);
        aVar.E(viewInflate);
        aVar.m(com.transsion.playercommon.R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.t0(z, dialogInterface, i);
            }
        });
        aVar.f(false);
        aVar.u(com.transsion.playercommon.R.string.permission_go, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.u0(dialogInterface, i);
            }
        });
        d dVarA = aVar.a();
        this.N = dVarA;
        dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                this.b.v0(dialogInterface);
            }
        });
        if (this.N.isShowing()) {
            return;
        }
        this.N.show();
        p06.f0(null, z ? "popup_mediafile2" : "popup_mediafile1", 9324L);
    }
}
