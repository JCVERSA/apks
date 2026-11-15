package defpackage;

import android.content.Intent;
import com.transsion.xuanniao.account.bind.phone.view.BindingPhoneActivity;
import com.transsion.xuanniao.account.comm.widget.PhoneInput;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;

public class gl7 implements PhoneInput.d {
    public final BindingPhoneActivity a;

    public gl7(BindingPhoneActivity bindingPhoneActivity) {
        this.a = bindingPhoneActivity;
    }

    @Override
    public void a() {
        Intent intent = new Intent(this.a, (Class<?>) CountrySelectActivity.class);
        intent.putExtra("countryCode", this.a.f.f());
        intent.putExtra("countryName", this.a.f.e);
        BindingPhoneActivity bindingPhoneActivity = this.a;
        bindingPhoneActivity.startActivityForResult(intent, bindingPhoneActivity.e);
    }
}
