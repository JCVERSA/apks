package defpackage;

import android.util.Log;
import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.cloud.sdk.commonutil.util.HSScopeHelper;

public final class tga {
    public static final tga a = new tga();
    public static HSRoomDatabase b;

    public static final void b(boolean z) {
        int iG = o9.e().g("key_data_status", -1);
        final int i = !z ? 1 : 0;
        ja1.Log().i("TestChecker", "sp save env status = " + iG + " and isDebug = " + z);
        if (iG == -1) {
            o9.e().p("key_data_status", i);
        } else if (iG != i) {
            HSScopeHelper.a.r(new Runnable() {
                @Override
                public final void run() {
                    tga.c(i);
                }
            });
        }
    }

    public static final void c(int i) {
        a.d();
        o9.e().p("key_data_status", i);
    }

    public final void d() {
        try {
            o9.e().b();
        } catch (Exception e) {
            ja1.Log().e("TestChecker", "delete sp fail = " + e.getMessage());
        }
        e();
    }

    public final void e() {
        qud qudVarE;
        azd azdVarH;
        dgc dgcVarV;
        y8d y8dVarR;
        ufd ufdVarB;
        tba tbaVarL;
        ja1.Log().i("TestChecker", "execSQL delete");
        try {
            f();
            HSRoomDatabase hSRoomDatabase = b;
            if (hSRoomDatabase != null && (tbaVarL = hSRoomDatabase.l()) != null) {
                tbaVarL.a();
            }
            HSRoomDatabase hSRoomDatabase2 = b;
            if (hSRoomDatabase2 != null && (ufdVarB = hSRoomDatabase2.b()) != null) {
                ufdVarB.a();
            }
            HSRoomDatabase hSRoomDatabase3 = b;
            if (hSRoomDatabase3 != null && (y8dVarR = hSRoomDatabase3.r()) != null) {
                y8dVarR.b();
            }
            HSRoomDatabase hSRoomDatabase4 = b;
            if (hSRoomDatabase4 != null && (dgcVarV = hSRoomDatabase4.v()) != null) {
                dgcVarV.b();
            }
            HSRoomDatabase hSRoomDatabase5 = b;
            if (hSRoomDatabase5 != null && (azdVarH = hSRoomDatabase5.h()) != null) {
                azdVarH.a();
            }
            HSRoomDatabase hSRoomDatabase6 = b;
            if (hSRoomDatabase6 != null && (qudVarE = hSRoomDatabase6.e()) != null) {
                qudVarE.a();
            }
            ABTestKit.deleteTable();
        } catch (Exception e) {
            ja1.Log().e("TestChecker", "delete db fail = " + e.getMessage());
        }
    }

    public final synchronized void f() {
        HSRoomDatabase hSRoomDatabase = b;
        if (hSRoomDatabase == null || !hSRoomDatabase.isOpen()) {
            try {
                b = HSRoomDatabase.t();
            } catch (Exception e) {
                ja1.Log().e("TestChecker", "openDB ex " + Log.getStackTraceString(e));
            }
        }
    }
}
