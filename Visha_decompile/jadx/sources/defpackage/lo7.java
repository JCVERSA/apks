package defpackage;

import android.content.Intent;
import com.transsion.xuanniao.account.comm.widget.AccountInput;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class lo7 implements AccountInput.d {
    public final LoginActivity a;

    public lo7(LoginActivity loginActivity) {
        this.a = loginActivity;
    }

    @Override
    public void a() {
        LoginActivity loginActivity = this.a;
        loginActivity.getClass();
        xj.U(loginActivity).z0(this.a.j.o());
        Intent intent = new Intent(this.a, (Class<?>) CountrySelectActivity.class);
        intent.putExtra("countryCode", this.a.j.o());
        intent.putExtra("countryName", this.a.j.d);
        LoginActivity loginActivity2 = this.a;
        loginActivity2.startActivityForResult(intent, loginActivity2.e);
        LoginActivity loginActivity3 = this.a;
        loginActivity3.getClass();
        xj.U(loginActivity3).A0();
    }
}
