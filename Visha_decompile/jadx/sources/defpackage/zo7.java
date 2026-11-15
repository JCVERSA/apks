package defpackage;

import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.verify.view.VerifyEmailActivity;

public class zo7 implements CaptchaCodeInput.c {
    public final VerifyEmailActivity a;

    public zo7(VerifyEmailActivity verifyEmailActivity) {
        this.a = verifyEmailActivity;
    }

    @Override
    public void a() {
        VerifyEmailActivity verifyEmailActivity = this.a;
        verifyEmailActivity.u0(verifyEmailActivity.getString(R.string.xn_loading));
        this.a.h.c();
    }
}
