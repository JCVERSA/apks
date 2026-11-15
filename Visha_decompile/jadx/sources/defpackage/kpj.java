package defpackage;

import androidx.media3.common.C;

public final class kpj implements zmj, ymj {
    public final zmj b;
    public final long c;
    public ymj d;

    public kpj(zmj zmjVar, long j) {
        this.b = zmjVar;
        this.c = j;
    }

    @Override
    public final void a(long j) {
        this.b.a(j - this.c);
    }

    @Override
    public final boolean b(z7j z7jVar) {
        long j = z7jVar.a;
        long j2 = this.c;
        v7j v7jVarA = z7jVar.a();
        v7jVarA.e(j - j2);
        return this.b.b(v7jVarA.g());
    }

    @Override
    public final long c(long j) {
        long j2 = this.c;
        return this.b.c(j - j2) + j2;
    }

    @Override
    public final void d(ymj ymjVar, long j) {
        this.d = ymjVar;
        this.b.d(this, j - this.c);
    }

    @Override
    public final void e(long j, boolean z) {
        this.b.e(j - this.c, false);
    }

    @Override
    public final void f(zmj zmjVar) {
        ymj ymjVar = this.d;
        ymjVar.getClass();
        ymjVar.f(this);
    }

    @Override
    public final long g(long j, kaj kajVar) {
        long j2 = this.c;
        return this.b.g(j - j2, kajVar) + j2;
    }

    @Override
    public final void h(apj apjVar) {
        ymj ymjVar = this.d;
        ymjVar.getClass();
        ymjVar.h(this);
    }

    public final zmj i() {
        return this.b;
    }

    @Override
    public final long m(tqj[] tqjVarArr, boolean[] zArr, yoj[] yojVarArr, boolean[] zArr2, long j) {
        yoj[] yojVarArr2 = new yoj[yojVarArr.length];
        int i = 0;
        while (true) {
            yoj yojVarC = null;
            if (i >= yojVarArr.length) {
                break;
            }
            epj epjVar = (epj) yojVarArr[i];
            if (epjVar != null) {
                yojVarC = epjVar.c();
            }
            yojVarArr2[i] = yojVarC;
            i++;
        }
        zmj zmjVar = this.b;
        long j2 = this.c;
        long jM = zmjVar.m(tqjVarArr, zArr, yojVarArr2, zArr2, j - j2);
        for (int i2 = 0; i2 < yojVarArr.length; i2++) {
            yoj yojVar = yojVarArr2[i2];
            if (yojVar == null) {
                yojVarArr[i2] = null;
            } else {
                yoj yojVar2 = yojVarArr[i2];
                if (yojVar2 == null || ((epj) yojVar2).c() != yojVar) {
                    yojVarArr[i2] = new epj(yojVar, j2);
                }
            }
        }
        return jM + j2;
    }

    @Override
    public final long zzb() {
        long jZzb = this.b.zzb();
        if (jZzb == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jZzb + this.c;
    }

    @Override
    public final long zzc() {
        long jZzc = this.b.zzc();
        if (jZzc == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jZzc + this.c;
    }

    @Override
    public final long zzd() {
        long jZzd = this.b.zzd();
        return jZzd == C.TIME_UNSET ? C.TIME_UNSET : jZzd + this.c;
    }

    @Override
    public final npj zzg() {
        return this.b.zzg();
    }

    @Override
    public final void zzi() {
        this.b.zzi();
    }

    @Override
    public final boolean zzp() {
        return this.b.zzp();
    }
}
