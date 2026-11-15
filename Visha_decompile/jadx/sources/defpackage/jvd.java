package defpackage;

import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.hisavana.mediation.config.ConfigContentHelper;

public abstract class jvd {
    public static void a() {
        ja1.Log().i("TestChecker", "mediation execSQL delete");
        try {
            ConfigContentHelper.g().c();
        } catch (Exception e) {
            ja1.Log().e("TestChecker", "mediation delete db fail = " + e.getMessage());
        }
    }

    public static void b(boolean z) {
        int iG = o9.e().g("key_data_status", -1);
        boolean z2 = !z;
        ja1.Log().i("TestChecker", "mediation sp save env status = " + iG + " and isDebug = " + z);
        if (iG == -1 || iG == z2) {
            return;
        }
        HSScopeHelper.a.r(new Runnable() {
            @Override
            public final void run() {
                jvd.a();
            }
        });
    }
}
