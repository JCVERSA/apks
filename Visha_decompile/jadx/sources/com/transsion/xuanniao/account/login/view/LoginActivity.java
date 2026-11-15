package com.transsion.xuanniao.account.login.view;

import OppOp00.OppO0Op;
import android.app.ActionBar;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.hoffnung.tpms_sdk.TPMSDelegator;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.data.PalmAuthRequest;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.UserCenterActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.AccountInput;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.PasswordInput;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import com.transsion.xuanniao.account.help.view.PrivacyCenterActivity;
import com.transsion.xuanniao.account.help.view.WebViewActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import com.transsion.xuanniao.account.model.data.Config;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.LoginRes;
import com.transsion.xuanniao.account.model.data.LoginThird;
import com.transsion.xuanniao.account.model.data.PolicyRes;
import com.transsion.xuanniao.account.model.data.SmsCodeEvent;
import com.transsion.xuanniao.account.pwd.view.SelectResetMethodActivity;
import defpackage.am7;
import defpackage.ao7;
import defpackage.aw7;
import defpackage.cs7;
import defpackage.do7;
import defpackage.er7;
import defpackage.fq7;
import defpackage.fr7;
import defpackage.go7;
import defpackage.hb0;
import defpackage.hk7;
import defpackage.hp7;
import defpackage.ir7;
import defpackage.jr7;
import defpackage.kn7;
import defpackage.lo7;
import defpackage.mq7;
import defpackage.nn7;
import defpackage.np7;
import defpackage.nq7;
import defpackage.ok7;
import defpackage.on7;
import defpackage.pa1;
import defpackage.rm7;
import defpackage.rp7;
import defpackage.sm7;
import defpackage.sr7;
import defpackage.tm7;
import defpackage.tq7;
import defpackage.um7;
import defpackage.ur7;
import defpackage.vl7;
import defpackage.wj;
import defpackage.wk7;
import defpackage.wp7;
import defpackage.wr7;
import defpackage.xj;
import defpackage.yib;
import defpackage.yl7;
import defpackage.zq7;
import defpackage.zr7;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.json.JSONObject;

public class LoginActivity extends BaseActivity implements kn7 {
    public static final int K = 0;
    public TextView A;
    public Button B;
    public Button C;
    public e D;
    public PalmAuthRequest E;
    public ViewGroup F;
    public ViewGroup G;
    public ScrollView H;
    public AlertDialog J;
    public do7 j;
    public AccountInput k;
    public PasswordInput l;
    public CaptchaCodeInput m;
    public SmsCodeInput n;
    public CheckBox o;
    public CheckBox p;
    public ErrorView q;
    public ErrorView r;
    public TextView t;
    public TextView u;
    public String y;
    public int z;
    public int e = 1101;
    public int f = 1102;
    public int g = 1103;
    public int h = 1104;
    public int i = 1105;
    public boolean s = false;
    public boolean v = false;
    public boolean w = false;
    public int x = 7;
    public boolean I = false;

    public class a implements OppOp00.a.InterfaceC0003a {
        public a() {
        }

        @Override
        public void F(String str) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("notify", false);
            am7.a(LoginActivity.this.getApplicationContext(), wk7.a(), bundle);
        }
    }

    public class b implements er7.a {
        public b() {
        }

        @Override
        public void onClick(View view) {
            LoginActivity.this.startActivity(new Intent(LoginActivity.this, (Class<?>) PrivacyCenterActivity.class));
        }
    }

    public class c extends rm7 {
        public c() {
        }

        @Override
        public void a(View view) {
            if (view.getId() == R.id.switchLoginMode) {
                LoginActivity loginActivity = LoginActivity.this;
                do7 do7Var = loginActivity.j;
                boolean z = !do7Var.b;
                do7Var.b = z;
                loginActivity.G0(z);
            }
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.loginOrRegister) {
                LoginActivity loginActivity = LoginActivity.this;
                if (loginActivity.j.b) {
                    xj xjVarU = xj.U(loginActivity);
                    AccountInput accountInput = LoginActivity.this.k;
                    xjVarU.j0(accountInput.OppO0O0(accountInput.getText()) ? "Phone" : "Mail");
                }
                if (LoginActivity.E0(LoginActivity.this)) {
                    LoginActivity.this.j.t();
                    return;
                }
                return;
            }
            if (view.getId() == R.id.googleLogin) {
                LoginActivity loginActivity2 = LoginActivity.this;
                loginActivity2.getClass();
                xj.U(loginActivity2).d0();
                LoginActivity.this.j.s = System.currentTimeMillis();
                if (LoginActivity.E0(LoginActivity.this)) {
                    LoginActivity.D0(LoginActivity.this, 2);
                    return;
                }
                return;
            }
            if (view.getId() == R.id.facebookLogin) {
                LoginActivity loginActivity3 = LoginActivity.this;
                loginActivity3.getClass();
                xj.U(loginActivity3).c0();
                LoginActivity.this.j.s = System.currentTimeMillis();
                if (LoginActivity.E0(LoginActivity.this)) {
                    LoginActivity.D0(LoginActivity.this, 1);
                    return;
                }
                return;
            }
            if (view.getId() == R.id.otherLogin) {
                LoginActivity loginActivity4 = LoginActivity.this;
                int i = loginActivity4.x;
                if (i == 7) {
                    xj.U(loginActivity4).e0();
                } else if (i == 8) {
                    xj.U(loginActivity4).i0();
                }
                LoginActivity.this.j.s = System.currentTimeMillis();
                if (LoginActivity.E0(LoginActivity.this)) {
                    LoginActivity loginActivity5 = LoginActivity.this;
                    LoginActivity.D0(loginActivity5, loginActivity5.x);
                    return;
                }
                return;
            }
            if (view.getId() == R.id.bootBack) {
                LoginActivity loginActivity6 = LoginActivity.this;
                loginActivity6.getClass();
                xj.U(loginActivity6).X0("login", "back");
                LoginActivity.this.finish();
                return;
            }
            if (view.getId() == R.id.bootSkip) {
                LoginActivity loginActivity7 = LoginActivity.this;
                loginActivity7.getClass();
                xj.U(loginActivity7).X0("login", "skip");
                LoginActivity loginActivity8 = LoginActivity.this;
                loginActivity8.getClass();
                new com.transsion.widgetslib.dialog.d.a(loginActivity8, R.style.dialog_soft_input).B(loginActivity8.getString(R.string.xn_login_note)).k(loginActivity8.getString(R.string.xn_boot_success_tips)).w(loginActivity8.getString(R.string.xn_got_it), new tq7(loginActivity8)).F();
                return;
            }
            if (view.getId() == R.id.forgotPwd) {
                LoginActivity loginActivity9 = LoginActivity.this;
                loginActivity9.getClass();
                xj.U(loginActivity9).Q();
                Intent intent = new Intent(LoginActivity.this, (Class<?>) SelectResetMethodActivity.class);
                LoginActivity.this.j.p();
                LoginActivity loginActivity10 = LoginActivity.this;
                loginActivity10.startActivityForResult(intent, loginActivity10.g);
            }
        }
    }

    public class d implements TextWatcher {
        public d() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            LoginActivity loginActivity = LoginActivity.this;
            int i = LoginActivity.K;
            loginActivity.M0();
            LoginActivity.this.H0();
            LoginActivity.this.L0();
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public static class e {
        public final boolean a;
        public final boolean b;
        public final int c;
        public final int d;
        public final boolean e;
        public final int f;
        public final int g;
        public final int h;
        public final int i;
        public final int j;
        public final int k;

        public e(boolean z, boolean z2, int i, int i2, boolean z3, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.a = z;
            this.b = z2;
            this.c = i;
            this.d = i2;
            this.e = z3;
            this.f = i3;
            this.g = i4;
            this.h = i5;
            this.i = i6;
            this.j = i7;
            this.k = i8;
        }
    }

    public static void D0(LoginActivity loginActivity, int i) {
        int i2;
        if (i == 1) {
            i2 = R.string.xn_facebook_title;
        } else if (i == 2) {
            i2 = R.string.xn_google_title;
        } else if (i != 7) {
            i2 = i != 8 ? 0 : R.string.xn_vk_app_title;
        } else {
            i2 = R.string.xn_line_app_title;
        }
        String string = loginActivity.getString(i2);
        new com.transsion.widgetslib.dialog.d.a(loginActivity, R.style.dialog_soft_input).B(loginActivity.getString(R.string.xn_login_note)).k(jr7.d(loginActivity.r0(R.string.xn_need_open, loginActivity.getString(i2)))).w(loginActivity.getString(R.string.xn_confirm), new fr7(loginActivity, string, i)).n(loginActivity.getString(R.string.xn_cancel), new zq7(loginActivity, string)).F();
    }

    public static boolean E0(LoginActivity loginActivity) {
        if (loginActivity.o.isChecked()) {
            return true;
        }
        loginActivity.y0(loginActivity.getString(R.string.xn_read_agreement));
        return false;
    }

    @Override
    public String A() {
        return this.l.getText();
    }

    @Override
    public void A0() {
        if (this.D.d == 0) {
            super.A0();
            return;
        }
        AlertDialog alertDialog = this.J;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.J.dismiss();
    }

    public final void B0(Intent intent) {
        Uri data = intent.getData();
        if (!"android.intent.action.VIEW".equals(intent.getAction()) || data == null || !TextUtils.equals("palmid", data.getScheme()) || this.y == null) {
            return;
        }
        try {
            if (Integer.parseInt(data.getQueryParameter("status")) == 1) {
                this.j.d(this.z, this.y);
            } else {
                Log.d("com.palm.id.log", "uri = " + data);
                y0(getString(R.string.xn_net_unavailable));
            }
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
            y0(getString(R.string.xn_net_unavailable));
        }
    }

    @Override
    public void C(long j) {
        int i;
        int i2;
        long jCurrentTimeMillis = (j - System.currentTimeMillis()) / 1000;
        if (jCurrentTimeMillis > 0) {
            i2 = (int) (jCurrentTimeMillis / 60);
            i = (int) (jCurrentTimeMillis % 60);
        } else {
            i = 0;
            i2 = 0;
        }
        new com.transsion.widgetslib.dialog.d.a(this, R.style.dialog_soft_input).k(getString(R.string.xn_frozen_tips, Integer.valueOf(i2), Integer.valueOf(i))).w(getString(R.string.xn_confirm), null).F();
        n();
        TextView textView = this.t;
        if (textView != null) {
            if (!this.v) {
                C0(textView);
                this.v = true;
            }
            this.t.setVisibility(0);
        }
    }

    public final void C0(TextView textView) {
        String str = getString(R.string.xn_login_help) + " ";
        String string = getString(R.string.xn_view_help);
        SpannableString spannableString = new SpannableString(str + string);
        int length = str.length();
        try {
            spannableString.setSpan(new er7(this, new b()), length, string.length() + length, 33);
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
        }
        textView.setText(spannableString);
        textView.setMovementMethod(ir7.a());
    }

    @Override
    public void D(int i, String str) {
        this.z = i;
        this.y = str;
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (vl7.d(this, "com.android.chrome")) {
                intent.setPackage("com.android.chrome");
            }
            intent.setData(Uri.parse(yib.b() + "/auth-page/authBind?actionType=0&authType=" + i + "&authToken=" + str + "&clientId=" + go7.a.a.a + "&pkgName=" + getPackageName()));
            startActivity(intent);
        } catch (Exception e2) {
            y0(getString(R.string.xn_browser_unavailable));
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
        }
    }

    @Override
    public void E(PolicyRes policyRes, String str) {
        Objects.requireNonNull(this.j);
        if ("usage".equals(str)) {
            WebViewActivity.B0(this, R.string.xn_user_agreement, policyRes.usageUrl);
        } else {
            WebViewActivity.B0(this, R.string.xn_privacy_policy, policyRes.privacyUrl);
        }
    }

    public void F0(boolean z) {
        PalmAuthRequest palmAuthRequest = this.E;
        if (palmAuthRequest != null) {
            try {
                palmAuthRequest.onCancel();
            } catch (Exception e2) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e2));
            }
        }
        if (z) {
            finish();
        }
    }

    public final void G0(boolean z) {
        boolean z2 = this.j.n;
        if (z) {
            if (z2) {
                xj.U(this).k1();
            }
            xj.U(this).g0();
            this.l.setVisibility(4);
            this.n.setVisibility(0);
            if (K0()) {
                this.k.setOnlyPhoneNum();
            } else {
                this.k.setSupportUserName(false);
                this.k.setHint(getString(R.string.xn_email_phone_hint));
            }
            TextView textView = this.A;
            if (textView != null) {
                textView.setVisibility(4);
            }
            Button button = this.B;
            if (button != null) {
                button.setText(getString(R.string.xn_login_or_register));
            }
            Button button2 = this.C;
            if (button2 != null) {
                button2.setText(getString(R.string.xn_login_by_pwd));
            }
            vl7.c(this, false);
        } else {
            if (z2) {
                xj.U(this).j1();
            }
            xj.U(this).f0();
            this.l.setVisibility(0);
            this.n.setVisibility(4);
            this.k.setSupportUserName(true);
            this.k.setHint(getString(R.string.xn_account_hint));
            TextView textView2 = this.A;
            if (textView2 != null) {
                textView2.setVisibility(0);
            }
            Button button3 = this.B;
            if (button3 != null) {
                button3.setText(getString(R.string.xn_login));
            }
            Button button4 = this.C;
            if (button4 != null) {
                button4.setText(getString(R.string.xn_login_by_code));
            }
            if (this.j.b() && this.j.g == null) {
                Log.d("com.palm.id.log", "pwd x acquireCaptcha");
                this.j.g(null);
            }
            vl7.c(this, true);
        }
        this.k.setLogoColor(false);
        L0();
        M0();
        H0();
    }

    public final void H0() {
        boolean z = false;
        if (this.n.OppO0pO || this.j.r()) {
            this.n.setGetCodeEnable(false);
            return;
        }
        boolean zA = this.k.getType() == 3 ? mq7.a(this.k.getText()) : this.k.getText().matches("^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$");
        if (this.m.getVisibility() != 0) {
            z = zA;
        } else if (this.m.getText().length() >= 4 && zA) {
            z = true;
        }
        this.n.setGetCodeEnable(z);
    }

    public final String I0() {
        this.j.p();
        String strX0 = x0("source");
        return TextUtils.isEmpty(strX0) ? "ExternalCall" : strX0;
    }

    @Override
    public Context J() {
        return this;
    }

    public final void J0() {
        this.s = false;
        if (this.j.i) {
            setResult(-1);
            if (this.E != null) {
                go7.a.a.getClass();
                ao7 ao7Var = ao7.a.a;
                AccountRes accountResJ = ao7Var.j(this);
                Bundle bundle = new Bundle();
                if (accountResJ != null) {
                    try {
                        bundle.putString("user_info", new JSONObject().put("nickName", accountResJ.nickname).put("userName", accountResJ.username).put("avatarUrl", accountResJ.avatarUrl).toString());
                        bundle.putString("linked_id", String.valueOf(accountResJ.xuanniaoId.hashCode()));
                        bundle.putString("linked_pkg", getPackageName());
                        bundle.putString("linked_bd", jr7.e());
                    } catch (Exception e2) {
                        Log.d("com.palm.id.log", Log.getStackTraceString(e2));
                    }
                }
                JSONObject jSONObject = new JSONObject();
                ao7Var.n(this);
                Config configF = ao7Var.f();
                JSONObject jSONObjectPut = jSONObject.put("access_token", configF != null ? configF.token : "");
                ao7Var.n(this);
                Config configF2 = ao7Var.f();
                bundle.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, jSONObjectPut.put("refresh_token", configF2 != null ? configF2.refreshToken : "").put("open_id", accountResJ != null ? accountResJ.openId : null).toString());
                Bundle bundle2 = new Bundle();
                ok7.a(this.E, bundle2, "appid", "version", "2.0.1.03");
                bundle2.putString("ti_s_result", "success");
                new wj("sdk_auth_result", 7710).c(bundle2, null).b();
                this.E.setResult(bundle);
                this.E = null;
            }
        } else {
            Intent intent = new Intent(this, (Class<?>) UserCenterActivity.class);
            intent.setFlags(67108864);
            startActivity(intent);
            if ("Settings".equals(x0("source"))) {
                xj.U(this).B1();
            }
        }
        finish();
    }

    @Override
    public void K(String str, LoginRes loginRes) {
        do7 do7Var = this.j;
        ao7 ao7Var = ao7.a.a;
        AccountRes accountResJ = ao7Var.j(do7Var.k());
        if (TextUtils.isEmpty(accountResJ != null ? accountResJ.nickname : "")) {
            ao7Var.j(this.j.k());
        } else {
            ao7Var.j(this.j.k());
        }
        ao7Var.n(this);
        ao7Var.f();
        int i = am7.a;
        go7.a.a.getClass();
        this.j.p();
        ArrayList<LoginRes.AuthorizeThird> arrayList = loginRes.loginedThird;
        if (arrayList == null || arrayList.size() <= 0) {
            go7.a.a.getClass();
            J0();
        } else {
            if (this.E == null) {
                go7.a.a.getClass();
            }
            J0();
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("notify", true);
        bundle.putBoolean("is_login", true);
        am7.a(this, wk7.a(), bundle);
        Context applicationContext = getApplicationContext();
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("AccountPrefs", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putInt("sms_req_count", 1);
        if (!jr7.a) {
            editorEdit.putBoolean("have_agree_brand", true);
        }
        editorEdit.apply();
        xj.U(this).h(loginRes.account.xuanniaoId);
        SharedPreferences sharedPreferences2 = getSharedPreferences(getPackageName(), 0);
        xj.U(this).n0(sharedPreferences.getString("privacy_version", applicationContext.getString(R.string.xn_privacy_version)), sharedPreferences.getString("user_agreement_version", applicationContext.getString(R.string.xn_user_agreement_version)), sharedPreferences2.getString("ext_privacy_policy_version", ""), sharedPreferences2.getString("ext_user_agreement_version", ""), sharedPreferences2.getString("ext_developer_policy_version", ""));
        Context applicationContext2 = getApplicationContext();
        try {
            if (TPMSDelegator.i() == null) {
                TPMSDelegator.j(applicationContext2);
            }
            TPMSDelegator.i().k(2, "host_palm_app", applicationContext2.getPackageName(), new nq7(this));
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
        }
    }

    public final boolean K0() {
        PalmAuthRequest palmAuthRequest = this.E;
        if (palmAuthRequest != null && palmAuthRequest.getAuthParam().isOnlyPhoneNum()) {
            return true;
        }
        go7.a.a.getClass();
        PalmAuthParam palmAuthParamG = PalmID.l(this).g();
        return palmAuthParamG != null && palmAuthParamG.isOnlyPhoneNum();
    }

    @Override
    public void L() {
        ErrorView errorView = this.q;
        if (errorView == null || !this.j.b) {
            return;
        }
        errorView.setVisibility(0);
        this.q.setErrorText(getString(R.string.xn_captcha_error));
        this.q.setTag(R.id.captchaInput, this.m.getText());
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00de  */
    public final void L0() {
        boolean z = true;
        if (this.j.b) {
            z = this.k.getType() == 3 ? false : false;
            if (this.j.q() && this.j.r()) {
                z = false;
            }
        } else {
            z = this.k.getType() == 3 ? false : false;
            if (this.j.b() && this.j.r()) {
                z = false;
            }
        }
        boolean z2 = (this.m.getVisibility() != 0 || this.m.getText().length() >= 4) ? z : false;
        Button button = this.B;
        if (button != null) {
            button.setEnabled(z2);
        }
    }

    public final void M0() {
        boolean z = true;
        if (this.j.b) {
            if (this.q != null) {
                if (!this.m.getText().equals(this.q.getTag(R.id.captchaInput))) {
                    if (!this.n.getText().equals(this.q.getTag(R.id.codeInput)) && (!this.j.q() || !this.j.r())) {
                        z = false;
                    }
                }
                this.q.setVisibility(z ? 0 : 8);
            }
            TextView textView = this.u;
            if (textView != null) {
                textView.setVisibility(this.w ? 0 : 8);
            }
            ErrorView errorView = this.r;
            if (errorView != null) {
                errorView.setVisibility(8);
            }
            TextView textView2 = this.t;
            if (textView2 != null) {
                textView2.setVisibility(8);
                return;
            }
            return;
        }
        if (this.r != null) {
            if (!this.m.getText().equals(this.r.getTag(R.id.captchaInput))) {
                if (!(this.l.getText() + this.k.getText()).equals(this.r.getTag(R.id.passwordInput)) && !this.j.s() && (!this.j.b() || !this.j.r())) {
                    z = false;
                }
            }
            this.r.setVisibility(z ? 0 : 8);
        }
        TextView textView3 = this.t;
        if (textView3 != null) {
            textView3.setVisibility(this.v ? 0 : 8);
        }
        ErrorView errorView2 = this.q;
        if (errorView2 != null) {
            errorView2.setVisibility(8);
        }
        TextView textView4 = this.u;
        if (textView4 != null) {
            textView4.setVisibility(8);
        }
    }

    @Override
    public String N() {
        return this.n.getText();
    }

    /* JADX WARN: Code duplicated, block: B:133:0x040d  */
    /* JADX WARN: Code duplicated, block: B:135:0x042d  */
    /* JADX WARN: Code duplicated, block: B:137:0x0439  */
    /* JADX WARN: Code duplicated, block: B:140:0x048a  */
    /* JADX WARN: Code duplicated, block: B:143:0x0515  */
    /* JADX WARN: Code duplicated, block: B:163:0x0550  */
    /* JADX WARN: Code duplicated, block: B:165:0x0553  */
    /* JADX WARN: Code duplicated, block: B:168:0x0561  */
    /* JADX WARN: Code duplicated, block: B:186:0x0599  */
    /* JADX WARN: Code duplicated, block: B:188:0x059c  */
    /* JADX WARN: Code duplicated, block: B:191:0x05b5  */
    /* JADX WARN: Code duplicated, block: B:194:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:197:0x05d7  */
    /* JADX WARN: Code duplicated, block: B:208:0x0522 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x056e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final void N0() {
        boolean zIsShowTPLogin;
        String string;
        String string2;
        String string3;
        String strD;
        SpannableString spannableString;
        long j;
        long j2;
        ConnectivityManager connectivityManager;
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        boolean z;
        ConnectivityManager connectivityManager2;
        Network activeNetwork2;
        NetworkCapabilities networkCapabilities2;
        boolean z2;
        setContentView(R.layout.xn_activity_login);
        this.s = true;
        if (!this.D.e) {
            ActionBar actionBar = getActionBar();
            actionBar.setDisplayOptions(16, 26);
            actionBar.setCustomView(R.layout.xn_action_bar);
            this.j.p();
            if (this.D.a) {
                actionBar.setDisplayHomeAsUpEnabled(true);
            }
            TextView textView = (TextView) actionBar.getCustomView().findViewById(R.id.title);
            int i = this.D.c;
            if (i != 0) {
                textView.setText(i);
            } else {
                textView.setText(jr7.d(getString(R.string.xn_app_name)));
            }
            View viewFindViewById = actionBar.getCustomView().findViewById(R.id.questionImage);
            if (this.D.b) {
                viewFindViewById.setOnClickListener(new sr7(this));
            } else {
                viewFindViewById.setVisibility(4);
            }
        }
        ((TextView) findViewById(R.id.noteTitle)).setText(jr7.d(getString(R.string.xn_login_app)));
        boolean z3 = this.j.n;
        View viewFindViewById2 = findViewById(R.id.rlAuthorize);
        if (viewFindViewById2 != null) {
            if (this.E != null) {
                findViewById(R.id.rlLogin).setVisibility(4);
                viewFindViewById2.setVisibility(0);
                String pkgName = this.E.getAuthParam().getPkgName();
                PackageManager packageManager = getPackageManager();
                try {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(pkgName, 128);
                    ((TextView) findViewById(R.id.tvAppName)).setText(jr7.d(getString(R.string.sdk_text_login, packageManager.getApplicationLabel(applicationInfo))));
                    ImageView imageView = (ImageView) findViewById(R.id.ivAppIcon);
                    Drawable drawableA = vl7.a(this, applicationInfo);
                    if (drawableA == null) {
                        drawableA = packageManager.getApplicationIcon(applicationInfo);
                    }
                    imageView.setImageDrawable(drawableA);
                } catch (Exception e2) {
                    Log.d("com.palm.id.log", e2.getMessage() + e2);
                }
            } else {
                findViewById(R.id.rlLogin).setVisibility(0);
                viewFindViewById2.setVisibility(4);
                go7.a.a.getClass();
                PackageManager packageManager2 = getPackageManager();
                try {
                    ApplicationInfo applicationInfo2 = packageManager2.getApplicationInfo(getPackageName(), 128);
                    ImageView imageView2 = (ImageView) findViewById(R.id.logo);
                    Drawable drawableA2 = vl7.a(this, applicationInfo2);
                    if (drawableA2 == null) {
                        drawableA2 = packageManager2.getApplicationIcon(applicationInfo2);
                    }
                    imageView2.setImageDrawable(drawableA2);
                } catch (Exception e3) {
                    Log.d("com.palm.id.log", e3.getMessage() + e3);
                }
            }
        }
        View viewFindViewById3 = findViewById(R.id.ivClose);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(new ur7(this));
        }
        this.H = (ScrollView) findViewById(R.id.scrollView);
        this.j.p();
        Button button = (Button) findViewById(R.id.loginOrRegister);
        this.B = button;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        Button button2 = (Button) findViewById(R.id.switchLoginMode);
        this.C = button2;
        if (button2 != null) {
            button2.setOnClickListener(new c());
        }
        View viewFindViewById4 = findViewById(R.id.googleLogin);
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(new c());
        }
        View viewFindViewById5 = findViewById(R.id.facebookLogin);
        if (pa1.g(getApplicationContext())) {
            viewFindViewById5.setVisibility(8);
        }
        if (viewFindViewById5 != null) {
            if (LoginThird.isFbSupport(this)) {
                viewFindViewById5.setOnClickListener(new c());
            } else {
                viewFindViewById5.setVisibility(8);
            }
        }
        go7.a.a.getClass();
        PalmAuthRequest palmAuthRequest = this.E;
        if (palmAuthRequest != null) {
            zIsShowTPLogin = palmAuthRequest.getAuthParam().isShowTPLogin();
        } else {
            go7.a.a.getClass();
            PalmAuthParam palmAuthParamG = PalmID.l(this).g();
            zIsShowTPLogin = palmAuthParamG != null && palmAuthParamG.isShowTPLogin();
        }
        if (!zIsShowTPLogin) {
            View viewFindViewById6 = findViewById(R.id.partyLoginDivision);
            if (viewFindViewById6 != null) {
                viewFindViewById6.setVisibility(8);
            }
            View viewFindViewById7 = findViewById(R.id.partyLoginL);
            if (viewFindViewById7 != null) {
                viewFindViewById7.setVisibility(8);
            }
        }
        if (LoginThird.isVKSupport(this)) {
            this.x = 8;
        } else {
            this.x = 7;
        }
        ImageView imageView3 = (ImageView) findViewById(R.id.otherLogin);
        if (imageView3 != null) {
            imageView3.setOnClickListener(new c());
            int i2 = this.x;
            if (i2 == 7) {
                imageView3.setImageResource(R.drawable.xn_line_bg);
            } else if (i2 == 8) {
                imageView3.setImageResource(R.drawable.xn_vk_bg);
            }
        }
        this.A = (TextView) findViewById(R.id.forgotPwd);
        if (K0()) {
            this.C.setVisibility(8);
            this.A.setVisibility(4);
        } else {
            TextView textView2 = this.A;
            if (textView2 != null) {
                textView2.setOnClickListener(new c());
            }
        }
        this.t = (TextView) findViewById(R.id.pwdHelpTips);
        this.u = (TextView) findViewById(R.id.codeHelpTips);
        CheckBox checkBox = (CheckBox) findViewById(R.id.agreementCheck);
        this.o = checkBox;
        checkBox.setOnCheckedChangeListener(new wr7(this));
        CheckBox checkBox2 = (CheckBox) findViewById(R.id.agreementCheck2);
        this.p = checkBox2;
        if (checkBox2 != null) {
            checkBox2.setOnCheckedChangeListener(new zr7(this));
        }
        this.j.p();
        this.F = (ViewGroup) findViewById(R.id.privacyL);
        this.G = (ViewGroup) findViewById(R.id.privacyL2);
        TextView textView3 = (TextView) findViewById(R.id.agreement);
        TextView textView4 = (TextView) findViewById(R.id.agreement2);
        String string4 = getString(R.string.xn_user_agreement);
        String string5 = getString(R.string.xn_privacy_policy);
        String string6 = getString(R.string.xn_and);
        String strR0 = r0(R.string.xn_agreement_privacy, string4, string5);
        try {
            e eVar = this.D;
            int i3 = eVar.f;
            if (i3 == 0 || eVar.g == 0 || eVar.h == 0 || eVar.i == 0) {
                string = null;
                string2 = null;
                string3 = null;
            } else {
                string2 = getString(i3);
                try {
                    string3 = getString(this.D.h);
                    try {
                        strR0 = strR0 + ", " + string2 + " " + string6 + " " + string3;
                        int i4 = this.D.j;
                        if (i4 != 0) {
                            string = getString(i4);
                            try {
                                strR0 = strR0 + " " + string6 + " " + string;
                            } catch (Exception e4) {
                                e = e4;
                                Log.d("com.palm.id.log", Log.getStackTraceString(e));
                            }
                        } else {
                            string = null;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        string = null;
                    }
                } catch (Exception e6) {
                    e = e6;
                    string = null;
                    string3 = null;
                    Log.d("com.palm.id.log", Log.getStackTraceString(e));
                    strD = jr7.d(strR0);
                    spannableString = new SpannableString(strD + " ");
                    int iIndexOf = strD.toLowerCase().indexOf(string4.toLowerCase());
                    spannableString.setSpan(new er7(this, new cs7(this)), iIndexOf, string4.length() + iIndexOf, 33);
                    int iIndexOf2 = strD.toLowerCase().indexOf(string5.toLowerCase());
                    spannableString.setSpan(new er7(this, new yl7(this)), iIndexOf2, string5.length() + iIndexOf2, 33);
                    if (string2 != null) {
                        try {
                            int iIndexOf3 = strD.toLowerCase().indexOf(string2.toLowerCase());
                            spannableString.setSpan(new er7(this, new com.transsion.xuanniao.account.login.view.d(this)), iIndexOf3, string2.length() + iIndexOf3, 33);
                            int iIndexOf4 = strD.toLowerCase().indexOf(string3.toLowerCase());
                            spannableString.setSpan(new er7(this, new com.transsion.xuanniao.account.login.view.e(this)), iIndexOf4, string3.length() + iIndexOf4, 33);
                        } catch (Exception e7) {
                            Log.d("com.palm.id.log", Log.getStackTraceString(e7));
                        }
                        if (string != null) {
                            int iIndexOf5 = strD.toLowerCase().indexOf(string.toLowerCase());
                            spannableString.setSpan(new er7(this, new f(this)), iIndexOf5, string.length() + iIndexOf5, 33);
                        }
                    }
                    if (textView3 != null) {
                        textView3.setText(spannableString);
                        textView3.setMovementMethod(ir7.a());
                    }
                    if (textView4 != null) {
                        textView4.setText(spannableString);
                        textView4.setMovementMethod(ir7.a());
                    }
                    OverScrollDecorHelper.setUpOverScroll(this.H);
                    this.k = (AccountInput) findViewById(R.id.accountInput);
                    this.l = (PasswordInput) findViewById(R.id.passwordInput);
                    this.m = (CaptchaCodeInput) findViewById(R.id.captchaInput);
                    this.n = (SmsCodeInput) findViewById(R.id.codeInput);
                    this.q = (ErrorView) findViewById(R.id.loginByCodeError);
                    this.r = (ErrorView) findViewById(R.id.loginByPwdError);
                    if (K0()) {
                        this.k.setOnlyPhoneNum();
                    }
                    this.k.OppO00p.addTextChangedListener(new d());
                    this.m.OppO00p.addTextChangedListener(new d());
                    this.l.OppO0OO.addTextChangedListener(new d());
                    this.n.OppO0OO.addTextChangedListener(new d());
                    this.n.setSmsCodeListener(new tm7(this));
                    this.n.setEditFocus(new nn7(this));
                    this.k.setInputListener(new lo7(this));
                    this.m.setCaptchaListener(new hp7(this));
                    this.k.setEditFocus(new rp7(this));
                    this.n.OppO00p(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_login_count", 0L));
                    if (TextUtils.isEmpty(this.j.g)) {
                        connectivityManager2 = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
                        if (connectivityManager2 == null) {
                            z2 = false;
                        } else {
                            try {
                                activeNetwork2 = connectivityManager2.getActiveNetwork();
                                if (activeNetwork2 == null) {
                                    z2 = false;
                                } else {
                                    z2 = false;
                                }
                            } catch (Exception e8) {
                                e8.printStackTrace();
                            }
                        }
                        if (z2) {
                            this.j.g(null);
                        }
                    }
                    if (!ao7.a.a.l(this)) {
                        connectivityManager = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
                        if (connectivityManager == null) {
                            z = false;
                        } else {
                            try {
                                activeNetwork = connectivityManager.getActiveNetwork();
                                if (activeNetwork != null) {
                                    z = false;
                                } else {
                                    z = false;
                                }
                            } catch (Exception e9) {
                                e9.printStackTrace();
                            }
                        }
                        if (z) {
                            this.j.j("");
                        }
                    }
                    j = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_login_pwd_limit", 0L);
                    if (j > 0) {
                        this.j.i(j);
                    }
                    j2 = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_captcha_limit_login", 0L);
                    if (j2 > 0) {
                        this.j.e(j2);
                    }
                    if (this.j.n) {
                        ((NotificationManager) getSystemService("notification")).cancel(2);
                    }
                    do7 do7Var = this.j;
                    new on7().a(do7Var.k(), new np7(do7Var, do7Var.k(), CountryData.class));
                }
            }
        } catch (Exception e10) {
            e = e10;
            string = null;
            string2 = null;
        }
        strD = jr7.d(strR0);
        spannableString = new SpannableString(strD + " ");
        int iIndexOf6 = strD.toLowerCase().indexOf(string4.toLowerCase());
        try {
            spannableString.setSpan(new er7(this, new cs7(this)), iIndexOf6, string4.length() + iIndexOf6, 33);
            int iIndexOf7 = strD.toLowerCase().indexOf(string5.toLowerCase());
            spannableString.setSpan(new er7(this, new yl7(this)), iIndexOf7, string5.length() + iIndexOf7, 33);
        } catch (Exception e11) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e11));
        }
        if (string2 != null && string3 != null) {
            int iIndexOf8 = strD.toLowerCase().indexOf(string2.toLowerCase());
            spannableString.setSpan(new er7(this, new com.transsion.xuanniao.account.login.view.d(this)), iIndexOf8, string2.length() + iIndexOf8, 33);
            int iIndexOf9 = strD.toLowerCase().indexOf(string3.toLowerCase());
            spannableString.setSpan(new er7(this, new com.transsion.xuanniao.account.login.view.e(this)), iIndexOf9, string3.length() + iIndexOf9, 33);
            if (string != null) {
                int iIndexOf10 = strD.toLowerCase().indexOf(string.toLowerCase());
                spannableString.setSpan(new er7(this, new f(this)), iIndexOf10, string.length() + iIndexOf10, 33);
            }
        }
        if (textView3 != null) {
            textView3.setText(spannableString);
            textView3.setMovementMethod(ir7.a());
        }
        if (textView4 != null) {
            textView4.setText(spannableString);
            textView4.setMovementMethod(ir7.a());
        }
        OverScrollDecorHelper.setUpOverScroll(this.H);
        this.k = (AccountInput) findViewById(R.id.accountInput);
        this.l = (PasswordInput) findViewById(R.id.passwordInput);
        this.m = (CaptchaCodeInput) findViewById(R.id.captchaInput);
        this.n = (SmsCodeInput) findViewById(R.id.codeInput);
        this.q = (ErrorView) findViewById(R.id.loginByCodeError);
        this.r = (ErrorView) findViewById(R.id.loginByPwdError);
        if (K0()) {
            this.k.setOnlyPhoneNum();
        }
        this.k.OppO00p.addTextChangedListener(new d());
        this.m.OppO00p.addTextChangedListener(new d());
        this.l.OppO0OO.addTextChangedListener(new d());
        this.n.OppO0OO.addTextChangedListener(new d());
        this.n.setSmsCodeListener(new tm7(this));
        this.n.setEditFocus(new nn7(this));
        this.k.setInputListener(new lo7(this));
        this.m.setCaptchaListener(new hp7(this));
        this.k.setEditFocus(new rp7(this));
        this.n.OppO00p(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_login_count", 0L));
        if (TextUtils.isEmpty(this.j.g)) {
            connectivityManager2 = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
            if (connectivityManager2 == null) {
                z2 = false;
            } else {
                activeNetwork2 = connectivityManager2.getActiveNetwork();
                if (activeNetwork2 == null && (networkCapabilities2 = connectivityManager2.getNetworkCapabilities(activeNetwork2)) != null && (networkCapabilities2.hasTransport(1) || networkCapabilities2.hasTransport(0) || networkCapabilities2.hasTransport(4) || networkCapabilities2.hasTransport(3))) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            if (z2) {
                this.j.g(null);
            }
        }
        if (!ao7.a.a.l(this)) {
            connectivityManager = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
            if (connectivityManager == null) {
                z = false;
            } else {
                activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                    z = false;
                } else {
                    z = true;
                    if (!networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(0) && !networkCapabilities.hasTransport(4) && !networkCapabilities.hasTransport(3)) {
                        z = false;
                    }
                }
            }
            if (z) {
                this.j.j("");
            }
        }
        j = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_login_pwd_limit", 0L);
        if (j > 0) {
            this.j.i(j);
        }
        j2 = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_captcha_limit_login", 0L);
        if (j2 > 0) {
            this.j.e(j2);
        }
        if (this.j.n) {
            ((NotificationManager) getSystemService("notification")).cancel(2);
        }
        do7 do7Var2 = this.j;
        new on7().a(do7Var2.k(), new np7(do7Var2, do7Var2.k(), CountryData.class));
    }

    @Override
    public void Q() {
        this.m.setVisibility(0);
        H0();
        L0();
    }

    @Override
    public void X(AccountRes accountRes) {
        if (accountRes != null) {
            ao7.a.a.c(this, accountRes);
            String str = accountRes.avatarUrl;
            a aVar = new a();
            if (TextUtils.isEmpty(str) || str.lastIndexOf("/") == -1 || getFilesDir() == null) {
                aVar.F(null);
                return;
            }
            String strSubstring = str.substring(str.lastIndexOf("/"));
            File file = new File(hk7.b(this).getAbsolutePath() + "/OriPicture/avatar");
            if (!file.exists()) {
                file.mkdirs();
            }
            new Thread(new OppO0Op(null, str, file.getPath() + "/" + strSubstring, aVar)).start();
        }
    }

    @Override
    public void Z(String str, Bitmap bitmap) {
        this.m.setImageBitmap(bitmap);
        if (TextUtils.isEmpty(str)) {
            this.m.setVisibility(0);
        } else {
            this.m.setVisibility(8);
        }
        if (this.j.q()) {
            xj.U(this).f1();
        }
        H0();
        L0();
    }

    @Override
    public void a() {
        SharedPreferences.Editor editorEdit;
        y0(getString(R.string.xn_sent));
        this.n.OppO00p();
        this.n.OppO0OO();
        this.n.setGetCodeEnable(false);
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        if (this.k.getType() == 3) {
            int i = sharedPreferences.getInt("sms_req_count", 1) + 1;
            editorEdit = sharedPreferences.edit();
            editorEdit.putInt("sms_req_count", i);
        } else {
            editorEdit = null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (editorEdit == null) {
            editorEdit = sharedPreferences.edit();
        }
        editorEdit.putLong("key_login_count", jCurrentTimeMillis);
        editorEdit.apply();
    }

    @Override
    public void b() {
        new com.transsion.widgetslib.dialog.d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_month)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public void c(boolean z, long j) {
        ErrorView errorView;
        ErrorView errorView2;
        if (z) {
            do7 do7Var = this.j;
            if (do7Var.b) {
                if (do7Var.q() && (errorView2 = this.q) != null) {
                    errorView2.setErrorText(r0(R.string.xn_frequent_count, fq7.b(j)));
                    this.q.setVisibility(0);
                }
            } else if (do7Var.b() && (errorView = this.r) != null) {
                errorView.setErrorText(r0(R.string.xn_frequent_count, fq7.b(j)));
                this.r.setVisibility(0);
            }
        } else {
            ErrorView errorView3 = this.r;
            if (errorView3 != null) {
                errorView3.setErrorText("");
                this.r.setVisibility(8);
            }
            ErrorView errorView4 = this.q;
            if (errorView4 != null) {
                errorView4.setErrorText("");
                this.q.setVisibility(8);
            }
        }
        H0();
    }

    @Override
    public void d() {
        ErrorView errorView = this.q;
        if (errorView == null || !this.j.b) {
            return;
        }
        errorView.setVisibility(0);
        this.q.setErrorText(getString(R.string.xn_code_error));
        this.q.setTag(R.id.codeInput, this.n.getText());
    }

    @Override
    public void e() {
        new com.transsion.widgetslib.dialog.d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_day)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public String f() {
        return this.m.getText();
    }

    @Override
    public void g() {
        this.m.setImageResource(R.drawable.xn_reduction);
    }

    @Override
    public boolean h0() {
        return this.m.getVisibility() == 0;
    }

    @Override
    public void l0() {
        TextView textView = this.u;
        if (textView != null) {
            if (!this.w) {
                C0(textView);
                this.w = true;
            }
            this.u.setVisibility(0);
        }
    }

    @Override
    public void n() {
        ErrorView errorView;
        if (this.j.b || (errorView = this.r) == null) {
            return;
        }
        errorView.setVisibility(0);
        this.r.setErrorText(getString(R.string.xn_account_pwd_error));
        this.r.setTag(R.id.passwordInput, this.l.getText() + this.k.getText());
    }

    @Override
    public void n0() {
        int i;
        int i2;
        String string = "";
        this.k.setCc(this.j.n());
        if (TextUtils.isEmpty(this.k.getText())) {
            try {
                String string2 = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getString("last_login_req", "");
                if (string2.length() > 0) {
                    JSONObject jSONObject = new JSONObject(string2);
                    i = jSONObject.getInt("lt");
                    if (i == 0) {
                        string = jSONObject.getString("ac");
                        i2 = jSONObject.getInt("ct");
                    } else {
                        i2 = 0;
                    }
                    xj.U(this).l0(I0(), sm7.d(i, string, i2));
                } else {
                    xj.U(this).l0(I0(), null);
                    i = -1;
                    i2 = 0;
                }
                if (i > 0) {
                    View viewFindViewById = findViewById(R.id.googleH);
                    if (viewFindViewById != null) {
                        viewFindViewById.setVisibility(i == 2 ? 0 : 4);
                    }
                    View viewFindViewById2 = findViewById(R.id.facebookH);
                    if (viewFindViewById2 != null) {
                        if (LoginThird.isFbSupport(this)) {
                            viewFindViewById2.setVisibility(i == 1 ? 0 : 4);
                        } else {
                            viewFindViewById2.setVisibility(8);
                        }
                    }
                    View viewFindViewById3 = findViewById(R.id.otherH);
                    if (viewFindViewById3 != null) {
                        viewFindViewById3.setVisibility(i == this.x ? 0 : 4);
                    }
                }
                if (i != 0 || string.length() <= 0) {
                    return;
                }
                if (string.contains("-") && !string.contains("@")) {
                    String[] strArrSplit = string.split("-");
                    do7 do7Var = this.j;
                    do7Var.c = strArrSplit[0];
                    this.k.setCc(do7Var.n());
                    this.k.setText(strArrSplit[1]);
                } else if (!K0()) {
                    this.k.setText(string);
                }
                if (i2 != 1 || K0()) {
                    return;
                }
                do7 do7Var2 = this.j;
                boolean z = !do7Var2.b;
                do7Var2.b = z;
                G0(z);
            } catch (Exception unused) {
            }
        }
    }

    @Override
    public void o0() {
        ErrorView errorView;
        if (this.j.b || (errorView = this.r) == null) {
            return;
        }
        errorView.setVisibility(0);
        this.r.setErrorText(getString(R.string.xn_captcha_error));
        this.r.setTag(R.id.captchaInput, this.m.getText());
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Log.d("com.palm.id.log", "onActivityResult requestCode = " + i + ", " + i2);
        if (i == this.e) {
            if (i2 == -1) {
                this.j.c = intent.getStringExtra("key_cc");
                do7 do7Var = this.j;
                if (do7Var.t != null) {
                    do7Var.d = CountryData.getEnName(this, intent.getStringExtra("key_name"), this.j.t.countries);
                }
                xj.U(this).A1(this.j.o());
                this.k.setCc(this.j.n());
                SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("AccountPrefs", 0);
                String strO = this.j.o();
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString(hb0.KEY_NAME_COUNTRY_CODE, strO);
                editorEdit.putString("country_name", this.j.d);
                editorEdit.apply();
                return;
            }
            return;
        }
        if (i == 9001) {
            return;
        }
        if (i == this.f) {
            J0();
            return;
        }
        if (i == this.h) {
            finish();
            return;
        }
        if (i == this.i) {
            N0();
            return;
        }
        if (this.g != i) {
            if (i == 60001 && i2 == -1) {
                ((TextView) findViewById(R.id.noteTitle)).setText(jr7.d(getString(R.string.xn_login_app)));
                boolean z = this.j.n;
                return;
            }
            return;
        }
        if (i2 == -1) {
            y0(getString(R.string.xn_find_pwd_success));
            if (intent != null) {
                String stringExtra = intent.getStringExtra("phone");
                String stringExtra2 = intent.getStringExtra(NotificationCompat.CATEGORY_EMAIL);
                if (!TextUtils.isEmpty(stringExtra)) {
                    this.k.setText(stringExtra);
                }
                if (TextUtils.isEmpty(stringExtra2)) {
                    return;
                }
                this.k.setText(stringExtra2);
            }
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        this.j.p();
        F0(false);
    }

    @Override
    public void onCreate(Bundle bundle) {
        boolean booleanExtra;
        LoginActivity loginActivityK;
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        try {
            int[] iArr = {R.attr.actionbar_show_back, R.attr.actionbar_show_faq, R.attr.actionbar_title_res, R.attr.loading_res, R.attr.show_dialog_style, R.attr.ext_agreement_res, R.attr.ext_agreement_url, R.attr.ext_privacy_res, R.attr.ext_privacy_url, R.attr.ext_developer_res, R.attr.ext_developer_url};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(R.style.XNLoginUI, iArr);
            this.D = new e(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LoginUI_actionbar_show_back, true), typedArrayObtainStyledAttributes.getBoolean(R.styleable.LoginUI_actionbar_show_faq, true), typedArrayObtainStyledAttributes.getResourceId(R.styleable.LoginUI_actionbar_title_res, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.LoginUI_loading_res, 0), typedArrayObtainStyledAttributes.getBoolean(R.styleable.LoginUI_show_dialog_style, false), typedArrayObtainStyledAttributes.getResourceId(R.styleable.LoginUI_ext_agreement_res, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.LoginUI_ext_agreement_url, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.LoginUI_ext_privacy_res, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.LoginUI_ext_privacy_url, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.LoginUI_ext_developer_res, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.LoginUI_ext_developer_url, 0));
            typedArrayObtainStyledAttributes.recycle();
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
            this.D = new e(true, true, 0, 0, false, 0, 0, 0, 0, 0, 0);
        }
        super.onCreate(bundle);
        do7 do7Var = new do7();
        this.j = do7Var;
        do7Var.a = this;
        try {
            booleanExtra = getIntent().getBooleanExtra("isFinish", false);
        } catch (Exception unused) {
            booleanExtra = false;
        }
        do7Var.i = booleanExtra;
        this.j.n = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_login_time_out", false);
        if (CloudConfigRes.needRefresh(this)) {
            do7 do7Var2 = this.j;
            if (do7Var2.a() && (loginActivityK = do7Var2.k()) != null && (connectivityManager = (ConnectivityManager) loginActivityK.getApplicationContext().getSystemService("connectivity")) != null) {
                try {
                    Network activeNetwork = connectivityManager.getActiveNetwork();
                    if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                        if (do7Var2.m == null) {
                            do7Var2.m = new um7();
                        }
                        do7Var2.m.a(do7Var2.k(), new wp7(do7Var2, do7Var2.k(), CloudConfigRes.class));
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }
        String stringExtra = getIntent().getStringExtra("auth_request");
        if (bundle != null && TextUtils.isEmpty(stringExtra)) {
            stringExtra = bundle.getString("auth_request", null);
        }
        this.E = aw7.c(this).b(stringExtra);
        this.j.p();
        xj.U(this).Y0(I0(), sm7.a(this), sm7.f(this));
        if (getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            J0();
        } else {
            N0();
            B0(getIntent());
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        do7 do7Var = this.j;
        if (do7Var != null) {
            do7Var.m();
            this.j.a = null;
        }
        SmsCodeInput smsCodeInput = this.n;
        if (smsCodeInput != null) {
            smsCodeInput.OppO00p();
        }
    }

    @Override
    public void onNewIntent(Intent intent) {
        B0(intent);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            F0(true);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this.s) {
            this.k.setText(bundle.getString("account"));
            this.n.setText(bundle.getString("verificationCode"));
            this.l.setText(bundle.getString("pwd"));
            do7 do7Var = this.j;
            do7Var.getClass();
            if (bundle.containsKey("lp_ticket")) {
                do7Var.g = bundle.getString("lp_ticket");
            }
            if (bundle.containsKey("lp_captcha_code")) {
                do7Var.h = bundle.getString("lp_captcha_code");
            }
            if (bundle.containsKey("lp_login_code")) {
                do7Var.b = bundle.getBoolean("lp_login_code");
            }
            this.m.setText(bundle.getString("imageCaptcha"));
            this.o.setChecked(bundle.getBoolean("isChecked"));
            G0(this.j.b);
            this.z = bundle.getInt("tpThirdType");
            this.y = bundle.getString("tpThirdToken");
        }
    }

    @Override
    public void onResume() {
        if (this.s) {
            if (getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
                J0();
            }
            AccountInput accountInput = this.k;
            if (accountInput != null && accountInput.getEdit().hasFocus() && this.k.getType() == 2 && this.I) {
                this.I = false;
                this.k.OppO0OO();
            }
        }
        super.onResume();
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.s) {
            bundle.putString("account", this.k.getText());
            bundle.putString("verificationCode", this.n.getText());
            bundle.putString("pwd", this.l.getText());
            do7 do7Var = this.j;
            bundle.putString("lp_ticket", do7Var.g);
            bundle.putString("lp_captcha_code", do7Var.h);
            bundle.putBoolean("lp_login_code", do7Var.b);
            bundle.putString("imageCaptcha", this.m.getText());
            bundle.putBoolean("isChecked", this.o.isChecked());
            PalmAuthRequest palmAuthRequest = this.E;
            if (palmAuthRequest != null) {
                bundle.putString("auth_request", palmAuthRequest.getAuthRequestId());
            }
            bundle.putInt("tpThirdType", this.z);
            bundle.putString("tpThirdToken", this.y);
        }
    }

    @Subscribe
    public void onSmsCodeReceived(SmsCodeEvent smsCodeEvent) {
        Log.d("com.palm.id.log", "onSmsCodeReceived LoginActivity");
        do7 do7Var = this.j;
        if (do7Var == null || !do7Var.b) {
            return;
        }
        SmsCodeInput smsCodeInput = this.n;
        if (smsCodeInput != null && smsCodeInput.OppO0pO) {
            smsCodeInput.setText(smsCodeEvent.code);
            xj.U(this).q("LoginActivity");
        }
        if (this.o.isChecked()) {
            this.j.t();
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        EventBus.getDefault().register(this);
    }

    @Override
    public void onStop() {
        ScrollView scrollView;
        super.onStop();
        Rect rect = new Rect();
        View decorView = getWindow().getDecorView();
        decorView.getWindowVisibleDisplayFrame(rect);
        if (((double) (rect.bottom - rect.top)) / ((double) decorView.getHeight()) >= 0.7d && (scrollView = this.H) != null) {
            scrollView.clearFocus();
        }
        AccountInput accountInput = this.k;
        if (accountInput != null) {
            PopupWindow popupWindow = accountInput.OppO0pO;
            if (popupWindow != null ? popupWindow.isShowing() : false) {
                this.I = true;
                this.k.OppO00p();
            }
        }
        EventBus.getDefault().unregister(this);
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        AccountInput accountInput = this.k;
        if (accountInput != null) {
            accountInput.setCanShowPopView(z);
        }
    }

    @Override
    public void p(boolean z, long j) {
        if (!z) {
            ErrorView errorView = this.r;
            if (errorView != null) {
                errorView.setTag(R.id.passwordInput, "-1");
                this.r.setErrorText("");
                this.r.setVisibility(8);
            }
            L0();
            return;
        }
        if (!this.j.b) {
            ErrorView errorView2 = this.r;
            if (errorView2 != null) {
                errorView2.setVisibility(0);
            }
            TextView textView = this.t;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
        TextView textView2 = this.t;
        if (textView2 != null && !this.v) {
            C0(textView2);
            this.v = true;
        }
        ErrorView errorView3 = this.r;
        if (errorView3 != null) {
            errorView3.setErrorText(r0(R.string.xn_pwd_limit, fq7.b(j)));
        }
    }

    @Override
    public int t() {
        return this.k.getType();
    }

    @Override
    public void u0(String str) {
        if (this.D.d == 0) {
            super.u0(str);
            return;
        }
        AlertDialog alertDialog = this.J;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.J.dismiss();
        }
        if (this.J == null) {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
            this.J = alertDialogCreate;
            alertDialogCreate.setContentView(this.D.d);
            this.J.setCancelable(false);
            this.J.setCanceledOnTouchOutside(false);
        }
        this.J.show();
    }

    @Override
    public String w() {
        return this.k.getText();
    }

    @Override
    public boolean w0(View view, MotionEvent motionEvent) {
        if (t0(this.o, motionEvent) || t0(this.p, motionEvent)) {
            return false;
        }
        CaptchaCodeInput captchaCodeInput = this.m;
        if (captchaCodeInput != null && t0(captchaCodeInput.getEdit(), motionEvent)) {
            return false;
        }
        AccountInput accountInput = this.k;
        if (accountInput != null && t0(accountInput.getEdit(), motionEvent)) {
            return false;
        }
        PasswordInput passwordInput = this.l;
        if (passwordInput != null && t0(passwordInput.getEdit(), motionEvent)) {
            return false;
        }
        SmsCodeInput smsCodeInput = this.n;
        return ((smsCodeInput != null && t0(smsCodeInput.getEdit(), motionEvent)) || t0(this.F, motionEvent) || t0(this.G, motionEvent)) ? false : true;
    }
}
