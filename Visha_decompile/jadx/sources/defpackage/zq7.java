package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class zq7 implements DialogInterface.OnClickListener {
    public final String b;
    public final LoginActivity c;

    public zq7(LoginActivity loginActivity, String str) {
        this.c = loginActivity;
        this.b = str;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        LoginActivity loginActivity = this.c;
        loginActivity.getClass();
        xj.U(loginActivity).h0("cancel", this.b);
    }
}
