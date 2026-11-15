package defpackage;

import androidx.media3.common.C;

public final class mke {
    public boolean c;
    public boolean d;
    public boolean e;
    public final fch a = new fch(0);
    public long f = C.TIME_UNSET;
    public long g = C.TIME_UNSET;
    public long h = C.TIME_UNSET;
    public final u4h b = new u4h();

    public static long c(u4h u4hVar) {
        int iW = u4hVar.w();
        if (u4hVar.u() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        u4hVar.h(bArr, 0, 9);
        u4hVar.l(iW);
        byte b = bArr[0];
        if ((b & 196) != 68) {
            return C.TIME_UNSET;
        }
        byte b2 = bArr[2];
        if ((b2 & 4) != 4) {
            return C.TIME_UNSET;
        }
        byte b3 = bArr[4];
        if ((b3 & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return C.TIME_UNSET;
        }
        long j = b;
        long j2 = b2;
        long j3 = (248 & j2) >> 3;
        long j4 = (j2 & 3) << 13;
        return j4 | ((bArr[1] & 255) << 20) | ((j & 3) << 28) | (((j & 56) >> 3) << 30) | (j3 << 15) | ((((long) bArr[3]) & 255) << 5) | ((((long) b3) & 248) >> 3);
    }

    public static final int g(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public final int a(d9e d9eVar, y9e y9eVar) {
        boolean z = this.e;
        long j = C.TIME_UNSET;
        if (!z) {
            long jZzd = d9eVar.zzd();
            int iMin = (int) Math.min(20000L, jZzd);
            long j2 = jZzd - ((long) iMin);
            if (d9eVar.zzf() != j2) {
                y9eVar.a = j2;
                return 1;
            }
            u4h u4hVar = this.b;
            u4hVar.i(iMin);
            d9eVar.zzj();
            d9eVar.i(u4hVar.n(), 0, iMin);
            int iW = u4hVar.w();
            for (int iX = u4hVar.x() - 4; iX >= iW; iX--) {
                if (g(u4hVar.n(), iX) == 442) {
                    u4hVar.l(iX + 4);
                    long jC = c(u4hVar);
                    if (jC != C.TIME_UNSET) {
                        j = jC;
                        break;
                    }
                }
            }
            this.g = j;
            this.e = true;
        } else {
            if (this.g == C.TIME_UNSET) {
                f(d9eVar);
                return 0;
            }
            if (this.d) {
                long j3 = this.f;
                if (j3 == C.TIME_UNSET) {
                    f(d9eVar);
                    return 0;
                }
                fch fchVar = this.a;
                this.h = fchVar.c(this.g) - fchVar.b(j3);
                f(d9eVar);
                return 0;
            }
            int iMin2 = (int) Math.min(20000L, d9eVar.zzd());
            if (d9eVar.zzf() != 0) {
                y9eVar.a = 0L;
                return 1;
            }
            u4h u4hVar2 = this.b;
            u4hVar2.i(iMin2);
            d9eVar.zzj();
            d9eVar.i(u4hVar2.n(), 0, iMin2);
            int iX2 = u4hVar2.x();
            for (int iW2 = u4hVar2.w(); iW2 < iX2 - 3; iW2++) {
                if (g(u4hVar2.n(), iW2) == 442) {
                    u4hVar2.l(iW2 + 4);
                    long jC2 = c(u4hVar2);
                    if (jC2 != C.TIME_UNSET) {
                        j = jC2;
                        break;
                    }
                }
            }
            this.f = j;
            this.d = true;
        }
        return 0;
    }

    public final long b() {
        return this.h;
    }

    public final fch d() {
        return this.a;
    }

    public final boolean e() {
        return this.c;
    }

    public final int f(d9e d9eVar) {
        byte[] bArr = kfh.c;
        int length = bArr.length;
        this.b.j(bArr, 0);
        this.c = true;
        d9eVar.zzj();
        return 0;
    }
}
