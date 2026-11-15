package defpackage;

import android.os.Handler;
import defpackage.chj;

public final class chj {
    public final Handler a;
    public final dhj b;

    public chj(Handler handler, dhj dhjVar) {
        this.a = dhjVar == null ? null : handler;
        this.b = dhjVar;
    }

    public static void a(chj chjVar, d1j d1jVar) {
        int i = kfh.a;
        chjVar.b.m(d1jVar);
    }

    public static void b(chj chjVar, String str) {
        int i = kfh.a;
        chjVar.b.zzc(str);
    }

    public static void c(chj chjVar, long j) {
        int i = kfh.a;
        chjVar.b.a(j);
    }

    public static void d(chj chjVar, ehj ehjVar) {
        int i = kfh.a;
        chjVar.b.s(ehjVar);
    }

    public static void e(chj chjVar, int i, long j, long j2) {
        int i2 = kfh.a;
        chjVar.b.f(i, j, j2);
    }

    public static void f(chj chjVar, Exception exc) {
        int i = kfh.a;
        chjVar.b.n(exc);
    }

    public static void g(chj chjVar, Exception exc) {
        int i = kfh.a;
        chjVar.b.b(exc);
    }

    public static void h(chj chjVar, erj erjVar, g1j g1jVar) {
        int i = kfh.a;
        chjVar.b.h(erjVar, g1jVar);
    }

    public static void i(chj chjVar, boolean z) {
        int i = kfh.a;
        chjVar.b.zzn(z);
    }

    public static void j(chj chjVar, ehj ehjVar) {
        int i = kfh.a;
        chjVar.b.d(ehjVar);
    }

    public static void k(chj chjVar, String str, long j, long j2) {
        int i = kfh.a;
        chjVar.b.q(str, j, j2);
    }

    public static void l(chj chjVar, d1j d1jVar) {
        d1jVar.a();
        int i = kfh.a;
        chjVar.b.k(d1jVar);
    }

    public final void m(final Exception exc) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.g(this.zza, exc);
                }
            });
        }
    }

    public final void n(final Exception exc) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.f(this.zza, exc);
                }
            });
        }
    }

    public final void o(final ehj ehjVar) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.j(this.zza, ehjVar);
                }
            });
        }
    }

    public final void p(final ehj ehjVar) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.d(this.zza, ehjVar);
                }
            });
        }
    }

    public final void q(final String str, final long j, final long j2) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.k(this.zza, str, j, j2);
                }
            });
        }
    }

    public final void r(final String str) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.b(this.zza, str);
                }
            });
        }
    }

    public final void s(final d1j d1jVar) {
        d1jVar.a();
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.l(this.zza, d1jVar);
                }
            });
        }
    }

    public final void t(final d1j d1jVar) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.a(this.zza, d1jVar);
                }
            });
        }
    }

    public final void u(final erj erjVar, final g1j g1jVar) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.h(this.zza, erjVar, g1jVar);
                }
            });
        }
    }

    public final void v(final long j) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.c(this.zza, j);
                }
            });
        }
    }

    public final void w(final boolean z) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.i(this.zza, z);
                }
            });
        }
    }

    public final void x(final int i, final long j, final long j2) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    chj.e(this.zza, i, j, j2);
                }
            });
        }
    }
}
