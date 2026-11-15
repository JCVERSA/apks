package defpackage;

import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.bind.phone.view.BindingPhoneActivity;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;

public class lm7 implements CaptchaCodeInput.c {
    public final BindingPhoneActivity a;

    public lm7(BindingPhoneActivity bindingPhoneActivity) {
        this.a = bindingPhoneActivity;
    }

    @Override
    public void a() {
        BindingPhoneActivity bindingPhoneActivity = this.a;
        bindingPhoneActivity.u0(bindingPhoneActivity.getString(R.string.xn_loading));
        this.a.f.c();
    }
}
