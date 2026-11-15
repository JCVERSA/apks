package defpackage;

import androidx.media3.common.C;

public final class j7e {
    public final e7e a;
    public final v6e b = new v6e();
    public final dbh c = new dbh(10);
    public final dbh d = new dbh(10);
    public final ztg e = new ztg(16);
    public long f = C.TIME_UNSET;
    public zhf g = zhf.d;
    public long h;
    public final c6e i;

    public j7e(c6e c6eVar, e7e e7eVar) {
        this.i = c6eVar;
        this.a = e7eVar;
    }

    public static Object e(dbh dbhVar) {
        n7g.d(dbhVar.a() > 0);
        while (dbhVar.a() > 1) {
            dbhVar.b();
        }
        Object objB = dbhVar.b();
        objB.getClass();
        return objB;
    }

    public final void a() {
        this.e.c();
        this.f = C.TIME_UNSET;
        dbh dbhVar = this.d;
        if (dbhVar.a() > 0) {
            this.h = ((Long) e(dbhVar)).longValue();
        }
        dbh dbhVar2 = this.c;
        if (dbhVar2.a() > 0) {
            dbhVar2.d(0L, (zhf) e(dbhVar2));
        }
    }

    public final void b(int i, long j) {
        if (this.e.d()) {
            this.a.f(i);
            this.h = j;
        } else {
            dbh dbhVar = this.d;
            long j2 = this.f;
            dbhVar.d(j2 == C.TIME_UNSET ? 0L : j2 + 1, Long.valueOf(j));
        }
    }

    public final void c(int i, int i2) {
        long j = this.f;
        this.c.d(j == C.TIME_UNSET ? 0L : j + 1, new zhf(i, i2, 1.0f));
    }

    public final void d(long j, long j2) {
        while (true) {
            ztg ztgVar = this.e;
            if (ztgVar.d()) {
                return;
            }
            dbh dbhVar = this.d;
            long jA = ztgVar.a();
            Long l = (Long) dbhVar.c(jA);
            if (l != null && l.longValue() != this.h) {
                this.h = l.longValue();
                this.a.f(2);
            }
            e7e e7eVar = this.a;
            long j3 = this.h;
            v6e v6eVar = this.b;
            int iA = e7eVar.a(jA, j, j2, j3, false, false, v6eVar);
            if (iA == 0 || iA == 1) {
                long jB = ztgVar.b();
                zhf zhfVar = (zhf) this.c.c(jB);
                if (zhfVar != null && !zhfVar.equals(zhf.d) && !zhfVar.equals(this.g)) {
                    this.g = zhfVar;
                    this.i.a(zhfVar);
                }
                this.i.b(iA == 0 ? System.nanoTime() : v6eVar.d(), jB, e7eVar.n());
            } else {
                if (iA == 2 || iA == 3) {
                    ztgVar.b();
                    ubc.a(this.i.b.c.remove());
                    throw null;
                }
                if (iA != 4) {
                    return;
                }
            }
        }
    }
}
