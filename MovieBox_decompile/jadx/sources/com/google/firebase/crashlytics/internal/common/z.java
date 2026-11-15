package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class z {

    private static final Map f30461g;

    static final String f30462h;

    private final Context f30463a;

    private final g0 f30464b;

    private final a f30465c;

    private final zb.d f30466d;

    private final yb.b f30467e;

    private final qb.j f30468f = qb.j.f69617a;

    static {
        HashMap map = new HashMap();
        f30461g = map;
        map.put("armeabi", 5);
        map.put("armeabi-v7a", 6);
        map.put("arm64-v8a", 9);
        map.put("x86", 0);
        map.put("x86_64", 1);
        f30462h = String.format(Locale.US, "Crashlytics Android SDK/%s", "19.3.0");
    }

    public z(Context context, g0 g0Var, a aVar, zb.d dVar, yb.b bVar) {
        this.f30463a = context;
        this.f30464b = g0Var;
        this.f30465c = aVar;
        this.f30466d = dVar;
        this.f30467e = bVar;
    }

    private CrashlyticsReport.e.d.a.c A(CrashlyticsReport.a aVar) {
        return this.f30468f.a(aVar.e(), aVar.d(), aVar.c());
    }

    private CrashlyticsReport.a a(CrashlyticsReport.a aVar) {
        List listUnmodifiableList;
        if (!this.f30467e.b().f30913b.f30922c || this.f30465c.f30314c.size() <= 0) {
            listUnmodifiableList = null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (e eVar : this.f30465c.f30314c) {
                arrayList.add(CrashlyticsReport.a.AbstractC0395a.a().d(eVar.c()).b(eVar.a()).c(eVar.b()).a());
            }
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return CrashlyticsReport.a.a().c(aVar.c()).e(aVar.e()).g(aVar.g()).i(aVar.i()).d(aVar.d()).f(aVar.f()).h(aVar.h()).j(aVar.j()).b(listUnmodifiableList).a();
    }

    private CrashlyticsReport.b b() {
        return CrashlyticsReport.b().l("19.3.0").h(this.f30465c.f30312a).i(this.f30464b.a().c()).g(this.f30464b.a().e()).f(this.f30464b.a().d()).d(this.f30465c.f30317f).e(this.f30465c.f30318g).k(4);
    }

    private static long f(long j10) {
        if (j10 > 0) {
            return j10;
        }
        return 0L;
    }

    private static int g() {
        Integer num;
        String str = Build.CPU_ABI;
        if (TextUtils.isEmpty(str) || (num = (Integer) f30461g.get(str.toLowerCase(Locale.US))) == null) {
            return 7;
        }
        return num.intValue();
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0399a h() {
        return CrashlyticsReport.e.d.a.b.AbstractC0399a.a().b(0L).d(0L).c(this.f30465c.f30316e).e(this.f30465c.f30313b).a();
    }

    private List i() {
        return Collections.singletonList(h());
    }

    private CrashlyticsReport.e.d.a j(int i10, CrashlyticsReport.a aVar) {
        return CrashlyticsReport.e.d.a.a().c(Boolean.valueOf(aVar.c() != 100)).d(A(aVar)).h(i10).f(o(aVar)).a();
    }

    private CrashlyticsReport.e.d.a k(int i10, zb.e eVar, Thread thread, int i11, int i12, boolean z10) {
        Boolean boolValueOf;
        CrashlyticsReport.e.d.a.c cVarE = this.f30468f.e(this.f30463a);
        if (cVarE.b() > 0) {
            boolValueOf = Boolean.valueOf(cVarE.b() != 100);
        } else {
            boolValueOf = null;
        }
        return CrashlyticsReport.e.d.a.a().c(boolValueOf).d(cVarE).b(this.f30468f.d(this.f30463a)).h(i10).f(p(eVar, thread, i11, i12, z10)).a();
    }

    private CrashlyticsReport.e.d.c l(int i10) {
        d dVarA = d.a(this.f30463a);
        Float fB = dVarA.b();
        Double dValueOf = fB != null ? Double.valueOf(fB.doubleValue()) : null;
        int iC = dVarA.c();
        boolean zN = CommonUtils.n(this.f30463a);
        return CrashlyticsReport.e.d.c.a().b(dValueOf).c(iC).f(zN).e(i10).g(f(CommonUtils.b(this.f30463a) - CommonUtils.a(this.f30463a))).d(CommonUtils.c(Environment.getDataDirectory().getPath())).a();
    }

    private CrashlyticsReport.e.d.a.b.c m(zb.e eVar, int i10, int i11) {
        return n(eVar, i10, i11, 0);
    }

    private CrashlyticsReport.e.d.a.b.c n(zb.e eVar, int i10, int i11, int i12) {
        String str = eVar.f76764b;
        String str2 = eVar.f76763a;
        StackTraceElement[] stackTraceElementArr = eVar.f76765c;
        int i13 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        zb.e eVar2 = eVar.f76766d;
        if (i12 >= i11) {
            zb.e eVar3 = eVar2;
            while (eVar3 != null) {
                eVar3 = eVar3.f76766d;
                i13++;
            }
        }
        CrashlyticsReport.e.d.a.b.c.AbstractC0402a abstractC0402aD = CrashlyticsReport.e.d.a.b.c.a().f(str).e(str2).c(r(stackTraceElementArr, i10)).d(i13);
        if (eVar2 != null && i13 == 0) {
            abstractC0402aD.b(n(eVar2, i10, i11, i12 + 1));
        }
        return abstractC0402aD.a();
    }

    private CrashlyticsReport.e.d.a.b o(CrashlyticsReport.a aVar) {
        return CrashlyticsReport.e.d.a.b.a().b(aVar).e(w()).c(i()).a();
    }

    private CrashlyticsReport.e.d.a.b p(zb.e eVar, Thread thread, int i10, int i11, boolean z10) {
        return CrashlyticsReport.e.d.a.b.a().f(z(eVar, thread, i10, z10)).d(m(eVar, i10, i11)).e(w()).c(i()).a();
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b q(StackTraceElement stackTraceElement, CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.AbstractC0408a abstractC0408a) {
        long lineNumber = 0;
        long jMax = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
        String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            lineNumber = stackTraceElement.getLineNumber();
        }
        return abstractC0408a.e(jMax).f(str).b(fileName).d(lineNumber).a();
    }

    private List r(StackTraceElement[] stackTraceElementArr, int i10) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList.add(q(stackTraceElement, CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.a().c(i10)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private CrashlyticsReport.e.a s() {
        return CrashlyticsReport.e.a.a().e(this.f30464b.f()).g(this.f30465c.f30317f).d(this.f30465c.f30318g).f(this.f30464b.a().c()).b(this.f30465c.f30319h.d()).c(this.f30465c.f30319h.e()).a();
    }

    private CrashlyticsReport.e t(String str, long j10) {
        return CrashlyticsReport.e.a().m(j10).j(str).h(f30462h).b(s()).l(v()).e(u()).i(3).a();
    }

    private CrashlyticsReport.e.c u() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int iG = g();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        long jB = CommonUtils.b(this.f30463a);
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        boolean zW = CommonUtils.w();
        int iL = CommonUtils.l();
        String str = Build.MANUFACTURER;
        return CrashlyticsReport.e.c.a().b(iG).f(Build.MODEL).c(iAvailableProcessors).h(jB).d(blockCount).i(zW).j(iL).e(str).g(Build.PRODUCT).a();
    }

    private CrashlyticsReport.e.AbstractC0412e v() {
        return CrashlyticsReport.e.AbstractC0412e.a().d(3).e(Build.VERSION.RELEASE).b(Build.VERSION.CODENAME).c(CommonUtils.x()).a();
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0403d w() {
        return CrashlyticsReport.e.d.a.b.AbstractC0403d.a().d("0").c("0").b(0L).a();
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0405e x(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return y(thread, stackTraceElementArr, 0);
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0405e y(Thread thread, StackTraceElement[] stackTraceElementArr, int i10) {
        return CrashlyticsReport.e.d.a.b.AbstractC0405e.a().d(thread.getName()).c(i10).b(r(stackTraceElementArr, i10)).a();
    }

    private List z(zb.e eVar, Thread thread, int i10, boolean z10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(y(thread, eVar.f76765c, i10));
        if (z10) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(x(key, this.f30466d.a(entry.getValue())));
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public CrashlyticsReport.e.d c(CrashlyticsReport.a aVar) {
        int i10 = this.f30463a.getResources().getConfiguration().orientation;
        return CrashlyticsReport.e.d.a().g("anr").f(aVar.i()).b(j(i10, a(aVar))).c(l(i10)).a();
    }

    public CrashlyticsReport.e.d d(Throwable th2, Thread thread, String str, long j10, int i10, int i11, boolean z10) {
        int i12 = this.f30463a.getResources().getConfiguration().orientation;
        return CrashlyticsReport.e.d.a().g(str).f(j10).b(k(i12, zb.e.a(th2, this.f30466d), thread, i10, i11, z10)).c(l(i12)).a();
    }

    public CrashlyticsReport e(String str, long j10) {
        return b().m(t(str, j10)).a();
    }
}
