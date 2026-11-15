package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;

public final class gmh {
    public final fy0 a;
    public final smg b;
    public final Object c = new Object();
    public volatile int e = 1;
    public volatile long d = 0;

    public gmh(fy0 fy0Var, smg smgVar) {
        this.a = fy0Var;
        this.b = smgVar;
    }

    public final void a() {
        f(2, 3);
    }

    public final void b(boolean z) {
        if (((Boolean) zzbd.zzc().b(cye.dd)).booleanValue()) {
            rmg rmgVarA = this.b.a();
            rmgVarA.b("action", "mbs_state");
            rmgVarA.b("mbs_state", true != z ? "0" : "1");
            rmgVarA.j();
        }
        if (z) {
            f(1, 2);
        } else {
            f(2, 1);
        }
    }

    public final boolean c() {
        boolean z;
        synchronized (this.c) {
            e();
            z = this.e == 3;
        }
        return z;
    }

    public final boolean d() {
        boolean z;
        synchronized (this.c) {
            e();
            z = this.e == 2;
        }
        return z;
    }

    public final void e() {
        long jCurrentTimeMillis = this.a.currentTimeMillis();
        synchronized (this.c) {
            try {
                if (this.e == 3) {
                    if (this.d + ((Long) zzbd.zzc().b(cye.W5)).longValue() <= jCurrentTimeMillis) {
                        this.e = 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(int i, int i2) {
        e();
        Object obj = this.c;
        long jCurrentTimeMillis = this.a.currentTimeMillis();
        synchronized (obj) {
            try {
                if (this.e != i) {
                    return;
                }
                this.e = i2;
                if (this.e == 3) {
                    this.d = jCurrentTimeMillis;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
