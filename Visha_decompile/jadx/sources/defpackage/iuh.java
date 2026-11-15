package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;

public final class iuh {
    public final Object a;
    public final long b;
    public final fy0 c;
    public final long d = ((Long) zzbd.zzc().b(cye.D)).longValue() * 1000;

    public iuh(Object obj, fy0 fy0Var) {
        this.a = obj;
        this.c = fy0Var;
        this.b = fy0Var.currentTimeMillis();
    }

    public final long a() {
        return (this.d + Math.min(Math.max(((Long) zzbd.zzc().b(cye.y)).longValue(), -900000L), 10000L)) - (this.c.currentTimeMillis() - this.b);
    }

    public final long b() {
        return this.b;
    }

    public final Object c() {
        return this.a;
    }

    public final boolean d() {
        return this.c.currentTimeMillis() >= this.b + this.d;
    }
}
