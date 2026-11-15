package defpackage;

import android.content.Intent;
import com.transsion.xuanniao.account.comm.widget.PhoneInput;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;
import com.transsion.xuanniao.account.verify.view.VerifyPhoneActivity;

public class cq7 implements PhoneInput.d {
    public final VerifyPhoneActivity a;

    public cq7(VerifyPhoneActivity verifyPhoneActivity) {
        this.a = verifyPhoneActivity;
    }

    @Override
    public void a() {
        Intent intent = new Intent(this.a, (Class<?>) CountrySelectActivity.class);
        intent.putExtra("countryCode", this.a.i.g());
        intent.putExtra("countryName", this.a.i.f);
        VerifyPhoneActivity verifyPhoneActivity = this.a;
        verifyPhoneActivity.startActivityForResult(intent, verifyPhoneActivity.e);
    }
}
