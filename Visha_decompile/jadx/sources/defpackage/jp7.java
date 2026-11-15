package defpackage;

import android.text.TextUtils;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.verify.view.VerifyEmailActivity;

public class jp7 implements SmsCodeInput.e {
    public final VerifyEmailActivity a;

    public jp7(VerifyEmailActivity verifyEmailActivity) {
        this.a = verifyEmailActivity;
    }

    @Override
    public void a() {
        VerifyEmailActivity.D0(this.a);
    }

    @Override
    public void b() {
        VerifyEmailActivity verifyEmailActivity = this.a;
        verifyEmailActivity.getClass();
        if (verifyEmailActivity.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            ao7 ao7Var = ao7.a.a;
            VerifyEmailActivity verifyEmailActivity2 = this.a;
            verifyEmailActivity2.getClass();
            AccountRes accountResJ = ao7Var.j(verifyEmailActivity2);
            if (accountResJ != null && !TextUtils.equals(this.a.m(), accountResJ.email)) {
                VerifyEmailActivity.B0(this.a);
                return;
            }
        }
        VerifyEmailActivity verifyEmailActivity3 = this.a;
        verifyEmailActivity3.getClass();
        xj.U(verifyEmailActivity3).q1();
        this.a.h.d();
    }
}
