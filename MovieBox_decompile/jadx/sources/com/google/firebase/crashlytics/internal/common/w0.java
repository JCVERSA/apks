package com.google.firebase.crashlytics.internal.common;

import android.app.ApplicationExitInfo;
import android.content.Context;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.Executor;

public class w0 {

    private final z f30434a;

    private final xb.e f30435b;

    private final com.google.firebase.crashlytics.internal.send.b f30436c;

    private final tb.e f30437d;

    private final tb.o f30438e;

    private final g0 f30439f;

    private final CrashlyticsWorkers f30440g;

    w0(z zVar, xb.e eVar, com.google.firebase.crashlytics.internal.send.b bVar, tb.e eVar2, tb.o oVar, g0 g0Var, CrashlyticsWorkers crashlyticsWorkers) {
        this.f30434a = zVar;
        this.f30435b = eVar;
        this.f30436c = bVar;
        this.f30437d = eVar2;
        this.f30438e = oVar;
        this.f30439f = g0Var;
        this.f30440g = crashlyticsWorkers;
    }

    private CrashlyticsReport.e.d d(CrashlyticsReport.e.d dVar, tb.e eVar, tb.o oVar) {
        CrashlyticsReport.e.d.b bVarH = dVar.h();
        String strC = eVar.c();
        if (strC != null) {
            bVarH.d(CrashlyticsReport.e.d.AbstractC0410d.a().b(strC).a());
        } else {
            qb.g.f().i("No log data to include with this event.");
        }
        List listN = n(oVar.g());
        List listN2 = n(oVar.h());
        if (!listN.isEmpty() || !listN2.isEmpty()) {
            bVarH.b(dVar.b().i().e(listN).g(listN2).a());
        }
        return bVarH.a();
    }

    private CrashlyticsReport.e.d e(CrashlyticsReport.e.d dVar) {
        return f(d(dVar, this.f30437d, this.f30438e), this.f30438e);
    }

    private CrashlyticsReport.e.d f(CrashlyticsReport.e.d dVar, tb.o oVar) {
        List listI = oVar.i();
        if (listI.isEmpty()) {
            return dVar;
        }
        CrashlyticsReport.e.d.b bVarH = dVar.h();
        bVarH.e(CrashlyticsReport.e.d.f.a().b(listI).a());
        return bVarH.a();
    }

    private static CrashlyticsReport.a g(ApplicationExitInfo applicationExitInfo) {
        String strH = null;
        try {
            InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream != null) {
                strH = h(traceInputStream);
            }
        } catch (IOException e10) {
            qb.g.f().k("Could not get input trace in application exit info: " + applicationExitInfo.toString() + " Error: " + e10);
        }
        return CrashlyticsReport.a.a().c(applicationExitInfo.getImportance()).e(applicationExitInfo.getProcessName()).g(applicationExitInfo.getReason()).i(applicationExitInfo.getTimestamp()).d(applicationExitInfo.getPid()).f(applicationExitInfo.getPss()).h(applicationExitInfo.getRss()).j(strH).a();
    }

    public static String h(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static w0 i(Context context, g0 g0Var, xb.g gVar, a aVar, tb.e eVar, tb.o oVar, zb.d dVar, yb.b bVar, l0 l0Var, k kVar, CrashlyticsWorkers crashlyticsWorkers) {
        return new w0(new z(context, g0Var, aVar, dVar, bVar), new xb.e(gVar, bVar, kVar), com.google.firebase.crashlytics.internal.send.b.b(context, bVar, l0Var), eVar, oVar, g0Var, crashlyticsWorkers);
    }

    private a0 j(a0 a0Var) {
        if (a0Var.b().h() != null && a0Var.b().g() != null) {
            return a0Var;
        }
        f0 f0VarD = this.f30439f.d(true);
        return a0.a(a0Var.b().t(f0VarD.b()).s(f0VarD.a()), a0Var.d(), a0Var.c());
    }

    private ApplicationExitInfo m(String str, List list) {
        long jQ = this.f30435b.q(str);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ApplicationExitInfo applicationExitInfoA = androidx.work.impl.utils.d.a(it.next());
            if (applicationExitInfoA.getTimestamp() < jQ) {
                return null;
            }
            if (applicationExitInfoA.getReason() == 6) {
                return applicationExitInfoA;
            }
        }
        return null;
    }

    private static List n(Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(CrashlyticsReport.c.a().b((String) entry.getKey()).c((String) entry.getValue()).a());
        }
        Collections.sort(arrayList, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return w0.p((CrashlyticsReport.c) obj, (CrashlyticsReport.c) obj2);
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    public static int p(CrashlyticsReport.c cVar, CrashlyticsReport.c cVar2) {
        return cVar.b().compareTo(cVar2.b());
    }

    public void q(CrashlyticsReport.e.d dVar, String str, boolean z10) {
        qb.g.f().b("disk worker: log non-fatal event to persistence");
        this.f30435b.y(dVar, str, z10);
    }

    public boolean t(Task task) {
        if (!task.isSuccessful()) {
            qb.g.f().l("Crashlytics report could not be enqueued to DataTransport", task.getException());
            return false;
        }
        a0 a0Var = (a0) task.getResult();
        qb.g.f().b("Crashlytics report successfully enqueued to DataTransport: " + a0Var.d());
        File fileC = a0Var.c();
        if (fileC.delete()) {
            qb.g.f().b("Deleted report file: " + fileC.getPath());
            return true;
        }
        qb.g.f().k("Crashlytics could not delete report file: " + fileC.getPath());
        return true;
    }

    private void u(Throwable th2, Thread thread, final String str, String str2, long j10, boolean z10) {
        final boolean zEquals = str2.equals(AppMeasurement.CRASH_ORIGIN);
        final CrashlyticsReport.e.d dVarE = e(this.f30434a.d(th2, thread, str2, j10, 4, 8, z10));
        if (z10) {
            this.f30435b.y(dVarE, str, zEquals);
        } else {
            this.f30440g.f30473b.f(new Runnable() {
                @Override
                public final void run() {
                    this.f30426a.q(dVarE, str, zEquals);
                }
            });
        }
    }

    public Task A(Executor executor, String str) {
        List<a0> listW = this.f30435b.w();
        ArrayList arrayList = new ArrayList();
        for (a0 a0Var : listW) {
            if (str == null || str.equals(a0Var.d())) {
                arrayList.add(this.f30436c.c(j(a0Var), str != null).continueWith(executor, new Continuation() {
                    @Override
                    public final Object then(Task task) {
                        return Boolean.valueOf(this.f30423a.t(task));
                    }
                }));
            }
        }
        return Tasks.whenAll(arrayList);
    }

    public void k(String str, List list, CrashlyticsReport.a aVar) {
        qb.g.f().b("SessionReportingCoordinator#finalizeSessionWithNativeEvent");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CrashlyticsReport.d.b bVarA = ((j0) it.next()).a();
            if (bVarA != null) {
                arrayList.add(bVarA);
            }
        }
        this.f30435b.l(str, CrashlyticsReport.d.a().b(Collections.unmodifiableList(arrayList)).a(), aVar);
    }

    public void l(long j10, String str) {
        this.f30435b.k(str, j10);
    }

    public boolean o() {
        return this.f30435b.r();
    }

    public SortedSet r() {
        return this.f30435b.p();
    }

    public void s(String str, long j10) {
        this.f30435b.z(this.f30434a.e(str, j10));
    }

    public void v(Throwable th2, Thread thread, String str, long j10) {
        qb.g.f().i("Persisting fatal event for session " + str);
        u(th2, thread, str, AppMeasurement.CRASH_ORIGIN, j10, true);
    }

    public void w(Throwable th2, Thread thread, String str, long j10) {
        qb.g.f().i("Persisting non-fatal event for session " + str);
        u(th2, thread, str, "error", j10, false);
    }

    public void x(String str, List list, tb.e eVar, tb.o oVar) {
        ApplicationExitInfo applicationExitInfoM = m(str, list);
        if (applicationExitInfoM == null) {
            qb.g.f().i("No relevant ApplicationExitInfo occurred during session: " + str);
            return;
        }
        CrashlyticsReport.e.d dVarC = this.f30434a.c(g(applicationExitInfoM));
        qb.g.f().b("Persisting anr for session " + str);
        this.f30435b.y(f(d(dVarC, eVar, oVar), oVar), str, true);
    }

    public void y() {
        this.f30435b.i();
    }

    public Task z(Executor executor) {
        return A(executor, null);
    }
}
