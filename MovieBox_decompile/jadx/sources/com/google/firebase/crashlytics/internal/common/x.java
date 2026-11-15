package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class x {

    private final Context f30441a;

    private final com.google.firebase.f f30442b;

    private final d0 f30443c;

    private y f30446f;

    private y f30447g;

    private boolean f30448h;

    private n f30449i;

    private final g0 f30450j;

    private final xb.g f30451k;

    public final sb.b f30452l;

    private final rb.a f30453m;

    private final k f30454n;

    private final qb.a f30455o;

    private final qb.l f30456p;

    private final CrashlyticsWorkers f30457q;

    private final long f30445e = System.currentTimeMillis();

    private final l0 f30444d = new l0();

    public x(com.google.firebase.f fVar, g0 g0Var, qb.a aVar, d0 d0Var, sb.b bVar, rb.a aVar2, xb.g gVar, k kVar, qb.l lVar, CrashlyticsWorkers crashlyticsWorkers) {
        this.f30442b = fVar;
        this.f30443c = d0Var;
        this.f30441a = fVar.k();
        this.f30450j = g0Var;
        this.f30455o = aVar;
        this.f30452l = bVar;
        this.f30453m = aVar2;
        this.f30451k = gVar;
        this.f30454n = kVar;
        this.f30456p = lVar;
        this.f30457q = crashlyticsWorkers;
    }

    public void A(String str) {
        this.f30449i.Y(str);
    }

    private void i() {
        try {
            this.f30448h = Boolean.TRUE.equals((Boolean) this.f30457q.f30472a.c().submit(new Callable() {
                @Override
                public final Object call() {
                    return this.f30419a.t();
                }
            }).get(3L, TimeUnit.SECONDS));
        } catch (Exception unused) {
            this.f30448h = false;
        }
    }

    public void v(yb.b bVar) {
        CrashlyticsWorkers.c();
        E();
        try {
            try {
                this.f30452l.a(new sb.a() {
                    @Override
                    public final void a(String str) {
                        this.f30430a.B(str);
                    }
                });
                this.f30449i.U();
                if (!bVar.b().f30913b.f30920a) {
                    qb.g.f().b("Collection of crash reports disabled in Crashlytics settings.");
                    throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
                }
                if (!this.f30449i.A(bVar)) {
                    qb.g.f().k("Previous sessions could not be finalized.");
                }
                this.f30449i.Z(bVar.a());
                D();
            } catch (Exception e10) {
                qb.g.f().e("Crashlytics encountered a problem during asynchronous initialization.", e10);
            }
        } catch (Throwable th2) {
            D();
            throw th2;
        }
    }

    private void p(final yb.b bVar) {
        Future<?> futureSubmit = this.f30457q.f30472a.c().submit(new Runnable() {
            @Override
            public final void run() {
                this.f30424a.v(bVar);
            }
        });
        qb.g.f().b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            futureSubmit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            qb.g.f().e("Crashlytics was interrupted during initialization.", e10);
            Thread.currentThread().interrupt();
        } catch (ExecutionException e11) {
            qb.g.f().e("Crashlytics encountered a problem during initialization.", e11);
        } catch (TimeoutException e12) {
            qb.g.f().e("Crashlytics timed out during initialization.", e12);
        }
    }

    public static String q() {
        return "19.3.0";
    }

    static boolean r(String str, boolean z10) {
        if (!z10) {
            qb.g.f().i("Configured not to require a build ID.");
            return true;
        }
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", ".     |  | ");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".   \\ |  | /");
        Log.e("FirebaseCrashlytics", ".    \\    /");
        Log.e("FirebaseCrashlytics", ".     \\  /");
        Log.e("FirebaseCrashlytics", ".      \\/");
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", ".      /\\");
        Log.e("FirebaseCrashlytics", ".     /  \\");
        Log.e("FirebaseCrashlytics", ".    /    \\");
        Log.e("FirebaseCrashlytics", ".   / |  | \\");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".");
        return false;
    }

    public Boolean t() {
        return Boolean.valueOf(this.f30449i.t());
    }

    public void w(long j10, String str) {
        this.f30449i.d0(j10, str);
    }

    public void x(final long j10, final String str) {
        this.f30457q.f30473b.f(new Runnable() {
            @Override
            public final void run() {
                this.f30431a.w(j10, str);
            }
        });
    }

    public void y(Throwable th2) {
        this.f30449i.c0(Thread.currentThread(), th2);
    }

    public void z(String str, String str2) {
        this.f30449i.W(str, str2);
    }

    public void B(final String str) {
        final long jCurrentTimeMillis = System.currentTimeMillis() - this.f30445e;
        this.f30457q.f30472a.f(new Runnable() {
            @Override
            public final void run() {
                this.f30420a.x(jCurrentTimeMillis, str);
            }
        });
    }

    public void C(final Throwable th2) {
        this.f30457q.f30472a.f(new Runnable() {
            @Override
            public final void run() {
                this.f30412a.y(th2);
            }
        });
    }

    void D() {
        CrashlyticsWorkers.c();
        try {
            if (this.f30446f.d()) {
                return;
            }
            qb.g.f().k("Initialization marker file was not properly removed.");
        } catch (Exception e10) {
            qb.g.f().e("Problem encountered deleting Crashlytics initialization marker.", e10);
        }
    }

    void E() {
        CrashlyticsWorkers.c();
        this.f30446f.a();
        qb.g.f().i("Initialization marker file was created.");
    }

    public boolean F(a aVar, yb.b bVar) {
        if (!r(aVar.f30313b, CommonUtils.i(this.f30441a, "com.crashlytics.RequireBuildId", true))) {
            throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
        }
        String strC = new g().c();
        try {
            this.f30447g = new y("crash_marker", this.f30451k);
            this.f30446f = new y("initialization_marker", this.f30451k);
            tb.o oVar = new tb.o(strC, this.f30451k, this.f30457q);
            tb.e eVar = new tb.e(this.f30451k);
            zb.a aVar2 = new zb.a(1024, new zb.c(10));
            this.f30456p.c(oVar);
            this.f30449i = new n(this.f30441a, this.f30450j, this.f30443c, this.f30451k, this.f30447g, aVar, oVar, eVar, w0.i(this.f30441a, this.f30450j, this.f30451k, aVar, eVar, oVar, aVar2, bVar, this.f30444d, this.f30454n, this.f30457q), this.f30455o, this.f30453m, this.f30454n, this.f30457q);
            boolean zM = m();
            i();
            this.f30449i.y(strC, Thread.getDefaultUncaughtExceptionHandler(), bVar);
            if (!zM || !CommonUtils.d(this.f30441a)) {
                qb.g.f().b("Successfully configured exception handler.");
                return true;
            }
            qb.g.f().b("Crashlytics did not finish previous background initialization. Initializing synchronously.");
            p(bVar);
            return false;
        } catch (Exception e10) {
            qb.g.f().e("Crashlytics was not started due to an exception during initialization", e10);
            this.f30449i = null;
            return false;
        }
    }

    public Task G() {
        return this.f30449i.V();
    }

    public void H(Boolean bool) {
        this.f30443c.h(bool);
    }

    public void I(final String str, final String str2) {
        this.f30457q.f30472a.f(new Runnable() {
            @Override
            public final void run() {
                this.f30416a.z(str, str2);
            }
        });
    }

    public void J(final String str) {
        this.f30457q.f30472a.f(new Runnable() {
            @Override
            public final void run() {
                this.f30414a.A(str);
            }
        });
    }

    public Task j() {
        return this.f30449i.n();
    }

    public Task k() {
        return this.f30449i.s();
    }

    public boolean l() {
        return this.f30448h;
    }

    boolean m() {
        return this.f30446f.c();
    }

    public Task o(final yb.b bVar) {
        return this.f30457q.f30472a.f(new Runnable() {
            @Override
            public final void run() {
                this.f30410a.u(bVar);
            }
        });
    }

    public boolean s() {
        return this.f30443c.d();
    }
}
