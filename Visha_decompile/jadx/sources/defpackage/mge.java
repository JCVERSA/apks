package defpackage;

public abstract class mge {
    public rae b;
    public f9e c;
    public hge d;
    public long e;
    public long f;
    public long g;
    public int h;
    public int i;
    public long k;
    public boolean l;
    public boolean m;
    public final fge a = new fge();
    public jge j = new jge();

    public abstract long a(u4h u4hVar);

    public void b(boolean z) {
        int i;
        if (z) {
            this.j = new jge();
            this.f = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.h = i;
        this.e = -1L;
        this.g = 0L;
    }

    public abstract boolean c(u4h u4hVar, long j, jge jgeVar);

    public final int d(d9e d9eVar, y9e y9eVar) {
        n7g.b(this.b);
        int i = kfh.a;
        int i2 = this.h;
        if (i2 == 0) {
            while (true) {
                fge fgeVar = this.a;
                if (!fgeVar.e(d9eVar)) {
                    this.h = 3;
                    return -1;
                }
                long jZzf = d9eVar.zzf();
                long j = this.f;
                this.k = jZzf - j;
                if (c(fgeVar.a(), j, this.j)) {
                    this.f = d9eVar.zzf();
                } else {
                    erj erjVar = this.j.a;
                    this.i = erjVar.F;
                    if (!this.m) {
                        this.b.f(erjVar);
                        this.m = true;
                    }
                    hge hgeVar = this.j.b;
                    if (hgeVar != null) {
                        this.d = hgeVar;
                    } else if (d9eVar.zzd() == -1) {
                        this.d = new kge(null);
                    } else {
                        gge ggeVarB = fgeVar.b();
                        this.d = new bge(this, this.f, d9eVar.zzd(), ggeVarB.d + ggeVarB.e, ggeVarB.b, (ggeVarB.a & 4) != 0);
                    }
                    this.h = 2;
                    fgeVar.d();
                }
            }
        } else {
            if (i2 == 1) {
                d9eVar.f((int) this.f);
                this.h = 2;
                return 0;
            }
            if (i2 != 2) {
                return -1;
            }
            long jB = this.d.b(d9eVar);
            if (jB >= 0) {
                y9eVar.a = jB;
                return 1;
            }
            if (jB < -1) {
                h(-(jB + 2));
            }
            if (!this.l) {
                kae kaeVarZze = this.d.zze();
                n7g.b(kaeVarZze);
                this.c.i(kaeVarZze);
                this.b.c(kaeVarZze.zza());
                this.l = true;
            }
            if (this.k <= 0 && !this.a.e(d9eVar)) {
                this.h = 3;
                return -1;
            }
            this.k = 0L;
            u4h u4hVarA = this.a.a();
            long jA = a(u4hVarA);
            if (jA >= 0) {
                long j2 = this.g;
                if (j2 + jA >= this.e) {
                    long jE = e(j2);
                    this.b.d(u4hVarA, u4hVarA.x());
                    this.b.g(jE, 1, u4hVarA.x(), 0, null);
                    this.e = -1L;
                }
            }
            this.g += jA;
        }
        return 0;
    }

    public final long e(long j) {
        return (j * 1000000) / ((long) this.i);
    }

    public final long f(long j) {
        return (((long) this.i) * j) / 1000000;
    }

    public final void g(f9e f9eVar, rae raeVar) {
        this.c = f9eVar;
        this.b = raeVar;
        b(true);
    }

    public void h(long j) {
        this.g = j;
    }

    public final void i(long j, long j2) {
        this.a.c();
        if (j == 0) {
            b(!this.l);
            return;
        }
        if (this.h != 0) {
            long jF = f(j2);
            this.e = jF;
            hge hgeVar = this.d;
            int i = kfh.a;
            hgeVar.a(jF);
            this.h = 2;
        }
    }
}
