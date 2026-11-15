package defpackage;

import androidx.media3.common.C;

public final class vke {
    public boolean c;
    public boolean d;
    public boolean e;
    public final fch a = new fch(0);
    public long f = C.TIME_UNSET;
    public long g = C.TIME_UNSET;
    public long h = C.TIME_UNSET;
    public final u4h b = new u4h();

    public vke(int i) {
    }

    public final int a(d9e d9eVar, y9e y9eVar, int i) {
        if (i <= 0) {
            e(d9eVar);
            return 0;
        }
        boolean z = this.e;
        long j = C.TIME_UNSET;
        if (!z) {
            long jZzd = d9eVar.zzd();
            int iMin = (int) Math.min(112800L, jZzd);
            long j2 = jZzd - ((long) iMin);
            if (d9eVar.zzf() == j2) {
                u4h u4hVar = this.b;
                u4hVar.i(iMin);
                d9eVar.zzj();
                d9eVar.i(u4hVar.n(), 0, iMin);
                int iW = u4hVar.w();
                int iX = u4hVar.x();
                for (int i2 = iX - 188; i2 >= iW; i2--) {
                    byte[] bArrN = u4hVar.n();
                    int i3 = 0;
                    for (int i4 = -4; i4 <= 4; i4++) {
                        int i5 = (i4 * 188) + i2;
                        if (i5 >= iW && i5 < iX && bArrN[i5] == 71) {
                            i3++;
                            if (i3 == 5) {
                                long jB = ele.b(u4hVar, i2, i);
                                if (jB == C.TIME_UNSET) {
                                    break;
                                }
                                j = jB;
                                break;
                            }
                        } else {
                            i3 = 0;
                        }
                    }
                }
                this.g = j;
                this.e = true;
                return 0;
            }
            y9eVar.a = j2;
        } else {
            if (this.g == C.TIME_UNSET) {
                e(d9eVar);
                return 0;
            }
            if (this.d) {
                long j3 = this.f;
                if (j3 == C.TIME_UNSET) {
                    e(d9eVar);
                    return 0;
                }
                fch fchVar = this.a;
                this.h = fchVar.c(this.g) - fchVar.b(j3);
                e(d9eVar);
                return 0;
            }
            int iMin2 = (int) Math.min(112800L, d9eVar.zzd());
            if (d9eVar.zzf() == 0) {
                u4h u4hVar2 = this.b;
                u4hVar2.i(iMin2);
                d9eVar.zzj();
                d9eVar.i(u4hVar2.n(), 0, iMin2);
                int iX2 = u4hVar2.x();
                for (int iW2 = u4hVar2.w(); iW2 < iX2; iW2++) {
                    if (u4hVar2.n()[iW2] == 71) {
                        long jB2 = ele.b(u4hVar2, iW2, i);
                        if (jB2 != C.TIME_UNSET) {
                            j = jB2;
                            break;
                        }
                    }
                }
                this.f = j;
                this.d = true;
                return 0;
            }
            y9eVar.a = 0L;
        }
        return 1;
    }

    public final long b() {
        return this.h;
    }

    public final fch c() {
        return this.a;
    }

    public final boolean d() {
        return this.c;
    }

    public final int e(d9e d9eVar) {
        byte[] bArr = kfh.c;
        int length = bArr.length;
        this.b.j(bArr, 0);
        this.c = true;
        d9eVar.zzj();
        return 0;
    }
}
