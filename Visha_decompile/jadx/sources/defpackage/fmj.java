package defpackage;

import androidx.media3.common.C;

public final class fmj implements zmj, ymj {
    public final zmj b;
    public ymj c;
    public emj[] d = new emj[0];
    public long e = 0;
    public long f;

    public fmj(zmj zmjVar, boolean z, long j, long j2) {
        this.b = zmjVar;
        this.f = j2;
    }

    public static long k(long j, long j2, long j3) {
        long jMax = Math.max(j, j2);
        return j3 != Long.MIN_VALUE ? Math.min(jMax, j3) : jMax;
    }

    @Override
    public final void a(long j) {
        this.b.a(j);
    }

    @Override
    public final boolean b(z7j z7jVar) {
        return this.b.b(z7jVar);
    }

    @Override
    public final long c(long j) {
        this.e = C.TIME_UNSET;
        for (emj emjVar : this.d) {
            if (emjVar != null) {
                emjVar.c();
            }
        }
        return k(this.b.c(j), 0L, this.f);
    }

    @Override
    public final void d(ymj ymjVar, long j) {
        this.c = ymjVar;
        this.b.d(this, j);
    }

    @Override
    public final void e(long j, boolean z) {
        this.b.e(j, false);
    }

    @Override
    public final void f(zmj zmjVar) {
        ymj ymjVar = this.c;
        ymjVar.getClass();
        ymjVar.f(this);
    }

    @Override
    public final long g(long j, kaj kajVar) {
        if (j == 0) {
            return 0L;
        }
        long j2 = kajVar.a;
        int i = kfh.a;
        long jMax = Math.max(0L, Math.min(j2, j));
        long j3 = kajVar.b;
        long j4 = this.f;
        long jMax2 = Math.max(0L, Math.min(j3, j4 == Long.MIN_VALUE ? Long.MAX_VALUE : j4 - j));
        if (jMax != j2 || jMax2 != j3) {
            kajVar = new kaj(jMax, jMax2);
        }
        return this.b.g(j, kajVar);
    }

    @Override
    public final void h(apj apjVar) {
        ymj ymjVar = this.c;
        ymjVar.getClass();
        ymjVar.h(this);
    }

    public final void i(long j, long j2) {
        this.f = j2;
    }

    public final boolean j() {
        return this.e != C.TIME_UNSET;
    }

    @Override
    public final long m(tqj[] tqjVarArr, boolean[] zArr, yoj[] yojVarArr, boolean[] zArr2, long j) {
        int length = yojVarArr.length;
        this.d = new emj[length];
        yoj[] yojVarArr2 = new yoj[length];
        int i = 0;
        while (true) {
            yoj yojVar = null;
            if (i >= yojVarArr.length) {
                break;
            }
            emj[] emjVarArr = this.d;
            emj emjVar = (emj) yojVarArr[i];
            emjVarArr[i] = emjVar;
            if (emjVar != null) {
                yojVar = emjVar.a;
            }
            yojVarArr2[i] = yojVar;
            i++;
        }
        long jM = this.b.m(tqjVarArr, zArr, yojVarArr2, zArr2, j);
        long jK = k(jM, j, this.f);
        boolean zJ = j();
        long j2 = C.TIME_UNSET;
        if (zJ) {
            if (jM < j) {
                j2 = jK;
                break;
            }
            if (jM != 0) {
                for (tqj tqjVar : tqjVarArr) {
                    if (tqjVar != null) {
                        erj erjVarZzf = tqjVar.zzf();
                        if (!bue.f(erjVarZzf.o, erjVarZzf.k)) {
                            j2 = jK;
                            break;
                        }
                    }
                }
            }
        }
        this.e = j2;
        for (int i2 = 0; i2 < yojVarArr.length; i2++) {
            yoj yojVar2 = yojVarArr2[i2];
            if (yojVar2 == null) {
                this.d[i2] = null;
            } else {
                emj[] emjVarArr2 = this.d;
                emj emjVar2 = emjVarArr2[i2];
                if (emjVar2 == null || emjVar2.a != yojVar2) {
                    emjVarArr2[i2] = new emj(this, yojVar2);
                }
            }
            yojVarArr[i2] = this.d[i2];
        }
        return jK;
    }

    @Override
    public final long zzb() {
        long jZzb = this.b.zzb();
        if (jZzb != Long.MIN_VALUE) {
            long j = this.f;
            if (j == Long.MIN_VALUE || jZzb < j) {
                return jZzb;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public final long zzc() {
        long jZzc = this.b.zzc();
        if (jZzc != Long.MIN_VALUE) {
            long j = this.f;
            if (j == Long.MIN_VALUE || jZzc < j) {
                return jZzc;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public final long zzd() {
        if (!j()) {
            long jZzd = this.b.zzd();
            return jZzd == C.TIME_UNSET ? C.TIME_UNSET : k(jZzd, 0L, this.f);
        }
        long j = this.e;
        this.e = C.TIME_UNSET;
        long jZzd2 = zzd();
        return jZzd2 != C.TIME_UNSET ? jZzd2 : j;
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
