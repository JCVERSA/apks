package defpackage;

import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.verify.view.VerifyPhoneActivity;

public class iq7 implements CaptchaCodeInput.c {
    public final VerifyPhoneActivity a;

    public iq7(VerifyPhoneActivity verifyPhoneActivity) {
        this.a = verifyPhoneActivity;
    }

    @Override
    public void a() {
        VerifyPhoneActivity verifyPhoneActivity = this.a;
        verifyPhoneActivity.u0(verifyPhoneActivity.getString(R.string.xn_loading));
        this.a.i.c();
    }
}
