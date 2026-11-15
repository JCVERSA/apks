package com.transsion.xuanniao.account.login.view;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.transsion.xuanniao.account.help.view.WebViewActivity;
import defpackage.er7;
import defpackage.wj;

public class d implements er7.a {
    public final LoginActivity a;

    public d(LoginActivity loginActivity) {
        this.a = loginActivity;
    }

    @Override
    public void onClick(View view) {
        try {
            LoginActivity loginActivity = this.a;
            SharedPreferences sharedPreferences = loginActivity.getSharedPreferences(loginActivity.getPackageName(), 0);
            String string = sharedPreferences.getString("ext_user_agreement_url", "");
            LoginActivity loginActivity2 = this.a;
            int i = loginActivity2.D.f;
            if (TextUtils.isEmpty(string)) {
                LoginActivity loginActivity3 = this.a;
                string = loginActivity3.getString(loginActivity3.D.g);
            }
            WebViewActivity.B0(loginActivity2, i, string);
            String string2 = sharedPreferences.getString("ext_user_agreement_version", "");
            Bundle bundle = new Bundle();
            bundle.putString("ext_uav", string2);
            new wj("user_agreement_cl", 7710).c(bundle, null).b();
        } catch (Exception e) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e));
        }
    }
}
