package defpackage;

import android.text.TextUtils;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class tm7 implements SmsCodeInput.e {
    public final LoginActivity a;

    public tm7(LoginActivity loginActivity) {
        this.a = loginActivity;
    }

    @Override
    public void a() {
        LoginActivity loginActivity = this.a;
        int i = LoginActivity.K;
        loginActivity.H0();
    }

    @Override
    public void b() {
        if (LoginActivity.E0(this.a)) {
            boolean z = this.a.k.getType() == 3;
            LoginActivity loginActivity = this.a;
            loginActivity.getClass();
            int i = loginActivity.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getInt("sms_req_count", 1);
            if (z && !this.a.K0() && ((TextUtils.equals("7", this.a.j.c) && i == 1) || i % 4 == 0)) {
                LoginActivity loginActivity2 = this.a;
                loginActivity2.getClass();
                new d.a(loginActivity2, R.style.dialog_soft_input).k(loginActivity2.getString(R.string.xn_sms_req_reminder_msg)).u(R.string.xn_sms_req_reminder_continue, new gq7(loginActivity2)).m(R.string.xn_sms_req_reminder_cancel, new aq7(loginActivity2)).F();
                return;
            }
            if (z) {
                LoginActivity loginActivity3 = this.a;
                loginActivity3.getClass();
                xda xdaVarV = eq9.a(loginActivity3).v();
                xdaVarV.f(new kr7(loginActivity3));
                xdaVarV.d(new or7(loginActivity3));
            }
            this.a.j.h();
        }
    }
}
