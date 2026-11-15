package defpackage;

import android.os.Handler;
import android.os.SystemClock;
import defpackage.k7e;

public final class k7e {
    public final Handler a;
    public final l7e b;

    public k7e(Handler handler, l7e l7eVar) {
        if (l7eVar != null) {
            handler.getClass();
        } else {
            handler = null;
        }
        this.a = handler;
        this.b = l7eVar;
    }

    public static void a(k7e k7eVar, Exception exc) {
        int i = kfh.a;
        k7eVar.b.r(exc);
    }

    public static void b(k7e k7eVar, String str) {
        int i = kfh.a;
        k7eVar.b.zzq(str);
    }

    public static void c(k7e k7eVar, long j, int i) {
        int i2 = kfh.a;
        k7eVar.b.o(j, i);
    }

    public static void d(k7e k7eVar, int i, long j) {
        int i2 = kfh.a;
        k7eVar.b.l(i, j);
    }

    public static void e(k7e k7eVar, zhf zhfVar) {
        int i = kfh.a;
        k7eVar.b.e(zhfVar);
    }

    public static void f(k7e k7eVar, d1j d1jVar) {
        d1jVar.a();
        int i = kfh.a;
        k7eVar.b.g(d1jVar);
    }

    public static void g(k7e k7eVar, erj erjVar, g1j g1jVar) {
        int i = kfh.a;
        k7eVar.b.p(erjVar, g1jVar);
    }

    public static void h(k7e k7eVar, Object obj, long j) {
        int i = kfh.a;
        k7eVar.b.j(obj, j);
    }

    public static void i(k7e k7eVar, d1j d1jVar) {
        int i = kfh.a;
        k7eVar.b.c(d1jVar);
    }

    public static void j(k7e k7eVar, String str, long j, long j2) {
        int i = kfh.a;
        k7eVar.b.i(str, j, j2);
    }

    public final void k(final String str, final long j, final long j2) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.j(this.zza, str, j, j2);
                }
            });
        }
    }

    public final void l(final String str) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.b(this.zza, str);
                }
            });
        }
    }

    public final void m(final d1j d1jVar) {
        d1jVar.a();
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.f(this.zza, d1jVar);
                }
            });
        }
    }

    public final void n(final int i, final long j) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.d(this.zza, i, j);
                }
            });
        }
    }

    public final void o(final d1j d1jVar) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.i(this.zza, d1jVar);
                }
            });
        }
    }

    public final void p(final erj erjVar, final g1j g1jVar) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.g(this.zza, erjVar, g1jVar);
                }
            });
        }
    }

    public final void q(final Object obj) {
        Handler handler = this.a;
        if (handler != null) {
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.h(this.zza, obj, jElapsedRealtime);
                }
            });
        }
    }

    public final void r(final long j, final int i) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.c(this.zza, j, i);
                }
            });
        }
    }

    public final void s(final Exception exc) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.a(this.zza, exc);
                }
            });
        }
    }

    public final void t(final zhf zhfVar) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    k7e.e(this.zza, zhfVar);
                }
            });
        }
    }
}
