package defpackage;

import android.view.View;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class ur7 implements View.OnClickListener {
    public final LoginActivity b;

    public ur7(LoginActivity loginActivity) {
        this.b = loginActivity;
    }

    @Override
    public void onClick(View view) {
        this.b.F0(true);
    }
}
