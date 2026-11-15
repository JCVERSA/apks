package defpackage;

import android.util.Log;
import com.hoffnung.tpms_sdk.TPMSDelegator;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class nq7 implements TPMSDelegator.a {
    public nq7(LoginActivity loginActivity) {
    }

    @Override
    public void a(int i) {
        Log.d("com.palm.id.log", "synchronizeSetting onFail code  = " + i);
    }

    @Override
    public void onSuccess() {
        Log.d("com.palm.id.log", "synchronizeSetting onSuccess");
    }
}
