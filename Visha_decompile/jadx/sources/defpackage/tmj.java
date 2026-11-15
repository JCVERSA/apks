package defpackage;

import androidx.media3.common.C;

public final class tmj implements zmj, ymj {
    public final bnj b;
    public final long c;
    public knj d;
    public zmj e;
    public ymj f;
    public long g = C.TIME_UNSET;
    public final nrj h;

    public tmj(bnj bnjVar, nrj nrjVar, long j) {
        this.b = bnjVar;
        this.h = nrjVar;
        this.c = j;
    }

    @Override
    public final void a(long j) {
        zmj zmjVar = this.e;
        int i = kfh.a;
        zmjVar.a(j);
    }

    @Override
    public final boolean b(z7j z7jVar) {
        zmj zmjVar = this.e;
        return zmjVar != null && zmjVar.b(z7jVar);
    }

    @Override
    public final long c(long j) {
        zmj zmjVar = this.e;
        int i = kfh.a;
        return zmjVar.c(j);
    }

    @Override
    public final void d(ymj ymjVar, long j) {
        this.f = ymjVar;
        zmj zmjVar = this.e;
        if (zmjVar != null) {
            zmjVar.d(this, p(this.c));
        }
    }

    @Override
    public final void e(long j, boolean z) {
        zmj zmjVar = this.e;
        int i = kfh.a;
        zmjVar.e(j, false);
    }

    @Override
    public final void f(zmj zmjVar) {
        ymj ymjVar = this.f;
        int i = kfh.a;
        ymjVar.f(this);
    }

    @Override
    public final long g(long j, kaj kajVar) {
        zmj zmjVar = this.e;
        int i = kfh.a;
        return zmjVar.g(j, kajVar);
    }

    @Override
    public final void h(apj apjVar) {
        ymj ymjVar = this.f;
        int i = kfh.a;
        ymjVar.h(this);
    }

    public final long i() {
        return this.g;
    }

    public final long j() {
        return this.c;
    }

    public final void k(bnj bnjVar) {
        long jP = p(this.c);
        knj knjVar = this.d;
        knjVar.getClass();
        zmj zmjVarB = knjVar.b(bnjVar, this.h, jP);
        this.e = zmjVarB;
        if (this.f != null) {
            zmjVarB.d(this, jP);
        }
    }

    public final void l(long j) {
        this.g = j;
    }

    @Override
    public final long m(tqj[] tqjVarArr, boolean[] zArr, yoj[] yojVarArr, boolean[] zArr2, long j) {
        long j2 = this.g;
        long j3 = (j2 == C.TIME_UNSET || j != this.c) ? j : j2;
        this.g = C.TIME_UNSET;
        zmj zmjVar = this.e;
        int i = kfh.a;
        return zmjVar.m(tqjVarArr, zArr, yojVarArr, zArr2, j3);
    }

    public final void n() {
        zmj zmjVar = this.e;
        if (zmjVar != null) {
            knj knjVar = this.d;
            knjVar.getClass();
            knjVar.h(zmjVar);
        }
    }

    public final void o(knj knjVar) {
        n7g.f(this.d == null);
        this.d = knjVar;
    }

    public final long p(long j) {
        long j2 = this.g;
        return j2 != C.TIME_UNSET ? j2 : j;
    }

    @Override
    public final long zzb() {
        zmj zmjVar = this.e;
        int i = kfh.a;
        return zmjVar.zzb();
    }

    @Override
    public final long zzc() {
        zmj zmjVar = this.e;
        int i = kfh.a;
        return zmjVar.zzc();
    }

    @Override
    public final long zzd() {
        zmj zmjVar = this.e;
        int i = kfh.a;
        return zmjVar.zzd();
    }

    @Override
    public final npj zzg() {
        zmj zmjVar = this.e;
        int i = kfh.a;
        return zmjVar.zzg();
    }

    @Override
    public final void zzi() {
        zmj zmjVar = this.e;
        if (zmjVar != null) {
            zmjVar.zzi();
            return;
        }
        knj knjVar = this.d;
        if (knjVar != null) {
            knjVar.zzz();
        }
    }

    @Override
    public final boolean zzp() {
        zmj zmjVar = this.e;
        return zmjVar != null && zmjVar.zzp();
    }
}
