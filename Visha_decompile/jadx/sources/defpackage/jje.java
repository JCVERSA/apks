package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.s7;
import com.google.android.gms.internal.ads.zzaz;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

public final class jje implements lje {
    public final u4h a;
    public final String c;
    public final int d;
    public String f;
    public rae g;
    public int i;
    public int j;
    public long k;
    public erj l;
    public int m;
    public int n;
    public int h = 0;
    public long q = C.TIME_UNSET;
    public final AtomicInteger b = new AtomicInteger();
    public int o = -1;
    public int p = -1;
    public final String e = MimeTypes.VIDEO_MP2T;

    public jje(String str, int i, int i2, String str2) {
        this.a = new u4h(new byte[i2]);
        this.c = str;
        this.d = i;
    }

    /* JADX WARN: Code duplicated, block: B:67:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:70:0x01b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x01ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:76:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:77:0x01dc  */
    @Override
    public final void a(u4h u4hVar) throws zzaz {
        int i;
        int i2;
        byte b;
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        byte b2;
        int i7;
        int i8;
        byte b3;
        int i9;
        n7g.b(this.g);
        while (u4hVar.u() > 0) {
            int i10 = this.h;
            if (i10 == 0) {
                while (u4hVar.u() > 0) {
                    int i11 = this.j << 8;
                    this.j = i11;
                    int iG = i11 | u4hVar.G();
                    this.j = iG;
                    int[] iArr = b9e.a;
                    if (iG == 2147385345 || iG == -25230976 || iG == 536864768 || iG == -14745368) {
                        i9 = 1;
                    } else if (iG == 1683496997 || iG == 622876772) {
                        i9 = 2;
                    } else if (iG == 1078008818 || iG == -233094848) {
                        i9 = 3;
                    } else {
                        i9 = (iG == 1908687592 || iG == -398277519) ? 4 : 0;
                    }
                    this.n = i9;
                    if (i9 != 0) {
                        byte[] bArrN = this.a.n();
                        int i12 = this.j;
                        bArrN[0] = (byte) ((i12 >> 24) & 255);
                        bArrN[1] = (byte) ((i12 >> 16) & 255);
                        bArrN[2] = (byte) ((i12 >> 8) & 255);
                        bArrN[3] = (byte) (i12 & 255);
                        this.i = 4;
                        this.j = 0;
                        if (i9 != 3 && i9 != 4) {
                            if (i9 != 1) {
                                this.h = 2;
                                break;
                            } else {
                                this.h = 1;
                                break;
                            }
                        }
                        this.h = 4;
                        break;
                    }
                }
            } else if (i10 == 1) {
                u4h u4hVar2 = this.a;
                if (e(u4hVar, u4hVar2.n(), 18)) {
                    byte[] bArrN2 = u4hVar2.n();
                    if (this.l == null) {
                        erj erjVarC = b9e.c(bArrN2, this.f, this.c, this.d, this.e, null);
                        this.l = erjVarC;
                        this.g.f(erjVarC);
                    }
                    int[] iArr2 = b9e.a;
                    byte b4 = bArrN2[0];
                    if (b4 != -2) {
                        if (b4 == -1) {
                            i7 = (3 & bArrN2[7]) << 12;
                            i8 = (bArrN2[6] & 255) << 4;
                            b3 = bArrN2[9];
                        } else if (b4 != 31) {
                            i = (bArrN2[5] & 3) << 12;
                            i2 = (bArrN2[6] & 255) << 4;
                            b = bArrN2[7];
                        } else {
                            i7 = (3 & bArrN2[6]) << 12;
                            i8 = (bArrN2[7] & 255) << 4;
                            b3 = bArrN2[8];
                        }
                        i3 = (i7 | i8 | ((b3 & 60) >> 2)) + 1;
                        z = true;
                        if (z) {
                            i3 = (i3 * 16) / 14;
                        }
                        this.m = i3;
                        if (b4 != -2) {
                            if (b4 != -1) {
                                i4 = 2;
                                i5 = (bArrN2[4] & 7) << 4;
                                b2 = bArrN2[7];
                            } else if (b4 != 31) {
                                i5 = (bArrN2[4] & 1) << 6;
                                i6 = bArrN2[5] & 252;
                                i4 = 2;
                            } else {
                                i4 = 2;
                                i5 = (bArrN2[5] & 7) << 4;
                                b2 = bArrN2[6];
                            }
                            i6 = b2 & 60;
                        } else {
                            i4 = 2;
                            i5 = (bArrN2[5] & 1) << 6;
                            i6 = bArrN2[4] & 252;
                        }
                        this.k = s7.b(kfh.O(((i5 | (i6 >> i4)) + 1) * 32, this.l.F));
                        u4hVar2.l(0);
                        this.g.d(u4hVar2, 18);
                        this.h = 6;
                    } else {
                        i = (3 & bArrN2[4]) << 12;
                        i2 = (bArrN2[7] & 255) << 4;
                        b = bArrN2[6];
                    }
                    i3 = (i | i2 | ((b & 240) >> 4)) + 1;
                    z = false;
                    if (z) {
                        i3 = (i3 * 16) / 14;
                    }
                    this.m = i3;
                    if (b4 != -2) {
                        if (b4 != -1) {
                            i4 = 2;
                            i5 = (bArrN2[4] & 7) << 4;
                            b2 = bArrN2[7];
                        } else if (b4 != 31) {
                            i5 = (bArrN2[4] & 1) << 6;
                            i6 = bArrN2[5] & 252;
                            i4 = 2;
                        } else {
                            i4 = 2;
                            i5 = (bArrN2[5] & 7) << 4;
                            b2 = bArrN2[6];
                        }
                        i6 = b2 & 60;
                    } else {
                        i4 = 2;
                        i5 = (bArrN2[5] & 1) << 6;
                        i6 = bArrN2[4] & 252;
                    }
                    this.k = s7.b(kfh.O(((i5 | (i6 >> i4)) + 1) * 32, this.l.F));
                    u4hVar2.l(0);
                    this.g.d(u4hVar2, 18);
                    this.h = 6;
                }
            } else if (i10 != 2) {
                if (i10 == 3) {
                    u4h u4hVar3 = this.a;
                    if (e(u4hVar, u4hVar3.n(), this.o)) {
                        u8e u8eVarD = b9e.d(u4hVar3.n());
                        d(u8eVarD);
                        this.m = u8eVarD.d;
                        long j = u8eVarD.e;
                        this.k = j != C.TIME_UNSET ? j : 0L;
                        u4hVar3.l(0);
                        this.g.d(u4hVar3, this.o);
                        this.h = 6;
                    }
                } else if (i10 == 4) {
                    u4h u4hVar4 = this.a;
                    if (e(u4hVar, u4hVar4.n(), 6)) {
                        int iB = b9e.b(u4hVar4.n());
                        this.p = iB;
                        int i13 = this.i;
                        if (i13 > iB) {
                            int i14 = i13 - iB;
                            this.i = i13 - i14;
                            u4hVar.l(u4hVar.w() - i14);
                        }
                        this.h = 5;
                    }
                } else if (i10 != 5) {
                    int iMin = Math.min(u4hVar.u(), this.m - this.i);
                    this.g.d(u4hVar, iMin);
                    int i15 = this.i + iMin;
                    this.i = i15;
                    if (i15 == this.m) {
                        n7g.f(this.q != C.TIME_UNSET);
                        this.g.g(this.q, this.n == 4 ? 0 : 1, this.m, 0, null);
                        this.q += this.k;
                        this.h = 0;
                    }
                } else {
                    u4h u4hVar5 = this.a;
                    if (e(u4hVar, u4hVar5.n(), this.p)) {
                        u8e u8eVarE = b9e.e(u4hVar5.n(), this.b);
                        if (this.n == 3) {
                            d(u8eVarE);
                        }
                        this.m = u8eVarE.d;
                        long j2 = u8eVarE.e;
                        this.k = j2 != C.TIME_UNSET ? j2 : 0L;
                        u4hVar5.l(0);
                        this.g.d(u4hVar5, this.p);
                        this.h = 6;
                    }
                }
            } else {
                u4h u4hVar6 = this.a;
                if (e(u4hVar, u4hVar6.n(), 7)) {
                    this.o = b9e.a(u4hVar6.n());
                    this.h = 3;
                }
            }
        }
    }

    @Override
    public final void b(long j, int i) {
        this.q = j;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.f = cleVar.b();
        this.g = f9eVar.j(cleVar.a(), 1);
    }

    public final void d(u8e u8eVar) {
        int i;
        int i2 = u8eVar.b;
        if (i2 == -2147483647 || (i = u8eVar.c) == -1) {
            return;
        }
        erj erjVar = this.l;
        if (erjVar != null && i == erjVar.E && i2 == erjVar.F && Objects.equals(u8eVar.a, erjVar.o)) {
            return;
        }
        erj erjVar2 = this.l;
        gpj gpjVar = erjVar2 == null ? new gpj() : erjVar2.b();
        gpjVar.o(this.f);
        gpjVar.e(this.e);
        gpjVar.E(u8eVar.a);
        gpjVar.b(i);
        gpjVar.F(i2);
        gpjVar.s(this.c);
        gpjVar.C(this.d);
        erj erjVarK = gpjVar.K();
        this.l = erjVarK;
        this.g.f(erjVarK);
    }

    public final boolean e(u4h u4hVar, byte[] bArr, int i) {
        int iMin = Math.min(u4hVar.u(), i - this.i);
        u4hVar.h(bArr, this.i, iMin);
        int i2 = this.i + iMin;
        this.i = i2;
        return i2 == i;
    }

    @Override
    public final void zzc(boolean z) {
    }

    @Override
    public final void zze() {
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.q = C.TIME_UNSET;
        this.b.set(0);
    }
}
