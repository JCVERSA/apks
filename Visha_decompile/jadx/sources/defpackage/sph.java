package defpackage;

import com.google.android.gms.ads.internal.zzv;

public final class sph {
    public final long a;
    public long c;
    public final pph b = new pph();
    public int d = 0;
    public int e = 0;
    public int f = 0;

    public sph() {
        long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
        this.a = jCurrentTimeMillis;
        this.c = jCurrentTimeMillis;
    }

    public final int a() {
        return this.d;
    }

    public final long b() {
        return this.a;
    }

    public final long c() {
        return this.c;
    }

    public final pph d() {
        pph pphVar = this.b;
        pph pphVarClone = pphVar.clone();
        pphVar.b = false;
        pphVar.c = 0;
        return pphVarClone;
    }

    public final String e() {
        return "Created: " + this.a + " Last accessed: " + this.c + " Accesses: " + this.d + "\nEntries retrieved: Valid: " + this.e + " Stale: " + this.f;
    }

    public final void f() {
        this.c = zzv.zzC().currentTimeMillis();
        this.d++;
    }

    public final void g() {
        this.f++;
        this.b.c++;
    }

    public final void h() {
        this.e++;
        this.b.b = true;
    }
}
