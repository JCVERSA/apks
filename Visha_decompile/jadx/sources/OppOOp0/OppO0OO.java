package OppOOp0;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.transsion.xuanniao.account.center.view.UserCenterActivity;
import defpackage.am7;
import defpackage.l41;
import defpackage.vo7;
import defpackage.wk7;
import java.lang.ref.SoftReference;

public class OppO0OO implements Runnable {
    public final OppO0O0 OppO00p;

    public OppO0OO(OppO0O0 oppO0O0) {
        this.OppO00p = oppO0O0;
    }

    @Override
    public void run() {
        vo7.a(this.OppO00p.d);
        am7.a(this.OppO00p.d, wk7.a(), null);
        Log.d("com.palm.id.log", " postLogin -----> 1");
        if (l41.d(this.OppO00p.d)) {
            SoftReference softReference = this.OppO00p.e;
            Activity activity = softReference != null ? (Activity) softReference.get() : null;
            if (activity == null || activity.isDestroyed()) {
                return;
            }
            Log.d("com.palm.id.log", " postLogin -----> 2");
            Intent intent = new Intent(activity, (Class<?>) UserCenterActivity.class);
            intent.setFlags(67108864);
            activity.startActivity(intent);
        }
    }
}
