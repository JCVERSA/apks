package defpackage;

import androidx.core.view.MotionEventCompat;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.material.internal.ViewUtils;
import java.util.Arrays;
import java.util.Collections;

public final class hje implements lje {
    public static final byte[] x = {73, 68, 51};
    public final boolean a;
    public final String d;
    public final int e;
    public final String f;
    public String g;
    public rae h;
    public rae i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public boolean n;
    public int q;
    public boolean r;
    public int t;
    public rae v;
    public long w;
    public final p3h b = new p3h(new byte[7], 7);
    public final u4h c = new u4h(Arrays.copyOf(x, 10));
    public int o = -1;
    public int p = -1;
    public long s = C.TIME_UNSET;
    public long u = C.TIME_UNSET;

    public hje(boolean z, String str, int i, String str2) {
        this.a = z;
        this.d = str;
        this.e = i;
        this.f = str2;
        f();
    }

    public static boolean d(int i) {
        return (i & 65526) == 65520;
    }

    public static final boolean j(byte b, byte b2) {
        return d((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    public static final boolean k(u4h u4hVar, byte[] bArr, int i) {
        if (u4hVar.u() < i) {
            return false;
        }
        u4hVar.h(bArr, 0, i);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:145:0x0245 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:0x0245 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x0245 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:73:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:75:0x020c  */
    /* JADX WARN: Code duplicated, block: B:77:0x0217  */
    /* JADX WARN: Code duplicated, block: B:79:0x021b  */
    /* JADX WARN: Code duplicated, block: B:81:0x021e  */
    /* JADX WARN: Code duplicated, block: B:86:0x022d  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(u4h u4hVar) {
        int i;
        char c;
        int i2;
        int i3;
        int iD;
        byte[] bArrN;
        int iX;
        int i4;
        byte b;
        int i5;
        int i6;
        int i7;
        byte b2;
        int i8 = 0;
        int i9 = 2;
        this.h.getClass();
        int i10 = kfh.a;
        while (u4hVar.u() > 0) {
            int i11 = this.j;
            char c2 = 7;
            if (i11 == 0) {
                byte[] bArrN2 = u4hVar.n();
                int iW = u4hVar.w();
                int iX2 = u4hVar.x();
                while (true) {
                    if (iW < iX2) {
                        int i12 = iW + 1;
                        byte b3 = bArrN2[iW];
                        int i13 = b3 & 255;
                        if (this.l == 512 && j((byte) -1, (byte) i13)) {
                            if (!this.n) {
                                int i14 = iW - 1;
                                u4hVar.l(iW);
                                p3h p3hVar = this.b;
                                if (k(u4hVar, p3hVar.a, 1)) {
                                    p3hVar.l(4);
                                    int iD2 = p3hVar.d(1);
                                    int i15 = this.o;
                                    if (i15 != -1 && iD2 != i15) {
                                        c2 = 7;
                                    } else if (this.p == -1) {
                                        if (k(u4hVar, p3hVar.a, 4)) {
                                            p3hVar.l(14);
                                            iD = p3hVar.d(13);
                                            c2 = 7;
                                            if (iD >= 7) {
                                                bArrN = u4hVar.n();
                                                iX = u4hVar.x();
                                                i4 = i14 + iD;
                                                if (i4 >= iX) {
                                                    b = bArrN[i4];
                                                    if (b == -1) {
                                                        i7 = i4 + 1;
                                                        if (i7 != iX) {
                                                            b2 = bArrN[i7];
                                                            if (j((byte) -1, b2) || ((b2 & 8) >> 3) != iD2) {
                                                            }
                                                        }
                                                    } else if (b == 73 || ((i5 = i4 + 1) != iX && (bArrN[i5] != 68 || ((i6 = i4 + 2) != iX && bArrN[i6] != 51)))) {
                                                    }
                                                }
                                            }
                                        }
                                    } else if (k(u4hVar, p3hVar.a, 1)) {
                                        p3hVar.l(i9);
                                        if (p3hVar.d(4) == this.p) {
                                            u4hVar.l(iW + 1);
                                            if (k(u4hVar, p3hVar.a, 4)) {
                                                p3hVar.l(14);
                                                iD = p3hVar.d(13);
                                                c2 = 7;
                                                if (iD >= 7) {
                                                    bArrN = u4hVar.n();
                                                    iX = u4hVar.x();
                                                    i4 = i14 + iD;
                                                    if (i4 >= iX) {
                                                        b = bArrN[i4];
                                                        if (b == -1) {
                                                            i7 = i4 + 1;
                                                            if (i7 != iX) {
                                                                b2 = bArrN[i7];
                                                                if (j((byte) -1, b2)) {
                                                                }
                                                            }
                                                        } else if (b == 73) {
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            c2 = 7;
                                        }
                                    }
                                } else {
                                    c2 = 7;
                                }
                            }
                            this.q = (b3 & 8) >> 3;
                            this.m = 1 == ((b3 & 1) ^ 1);
                            if (this.n) {
                                g();
                            } else {
                                this.j = 1;
                                this.k = 0;
                            }
                            u4hVar.l(i12);
                            i8 = 0;
                            i9 = 2;
                        } else {
                            c2 = c2;
                        }
                        int i16 = this.l;
                        int i17 = i16 | i13;
                        if (i17 == 329) {
                            i = 2;
                            c = 3;
                            i2 = 0;
                            i3 = ViewUtils.EDGE_TO_EDGE_FLAGS;
                        } else if (i17 == 511) {
                            i = 2;
                            c = 3;
                            i2 = 0;
                            i3 = 512;
                        } else if (i17 == 836) {
                            i = 2;
                            c = 3;
                            i2 = 0;
                            i3 = 1024;
                        } else if (i17 == 1075) {
                            this.j = 2;
                            this.k = 3;
                            this.t = 0;
                            this.c.l(0);
                            u4hVar.l(i12);
                            i9 = 2;
                            i8 = 0;
                        } else if (i16 != 256) {
                            this.l = 256;
                            i8 = 0;
                            i9 = 2;
                        } else {
                            i = 2;
                            c = 3;
                            i2 = 0;
                            i8 = i2;
                            iW = i12;
                            i9 = i;
                        }
                        this.l = i3;
                        i8 = i2;
                        iW = i12;
                        i9 = i;
                    } else {
                        u4hVar.l(iW);
                    }
                }
            } else if (i11 != 1) {
                if (i11 == i9) {
                    u4h u4hVar2 = this.c;
                    if (i(u4hVar, u4hVar2.n(), 10)) {
                        this.i.d(u4hVar2, 10);
                        u4hVar2.l(6);
                        h(this.i, 0L, 10, u4hVar2.F() + 10);
                    }
                } else if (i11 != 3) {
                    int iMin = Math.min(u4hVar.u(), this.t - this.k);
                    this.v.d(u4hVar, iMin);
                    int i18 = this.k + iMin;
                    this.k = i18;
                    if (i18 == this.t) {
                        n7g.f(this.u != C.TIME_UNSET ? 1 : i8);
                        this.v.g(this.u, 1, this.t, 0, null);
                        this.u += this.w;
                        f();
                    }
                } else {
                    int i19 = true != this.m ? 5 : 7;
                    p3h p3hVar2 = this.b;
                    if (i(u4hVar, p3hVar2.a, i19)) {
                        p3hVar2.l(i8);
                        if (this.r) {
                            p3hVar2.n(10);
                        } else {
                            int iD3 = p3hVar2.d(i9) + 1;
                            if (iD3 != i9) {
                                zrg.f("AdtsReader", "Detected audio object type: " + iD3 + ", but assuming AAC LC.");
                            }
                            p3hVar2.n(5);
                            int iD4 = p3hVar2.d(3);
                            int i20 = this.p;
                            byte[] bArr = new byte[i9];
                            bArr[i8] = (byte) (((i20 >> 1) & 7) | 16);
                            bArr[1] = (byte) (((iD4 << 3) & 120) | ((i20 << 7) & 128));
                            n7e n7eVarA = p7e.a(bArr);
                            gpj gpjVar = new gpj();
                            gpjVar.o(this.g);
                            gpjVar.e(this.f);
                            gpjVar.E("audio/mp4a-latm");
                            gpjVar.c(n7eVarA.c);
                            gpjVar.b(n7eVarA.b);
                            gpjVar.F(n7eVarA.a);
                            gpjVar.p(Collections.singletonList(bArr));
                            gpjVar.s(this.d);
                            gpjVar.C(this.e);
                            erj erjVarK = gpjVar.K();
                            this.s = 1024000000 / ((long) erjVarK.F);
                            this.h.f(erjVarK);
                            this.r = true;
                        }
                        p3hVar2.n(4);
                        int iD5 = p3hVar2.d(13);
                        h(this.h, this.s, 0, this.m ? iD5 - 9 : iD5 - 7);
                    }
                }
            } else if (u4hVar.u() != 0) {
                p3h p3hVar3 = this.b;
                p3hVar3.a[i8] = u4hVar.n()[u4hVar.w()];
                p3hVar3.l(i9);
                int iD6 = p3hVar3.d(4);
                int i21 = this.p;
                if (i21 == -1 || iD6 == i21) {
                    if (!this.n) {
                        this.n = true;
                        this.o = this.q;
                        this.p = iD6;
                    }
                    g();
                } else {
                    e();
                }
            }
        }
    }

    @Override
    public final void b(long j, int i) {
        this.u = j;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.g = cleVar.b();
        rae raeVarJ = f9eVar.j(cleVar.a(), 1);
        this.h = raeVarJ;
        this.v = raeVarJ;
        if (!this.a) {
            this.i = new s8e();
            return;
        }
        cleVar.c();
        rae raeVarJ2 = f9eVar.j(cleVar.a(), 5);
        this.i = raeVarJ2;
        gpj gpjVar = new gpj();
        gpjVar.o(cleVar.b());
        gpjVar.e(this.f);
        gpjVar.E(MimeTypes.APPLICATION_ID3);
        raeVarJ2.f(gpjVar.K());
    }

    public final void e() {
        this.n = false;
        f();
    }

    public final void f() {
        this.j = 0;
        this.k = 0;
        this.l = 256;
    }

    public final void g() {
        this.j = 3;
        this.k = 0;
    }

    public final void h(rae raeVar, long j, int i, int i2) {
        this.j = 4;
        this.k = i;
        this.v = raeVar;
        this.w = j;
        this.t = i2;
    }

    public final boolean i(u4h u4hVar, byte[] bArr, int i) {
        int iMin = Math.min(u4hVar.u(), i - this.k);
        u4hVar.h(bArr, this.k, iMin);
        int i2 = this.k + iMin;
        this.k = i2;
        return i2 == i;
    }

    @Override
    public final void zzc(boolean z) {
    }

    @Override
    public final void zze() {
        this.u = C.TIME_UNSET;
        e();
    }
}
