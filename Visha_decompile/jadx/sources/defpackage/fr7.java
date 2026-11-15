package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class fr7 implements DialogInterface.OnClickListener {
    public final String b;
    public final int c;
    public final LoginActivity d;

    public fr7(LoginActivity loginActivity, String str, int i) {
        this.d = loginActivity;
        this.b = str;
        this.c = i;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        LoginActivity loginActivity = this.d;
        loginActivity.getClass();
        xj.U(loginActivity).h0("open", this.b);
        this.d.j.c(this.c);
    }
}
