package defpackage;

import android.util.Log;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class or7 implements re7 {
    public or7(LoginActivity loginActivity) {
    }

    @Override
    public void a(Exception exc) {
        StringBuilder sbA = xo7.a("startSmsRetriever onFailure ");
        sbA.append(exc.getMessage());
        Log.d("com.palm.id.log", sbA.toString());
    }
}
