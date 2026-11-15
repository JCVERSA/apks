package defpackage;

import android.text.TextUtils;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.verify.view.VerifyPhoneActivity;

public class oq7 implements SmsCodeInput.e {
    public final VerifyPhoneActivity a;

    public oq7(VerifyPhoneActivity verifyPhoneActivity) {
        this.a = verifyPhoneActivity;
    }

    @Override
    public void a() {
        VerifyPhoneActivity.D0(this.a);
    }

    @Override
    public void b() {
        VerifyPhoneActivity verifyPhoneActivity = this.a;
        verifyPhoneActivity.getClass();
        if (verifyPhoneActivity.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            ao7 ao7Var = ao7.a.a;
            VerifyPhoneActivity verifyPhoneActivity2 = this.a;
            verifyPhoneActivity2.getClass();
            AccountRes accountResJ = ao7Var.j(verifyPhoneActivity2);
            if (accountResJ != null) {
                if (!TextUtils.equals(this.a.i.g() + "-" + this.a.k(), accountResJ.phone)) {
                    VerifyPhoneActivity.B0(this.a);
                    return;
                }
            }
        }
        VerifyPhoneActivity verifyPhoneActivity3 = this.a;
        verifyPhoneActivity3.getClass();
        xj.U(verifyPhoneActivity3).u1();
        VerifyPhoneActivity verifyPhoneActivity4 = this.a;
        verifyPhoneActivity4.getClass();
        xda xdaVarV = eq9.a(verifyPhoneActivity4).v();
        xdaVarV.f(new uq7(verifyPhoneActivity4));
        xdaVarV.d(new ar7(verifyPhoneActivity4));
        this.a.i.d();
    }
}
