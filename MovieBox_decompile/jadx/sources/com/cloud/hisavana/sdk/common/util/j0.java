package com.cloud.hisavana.sdk.common.util;

import android.util.Log;
import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.sdk.b1;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.cloud.hisavana.sdk.v3;
import com.cloud.hisavana.sdk.v5;
import com.cloud.hisavana.sdk.x4;
import com.cloud.hisavana.sdk.y1;
import com.cloud.hisavana.sdk.z0;
import com.cloud.sdk.commonutil.util.HSScopeHelper;

public final class j0 {

    public static final j0 f21573a = new j0();

    private static HSRoomDatabase f21574b;

    private j0() {
    }

    public static final void b(boolean z10) {
        int iG = l7.a.e().g("key_data_status", -1);
        final int i10 = !z10 ? 1 : 0;
        com.cloud.sdk.commonutil.util.c.Log().i("TestChecker", "sp save env status = " + iG + " and isDebug = " + z10);
        if (iG == -1) {
            l7.a.e().p("key_data_status", i10);
        } else if (iG != i10) {
            HSScopeHelper.f22503a.i(new Runnable() {
                @Override
                public final void run() {
                    j0.c(i10);
                }
            });
        }
    }

    public static final void c(int i10) {
        f21573a.d();
        l7.a.e().p("key_data_status", i10);
    }

    private final void d() {
        try {
            l7.a.e().b();
        } catch (Exception e10) {
            com.cloud.sdk.commonutil.util.c.Log().e("TestChecker", "delete sp fail = " + e10.getMessage());
        }
        e();
    }

    private final void e() {
        x4 x4VarK0;
        v5 v5VarN0;
        b1 b1VarX0;
        y1 y1VarT0;
        v3 v3VarH0;
        z0 z0VarP0;
        com.cloud.sdk.commonutil.util.c.Log().i("TestChecker", "execSQL delete");
        try {
            f();
            HSRoomDatabase hSRoomDatabase = f21574b;
            if (hSRoomDatabase != null && (z0VarP0 = hSRoomDatabase.p0()) != null) {
                z0VarP0.a();
            }
            HSRoomDatabase hSRoomDatabase2 = f21574b;
            if (hSRoomDatabase2 != null && (v3VarH0 = hSRoomDatabase2.h0()) != null) {
                v3VarH0.a();
            }
            HSRoomDatabase hSRoomDatabase3 = f21574b;
            if (hSRoomDatabase3 != null && (y1VarT0 = hSRoomDatabase3.t0()) != null) {
                y1VarT0.b();
            }
            HSRoomDatabase hSRoomDatabase4 = f21574b;
            if (hSRoomDatabase4 != null && (b1VarX0 = hSRoomDatabase4.x0()) != null) {
                b1VarX0.b();
            }
            HSRoomDatabase hSRoomDatabase5 = f21574b;
            if (hSRoomDatabase5 != null && (v5VarN0 = hSRoomDatabase5.n0()) != null) {
                v5VarN0.a();
            }
            HSRoomDatabase hSRoomDatabase6 = f21574b;
            if (hSRoomDatabase6 != null && (x4VarK0 = hSRoomDatabase6.k0()) != null) {
                x4VarK0.a();
            }
            ABTestKit.deleteTable();
        } catch (Exception e10) {
            com.cloud.sdk.commonutil.util.c.Log().e("TestChecker", "delete db fail = " + e10.getMessage());
        }
    }

    public final synchronized void f() {
        HSRoomDatabase hSRoomDatabase = f21574b;
        if (hSRoomDatabase == null || !hSRoomDatabase.S()) {
            try {
                f21574b = HSRoomDatabase.v0();
            } catch (Exception e10) {
                com.cloud.sdk.commonutil.util.c.Log().e("TestChecker", "openDB ex " + Log.getStackTraceString(e10));
            }
        }
    }
}
