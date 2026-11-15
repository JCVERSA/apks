package defpackage;

import com.transsion.xuanniao.account.bind.phone.view.BindingPhoneActivity;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;

public class dn7 implements SmsCodeInput.e {
    public final BindingPhoneActivity a;

    public dn7(BindingPhoneActivity bindingPhoneActivity) {
        this.a = bindingPhoneActivity;
    }

    @Override
    public void a() {
        BindingPhoneActivity.B0(this.a);
    }

    @Override
    public void b() {
        BindingPhoneActivity bindingPhoneActivity = this.a;
        int i = BindingPhoneActivity.k;
        bindingPhoneActivity.getClass();
        xda xdaVarV = eq9.a(bindingPhoneActivity).v();
        xdaVarV.f(new wn7(bindingPhoneActivity));
        xdaVarV.d(new ro7(bindingPhoneActivity));
        this.a.f.d();
    }
}
