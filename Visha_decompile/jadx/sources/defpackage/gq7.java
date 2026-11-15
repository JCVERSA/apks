package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class gq7 implements DialogInterface.OnClickListener {
    public final LoginActivity b;

    public gq7(LoginActivity loginActivity) {
        this.b = loginActivity;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.b.k.getType() == 3) {
            LoginActivity loginActivity = this.b;
            loginActivity.getClass();
            xda xdaVarV = eq9.a(loginActivity).v();
            xdaVarV.f(new kr7(loginActivity));
            xdaVarV.d(new or7(loginActivity));
        }
        this.b.j.h();
    }
}
