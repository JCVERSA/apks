package defpackage;

import android.content.Intent;
import com.transsion.xuanniao.account.bind.contact.view.BindingEmergencyContactActivity;
import com.transsion.xuanniao.account.comm.widget.PhoneInput;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;

public class hm7 implements PhoneInput.d {
    public final BindingEmergencyContactActivity a;

    public hm7(BindingEmergencyContactActivity bindingEmergencyContactActivity) {
        this.a = bindingEmergencyContactActivity;
    }

    @Override
    public void a() {
        Intent intent = new Intent(this.a, (Class<?>) CountrySelectActivity.class);
        intent.putExtra("countryCode", this.a.i.d());
        intent.putExtra("countryName", this.a.i.c);
        BindingEmergencyContactActivity bindingEmergencyContactActivity = this.a;
        bindingEmergencyContactActivity.startActivityForResult(intent, bindingEmergencyContactActivity.e);
    }
}
