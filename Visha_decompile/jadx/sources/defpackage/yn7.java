package defpackage;

import android.content.Intent;
import com.transsion.xuanniao.account.center.view.EditAddressActivity;
import com.transsion.xuanniao.account.comm.widget.PhoneInput;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;

public class yn7 implements PhoneInput.d {
    public final EditAddressActivity a;

    public yn7(EditAddressActivity editAddressActivity) {
        this.a = editAddressActivity;
    }

    @Override
    public void a() {
        Intent intent = new Intent(this.a, (Class<?>) CountrySelectActivity.class);
        intent.putExtra("countryCode", this.a.p.g());
        intent.putExtra("countryName", this.a.p.e);
        EditAddressActivity editAddressActivity = this.a;
        editAddressActivity.startActivityForResult(intent, editAddressActivity.e);
    }
}
