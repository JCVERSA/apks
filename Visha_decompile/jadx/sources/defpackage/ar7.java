package defpackage;

import android.util.Log;
import com.transsion.xuanniao.account.verify.view.VerifyPhoneActivity;

public class ar7 implements re7 {
    public ar7(VerifyPhoneActivity verifyPhoneActivity) {
    }

    @Override
    public void a(Exception exc) {
        StringBuilder sbA = xo7.a("startSmsRetriever onFailure ");
        sbA.append(exc.getMessage());
        Log.d("com.palm.id.log", sbA.toString());
    }
}
