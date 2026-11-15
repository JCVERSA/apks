package defpackage;

import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.verify.view.VerifyAccountActivity;

public class em7 implements CaptchaCodeInput.c {
    public final VerifyAccountActivity a;

    public em7(VerifyAccountActivity verifyAccountActivity) {
        this.a = verifyAccountActivity;
    }

    @Override
    public void a() {
        this.a.i.c();
    }
}
