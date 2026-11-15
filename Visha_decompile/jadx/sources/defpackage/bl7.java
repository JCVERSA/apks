package defpackage;

import android.content.Intent;
import com.transsion.xuanniao.account.comm.widget.AccountInput;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;
import com.transsion.xuanniao.account.verify.view.VerifyAccountActivity;

public class bl7 implements AccountInput.d {
    public final VerifyAccountActivity a;

    public bl7(VerifyAccountActivity verifyAccountActivity) {
        this.a = verifyAccountActivity;
    }

    @Override
    public void a() {
        Intent intent = new Intent(this.a, (Class<?>) CountrySelectActivity.class);
        intent.putExtra("countryCode", this.a.i.g());
        VerifyAccountActivity verifyAccountActivity = this.a;
        verifyAccountActivity.startActivityForResult(intent, verifyAccountActivity.e);
    }
}
