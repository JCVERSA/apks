package ee;

import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.hisavana.mediation.config.ConfigContentHelper;

public abstract class u {
    public static void a() {
        com.cloud.sdk.commonutil.util.c.Log().i("TestChecker", "mediation execSQL delete");
        try {
            ConfigContentHelper.g().c();
        } catch (Exception e10) {
            com.cloud.sdk.commonutil.util.c.Log().e("TestChecker", "mediation delete db fail = " + e10.getMessage());
        }
    }

    public static void b(boolean z10) {
        int iG = l7.a.e().g("key_data_status", -1);
        boolean z11 = !z10;
        com.cloud.sdk.commonutil.util.c.Log().i("TestChecker", "mediation sp save env status = " + iG + " and isDebug = " + z10);
        if (iG == -1 || iG == z11) {
            return;
        }
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                u.a();
            }
        });
    }
}
