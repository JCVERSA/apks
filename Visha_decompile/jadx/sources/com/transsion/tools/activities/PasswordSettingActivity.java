package com.transsion.tools.activities;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.tools.R;
import com.transsion.tools.fragments.EmailSettingFragment;
import com.transsion.tools.fragments.PasswordSettingFragment;
import com.transsion.widgetslib.dialog.d;
import defpackage.a64;
import defpackage.h27;

public class PasswordSettingActivity extends BaseActivity {
    public int N;
    public int O;
    public d P;

    private void r0() {
        Intent intent = getIntent();
        if (intent != null) {
            this.O = intent.getIntExtra("privacy_setting_mode", 1);
            this.N = intent.getIntExtra("privacy_from_page", 0);
            int i = this.O;
            if (i == 1 || i == 3) {
                a64.n((PasswordSettingFragment) PasswordSettingFragment.Z(i).setBaseActivity(this), true, true);
            } else if (i == 2 || i == 5) {
                a64.n((EmailSettingFragment) EmailSettingFragment.a0(i).setBaseActivity(this), true, true);
            }
        }
    }

    @Override
    public void onBackPressed() {
        if (this.O != 3) {
            super.onBackPressed();
            return;
        }
        if (!MMKV.p().e("mmkv_key_user_open_delayed_access_by_hidden_space", false)) {
            super.onBackPressed();
            return;
        }
        d dVar = this.P;
        if (dVar != null && dVar.isShowing()) {
            this.P.dismiss();
            this.P = null;
        }
        d dVarA = new d.a(this).f(false).k(getString(R.string.visha_out_and_use_origin_password)).w(getString(R.string.visha_back), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.s0(dialogInterface, i);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).a();
        this.P = dVarA;
        dVarA.show();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_password_setting);
        getWindow().setFlags(8192, 8192);
        r0();
    }

    public final void s0(DialogInterface dialogInterface, int i) {
        if (MMKV.p().y("mmkv_key_user_open_delayed_access_by_hidden_space", false)) {
            dialogInterface.dismiss();
            super.onBackPressed();
        }
    }

    public void u0() {
        int i;
        int i2 = this.N;
        if (i2 == 0 && (i = this.O) != 3 && i != 2 && i != 5) {
            Intent intent = new Intent(this, (Class<?>) PrivacyFileActivity.class);
            intent.putExtra("privacy_setting_mode", this.O);
            startActivity(intent);
        } else if (i2 == 7) {
            h27.c().e(1177, new Object[0]);
        } else {
            setResult(-1);
        }
        finish();
    }
}
