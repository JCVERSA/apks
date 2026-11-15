package com.transsion.xuanniao.account.login.view;

import android.os.Bundle;
import android.view.View;
import com.transsion.xuanniao.account.help.view.WebViewActivity;
import defpackage.er7;
import defpackage.xm7;

public class f implements er7.a {
    public final LoginActivity a;

    public f(LoginActivity loginActivity) {
        this.a = loginActivity;
    }

    @Override
    public void onClick(View view) {
        LoginActivity loginActivity = this.a;
        LoginActivity.e eVar = loginActivity.D;
        WebViewActivity.B0(loginActivity, eVar.j, loginActivity.getString(eVar.k));
        LoginActivity loginActivity2 = this.a;
        String string = loginActivity2.getSharedPreferences(loginActivity2.getPackageName(), 0).getString("ext_developer_policy_version", "");
        Bundle bundle = new Bundle();
        bundle.putString("ext_dpv", string);
        xm7.a("privacy_policy_cl", 7710, bundle, null);
    }
}
