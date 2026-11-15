package defpackage;

import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class hp7 implements CaptchaCodeInput.c {
    public final LoginActivity a;

    public hp7(LoginActivity loginActivity) {
        this.a = loginActivity;
    }

    @Override
    public void a() {
        LoginActivity loginActivity = this.a;
        if (loginActivity.j.b) {
            xj.U(loginActivity).e1();
        }
        if (this.a.j.r()) {
            return;
        }
        LoginActivity loginActivity2 = this.a;
        loginActivity2.u0(loginActivity2.getString(R.string.xn_loading));
        this.a.j.g(null);
    }
}
