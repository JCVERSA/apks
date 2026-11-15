package com.apm.insight.runtime;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.IOOMCallback;
import com.apm.insight.nativecrash.NativeImpl;
import java.io.File;
import java.util.Map;

public final class l {

    private static boolean f19197a = false;

    private static boolean f19198b = false;

    private static boolean f19199c = false;

    private static boolean f19200d = false;

    private static boolean f19201e = false;

    private static c f19202f = new c();

    private static volatile boolean f19203g = false;

    private static boolean f19204h = false;

    public static c a() {
        return f19202f;
    }

    public static boolean b() {
        return f19198b;
    }

    public static boolean c() {
        return f19199c;
    }

    public static boolean d() {
        return f19200d;
    }

    public static boolean e() {
        return f19197a;
    }

    public static void f() {
        if (!f19197a || f19198b) {
            return;
        }
        Context contextG = com.apm.insight.e.g();
        com.apm.insight.g.a aVarA = com.apm.insight.g.a.a();
        aVarA.a(new com.apm.insight.i.b(contextG));
        aVarA.b(new com.apm.insight.g.d(contextG));
    }

    public static void g() {
        if (f19197a) {
            com.apm.insight.b.f.a(com.apm.insight.e.g()).c();
            f19199c = true;
        }
    }

    public static boolean h() {
        if (f19197a && !f19200d) {
            boolean zA = NativeImpl.a(com.apm.insight.e.g());
            f19200d = zA;
            if (!zA) {
                f19201e = true;
            }
        }
        return f19200d;
    }

    public static boolean i() {
        return com.apm.insight.b.c.c();
    }

    public static void j() {
        if (f19197a) {
            com.apm.insight.b.f.a(com.apm.insight.e.g()).d();
            f19199c = false;
        }
    }

    public static void k() {
        NativeImpl.c();
    }

    public static boolean l() {
        return com.apm.insight.g.a.b() || NativeImpl.e();
    }

    public static boolean m() {
        return com.apm.insight.g.a.c() || NativeImpl.e();
    }

    public static boolean n() {
        return com.apm.insight.g.a.b();
    }

    public static boolean o() {
        return f19204h;
    }

    public static void p() {
        f19204h = true;
    }

    static boolean r() {
        f19203g = true;
        return true;
    }

    public static synchronized void a(@NonNull Context context) {
        Application applicationH;
        try {
            if (com.apm.insight.e.h() != null) {
                applicationH = com.apm.insight.e.h();
            } else if (context instanceof Application) {
                applicationH = (Application) context;
                if (applicationH.getBaseContext() == null) {
                    throw new IllegalArgumentException("The Application passed in when init has not been attached, please pass a attachBaseContext as param and call Npth.setApplication(Application) before init.");
                }
            } else {
                try {
                    applicationH = (Application) context.getApplicationContext();
                    if (applicationH == null) {
                        throw new IllegalArgumentException("Can not get the Application instance since a baseContext was passed in when init, please call Npth.setApplication(Application) before init.");
                    }
                    if (applicationH.getBaseContext() != null) {
                        context = applicationH.getBaseContext();
                    }
                } catch (Throwable unused) {
                    throw new IllegalArgumentException("Can not get the Application instance since a baseContext was passed in when init, please call Npth.setApplication(Application) before init.");
                }
            }
            a(applicationH, context);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Deprecated
    public static void b(String str) {
        if (com.apm.insight.e.i().isReportErrorEnable()) {
            com.apm.insight.g.a.c(str);
        }
    }

    public static void c(String str) {
        NativeImpl.b(str);
    }

    public static void d(boolean z10) {
        com.apm.insight.e.d(z10);
    }

    static void e(boolean z10) {
        Context contextG = com.apm.insight.e.g();
        com.apm.insight.runtime.a.f.a();
        j.a();
        int iB = NativeImpl.b();
        NativeImpl.d();
        if (f19201e) {
            com.apm.insight.c.a();
            com.apm.insight.b.a.a("NativeLibraryLoad faild");
        } else if (iB < 0) {
            com.apm.insight.c.a();
            com.apm.insight.b.a.a("createCallbackThread faild");
        }
        com.apm.insight.e.a.a().a(contextG);
        com.apm.insight.c.a();
        com.apm.insight.k.h.a(contextG);
        if (z10) {
            com.apm.insight.b.f.a(contextG).c();
            f19199c = z10;
        }
        com.apm.insight.k.g.a().b();
        NativeImpl.g();
        com.apm.insight.k.j.d();
        NativeImpl.k();
        n.a("afterNpthInitAsync", "noValue");
    }

    public static void c(boolean z10) {
        com.apm.insight.e.c(z10);
    }

    public static void b(com.apm.insight.b.h.a aVar) {
        com.apm.insight.k.e.a(aVar);
    }

    private static boolean c(Context context) {
        try {
            return new File(context.getApplicationInfo().nativeLibraryDir, "libapminsighta.so").exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void b(long j10) {
        NativeImpl.b(j10);
    }

    public static void b(boolean z10) {
        com.apm.insight.e.b(z10);
    }

    private static boolean b(Context context) {
        try {
            return new File(com.apm.insight.l.j.j(context), "npth").exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void b(ICrashCallback iCrashCallback, CrashType crashType) {
        f19202f.b(iCrashCallback, crashType);
    }

    public static void b(IOOMCallback iOOMCallback) {
        f19202f.b(iOOMCallback);
    }

    public static synchronized void a(@NonNull Application application, @NonNull Context context) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (f19197a) {
                return;
            }
            f19197a = true;
            if (context != null && application != null) {
                com.apm.insight.e.a(application, context);
                if (!com.apm.insight.e.u() || (!b(application) && !c(application))) {
                    com.apm.insight.g.a aVarA = com.apm.insight.g.a.a();
                    aVarA.a(new com.apm.insight.i.b(context));
                    aVarA.b(new com.apm.insight.g.d(context));
                    f19198b = true;
                    NativeImpl.a();
                    boolean zA = NativeImpl.a(context);
                    f19200d = zA;
                    if (!zA) {
                        f19201e = true;
                    }
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        f19203g = true;
                        NativeImpl.i();
                    }
                    m.a().a(new Runnable() {

                        private boolean f19207a = true;

                        @Override
                        public final void run() {
                            if (!l.f19203g) {
                                new Handler(Looper.getMainLooper()).post(new Runnable() {
                                    @Override
                                    public final void run() {
                                        l.r();
                                        NativeImpl.i();
                                    }
                                });
                            }
                            l.e(this.f19207a);
                        }
                    }, 0L);
                    com.apm.insight.a.a((Object) ("Npth.init takes " + (SystemClock.uptimeMillis() - jUptimeMillis) + " ms."));
                    return;
                }
                Log.e("apminsight", "Inner npth checked.");
                return;
            }
            throw new IllegalArgumentException("context or Application must be not null.");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static void a(final String str, final com.apm.insight.b.h.a aVar) {
        m.a().a(new Runnable() {
            @Override
            public final void run() {
                if (com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                    com.apm.insight.b.d.a(str, aVar);
                }
            }
        });
    }

    public static void a(com.apm.insight.b.h.a aVar) {
        h.a(aVar);
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.apm.insight.d.a.a(str);
    }

    public static void a(String str, @Nullable Map<? extends String, ? extends String> map, @Nullable Map<String, String> map2, @Nullable com.apm.insight.b.h.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.apm.insight.d.a.a(str, map, map2, aVar);
    }

    public static void a(String str, @Nullable Map<? extends String, ? extends String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @Nullable com.apm.insight.b.h.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.apm.insight.d.a.a(str, map, map2, map3, aVar);
    }

    @Deprecated
    public static void a(@NonNull Throwable th2) {
        if (com.apm.insight.e.i().isReportErrorEnable()) {
            com.apm.insight.g.a.a(th2);
        }
    }

    public static void a(String str, com.apm.insight.b.i.a aVar, com.apm.insight.b.i.a aVar2) {
        if (TextUtils.isEmpty(str) || !new File(str).exists()) {
            return;
        }
        com.apm.insight.a.a.a().a(str, aVar, aVar2);
    }

    public static void a(long j10) {
        NativeImpl.a(j10);
    }

    public static void a(@NonNull com.apm.insight.b.i.a aVar) {
        com.apm.insight.e.i().setEncryptImpl$22f2d42e(aVar);
    }

    public static void a(boolean z10) {
        com.apm.insight.e.a(z10);
    }

    public static void a(ICrashCallback iCrashCallback, CrashType crashType) {
        f19202f.a(iCrashCallback, crashType);
    }

    public static void a(IOOMCallback iOOMCallback) {
        f19202f.a(iOOMCallback);
    }
}
