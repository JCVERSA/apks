package defpackage;

import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.bind.email.view.BindingEmailActivity;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;

public class km7 implements CaptchaCodeInput.c {
    public final BindingEmailActivity a;

    public km7(BindingEmailActivity bindingEmailActivity) {
        this.a = bindingEmailActivity;
    }

    @Override
    public void a() {
        BindingEmailActivity bindingEmailActivity = this.a;
        bindingEmailActivity.u0(bindingEmailActivity.getString(R.string.xn_loading));
        this.a.i.c();
    }
}
