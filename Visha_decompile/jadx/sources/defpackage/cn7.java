package defpackage;

import com.transsion.xuanniao.account.bind.email.view.BindingEmailActivity;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;

public class cn7 implements SmsCodeInput.e {
    public final BindingEmailActivity a;

    public cn7(BindingEmailActivity bindingEmailActivity) {
        this.a = bindingEmailActivity;
    }

    @Override
    public void a() {
        BindingEmailActivity.B0(this.a);
    }

    @Override
    public void b() {
        this.a.i.d();
    }
}
