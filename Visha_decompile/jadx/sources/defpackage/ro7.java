package defpackage;

import android.util.Log;
import com.transsion.xuanniao.account.bind.phone.view.BindingPhoneActivity;

public class ro7 implements re7 {
    public ro7(BindingPhoneActivity bindingPhoneActivity) {
    }

    @Override
    public void a(Exception exc) {
        StringBuilder sbA = xo7.a("startSmsRetriever onFailure ");
        sbA.append(exc.getMessage());
        Log.d("com.palm.id.log", sbA.toString());
    }
}
