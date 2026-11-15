package defpackage;

import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import com.transsion.xuanniao.account.verify.view.VerifyAccountActivity;

public class ym7 implements SmsCodeInput.e {
    public final VerifyAccountActivity a;

    public ym7(VerifyAccountActivity verifyAccountActivity) {
        this.a = verifyAccountActivity;
    }

    @Override
    public void a() {
        VerifyAccountActivity.D0(this.a);
    }

    @Override
    public void b() {
        if (VerifyAccountActivity.B0(this.a)) {
            if (this.a.f.getType() == 3) {
                VerifyAccountActivity verifyAccountActivity = this.a;
                verifyAccountActivity.getClass();
                xda xdaVarV = eq9.a(verifyAccountActivity).v();
                xdaVarV.f(new sn7(verifyAccountActivity));
                xdaVarV.d(new oo7(verifyAccountActivity));
            }
            this.a.i.d();
        }
    }
}
