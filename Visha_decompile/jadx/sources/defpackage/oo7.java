package defpackage;

import android.util.Log;
import com.transsion.xuanniao.account.verify.view.VerifyAccountActivity;

public class oo7 implements re7 {
    public oo7(VerifyAccountActivity verifyAccountActivity) {
    }

    @Override
    public void a(Exception exc) {
        StringBuilder sbA = xo7.a("startSmsRetriever onFailure ");
        sbA.append(exc.getMessage());
        Log.d("com.palm.id.log", sbA.toString());
    }
}
