package com.transsion.xuanniao.account.pwd.view;

import android.content.DialogInterface;
import android.util.Log;
import android.view.View;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.AccountRes;
import defpackage.ao7;
import defpackage.go7;

public class SettingVerifyPwdActivity extends VerifyPwdActivity {
    public AccountRes j;
    public d k;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            SettingVerifyPwdActivity.this.finish();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            SettingVerifyPwdActivity.this.k.dismiss();
            go7.a.a.getClass();
        }
    }

    @Override
    public String B0() {
        AccountRes accountRes = this.j;
        return accountRes != null ? accountRes.username : "";
    }

    @Override
    public void D0() {
        if (getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            AccountRes accountResJ = ao7.a.a.j(this);
            this.j = accountResJ;
            if (accountResJ != null && accountResJ.existPassword) {
                super.D0();
                return;
            }
        }
        getActionBar().setTitle("");
        F0();
    }

    @Override
    public String E0() {
        return getString(R.string.xn_restore_factory_settings);
    }

    public final void F0() {
        d dVar = this.k;
        if (dVar == null) {
            d dVarF = new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_clear_title)).k(getString(R.string.xn_clear_note)).f(false).w(getString(R.string.xn_clear_all), null).n(getString(R.string.xn_cancel), new a()).F();
            this.k = dVarF;
            dVarF.e(-1).setOnClickListener(new b());
        } else {
            if (dVar.isShowing()) {
                return;
            }
            this.k.show();
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        A0();
    }

    @Override
    public void onSuccess() {
        Log.d("com.palm.id.log", "check pwd success");
        F0();
    }
}
