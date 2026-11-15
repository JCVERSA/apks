package x6;

import android.database.Cursor;
import android.util.Log;
import androidx.room.i0;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.hisavana.common.tracking.TrackingKey;
import kotlin.jvm.internal.Intrinsics;

public interface s {

    public static final class a {
        /* JADX WARN: Multi-variable type inference failed */
        public static void a(y yVar, z entity) {
            Intrinsics.h(entity, "entity");
            long layerId = entity.getLayerId();
            i0 i0VarF = i0.f("SELECT * FROM hisavana_ab_room WHERE layer_id = ?", 1);
            i0VarF.c(1, layerId);
            yVar.f75125a.j();
            Object zVar = null;
            Cursor cursorG = androidx.room.util.b.g(yVar.f75125a, i0VarF, false, null);
            try {
                int iE = androidx.room.util.a.e(cursorG, ClientABTestDTOKt.LAYER_ID);
                int iE2 = androidx.room.util.a.e(cursorG, TrackingKey.REQUEST_TIME);
                int iE3 = androidx.room.util.a.e(cursorG, "ab_info");
                if (cursorG.moveToFirst()) {
                    zVar = new z(cursorG.getLong(iE), cursorG.getLong(iE2), cursorG.isNull(iE3) ? null : cursorG.getString(iE3));
                }
                cursorG.close();
                i0VarF.release();
                if (Log.isLoggable("ADSDK", 3)) {
                    com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "OnlineABDao Query whether the " + entity.getLayerId() + " exists in the database = " + zVar);
                }
                if (zVar == null) {
                    yVar.b(entity);
                    return;
                }
                long layerId2 = entity.getLayerId();
                long requestTime = entity.getRequestTime();
                yVar.f75125a.j();
                z3.h hVarB = yVar.f75129e.b();
                hVarB.c(1, requestTime);
                hVarB.c(2, layerId2);
                try {
                    yVar.f75125a.k();
                    try {
                        hVarB.F();
                        yVar.f75125a.e0();
                        yVar.f75125a.t();
                        yVar.f75129e.h(hVarB);
                    } catch (Throwable th2) {
                        yVar.f75125a.t();
                        throw th2;
                    }
                } catch (Throwable th3) {
                    yVar.f75129e.h(hVarB);
                    throw th3;
                }
            } catch (Throwable th4) {
                cursorG.close();
                i0VarF.release();
                throw th4;
            }
        }

        public static long b(y yVar, z entity) {
            Intrinsics.h(entity, "entity");
            yVar.f75125a.j();
            yVar.f75125a.k();
            try {
                long jM = yVar.f75126b.m(entity);
                yVar.f75125a.e0();
                yVar.f75125a.t();
                int iF = 0;
                i0 i0VarF = i0.f("SELECT COUNT(*) FROM hisavana_ab_room", 0);
                yVar.f75125a.j();
                Cursor cursorG = androidx.room.util.b.g(yVar.f75125a, i0VarF, false, null);
                try {
                    int i10 = cursorG.moveToFirst() ? cursorG.getInt(0) : 0;
                    cursorG.close();
                    i0VarF.release();
                    if (i10 >= 20) {
                        yVar.f75125a.j();
                        z3.h hVarB = yVar.f75127c.b();
                        hVarB.c(1, i10 - 10);
                        try {
                            yVar.f75125a.k();
                            try {
                                iF = hVarB.F();
                                yVar.f75125a.e0();
                                yVar.f75125a.t();
                                yVar.f75127c.h(hVarB);
                            } catch (Throwable th2) {
                                yVar.f75125a.t();
                                throw th2;
                            }
                        } catch (Throwable th3) {
                            yVar.f75127c.h(hVarB);
                            throw th3;
                        }
                    }
                    if (Log.isLoggable("ADSDK", 3)) {
                        com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "OnlineABDao delCount = " + iF + " and upsertId = " + jM);
                    }
                    return jM;
                } catch (Throwable th4) {
                    cursorG.close();
                    i0VarF.release();
                    throw th4;
                }
            } catch (Throwable th5) {
                yVar.f75125a.t();
                throw th5;
            }
        }
    }

    int a();

    void a(z zVar);

    long b(z zVar);

    Cursor b();
}
