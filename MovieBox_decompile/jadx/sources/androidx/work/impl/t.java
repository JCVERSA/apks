package androidx.work.impl;

import android.content.Context;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.Iterator;
import java.util.List;

public abstract class t {

    private static final String f15318a = androidx.work.j.i("Schedulers");

    static s a(Context context, d0 d0Var) {
        androidx.work.impl.background.systemjob.k kVar = new androidx.work.impl.background.systemjob.k(context, d0Var);
        androidx.work.impl.utils.n.a(context, SystemJobService.class, true);
        androidx.work.j.e().a(f15318a, "Created SystemJobScheduler and enabled SystemJobService");
        return kVar;
    }

    public static void b(androidx.work.a aVar, WorkDatabase workDatabase, List list) {
        if (list == null || list.size() == 0) {
            return;
        }
        j4.v vVarN0 = workDatabase.n0();
        workDatabase.k();
        try {
            List listT = vVarN0.t(aVar.h());
            List listO = vVarN0.o(200);
            if (listT != null && listT.size() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Iterator it = listT.iterator();
                while (it.hasNext()) {
                    vVarN0.r(((j4.u) it.next()).f62987a, jCurrentTimeMillis);
                }
            }
            workDatabase.e0();
            workDatabase.t();
            if (listT != null && listT.size() > 0) {
                j4.u[] uVarArr = (j4.u[]) listT.toArray(new j4.u[listT.size()]);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    s sVar = (s) it2.next();
                    if (sVar.e()) {
                        sVar.c(uVarArr);
                    }
                }
            }
            if (listO == null || listO.size() <= 0) {
                return;
            }
            j4.u[] uVarArr2 = (j4.u[]) listO.toArray(new j4.u[listO.size()]);
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                s sVar2 = (s) it3.next();
                if (!sVar2.e()) {
                    sVar2.c(uVarArr2);
                }
            }
        } catch (Throwable th2) {
            workDatabase.t();
            throw th2;
        }
    }
}
