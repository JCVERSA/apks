package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Collections;

public final class ff0 implements b50 {
    private final jx1 a;
    private String b;
    private a62 c;
    private a d;
    private boolean e;
    private long l;
    private final boolean[] f = new boolean[3];
    private final d41 g = new d41(32);
    private final d41 h = new d41(33);
    private final d41 i = new d41(34);
    private final d41 j = new d41(39);
    private final d41 k = new d41(40);
    private long m = C.TIME_UNSET;
    private final ag1 n = new ag1();

    public static final class a {
        private final a62 a;
        private long b;
        private boolean c;
        private int d;
        private long e;
        private boolean f;
        private boolean g;
        private boolean h;
        private boolean i;
        private boolean j;
        private long k;
        private long l;
        private boolean m;

        public a(a62 a62Var) {
            this.a = a62Var;
        }
    }

    public ff0(jx1 jx1Var) {
        this.a = jx1Var;
    }

    /* JADX WARN: Code duplicated, block: B:179:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:182:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:185:0x0420  */
    /* JADX WARN: Code duplicated, block: B:188:0x045e  */
    /* JADX WARN: Code duplicated, block: B:190:0x0462  */
    /* JADX WARN: Code duplicated, block: B:191:0x0468  */
    /* JADX WARN: Code duplicated, block: B:193:0x046e  */
    /* JADX WARN: Code duplicated, block: B:203:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:205:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:207:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:212:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:214:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:217:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:220:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:222:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:225:0x04dd  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dc  */
    @Override
    public final void a(ag1 ag1Var) {
        int i;
        int i2;
        int i3;
        a aVar;
        int i4;
        boolean z;
        boolean z2;
        char c;
        int i5;
        boolean z3;
        int i6;
        int i7;
        boolean z4 = true;
        if (this.c == null) {
            throw new IllegalStateException();
        }
        int i8 = f92.a;
        while (ag1Var.a() > 0) {
            int iE = ag1Var.e();
            byte[] bArrC = ag1Var.c();
            this.l += (long) ag1Var.a();
            this.c.a(ag1Var.a(), ag1Var);
            for (int iD = ag1Var.d(); iD < iE; iD = i) {
                int iA = e41.a(bArrC, iD, iE, this.f);
                if (iA == iE) {
                    a(bArrC, iD, iE);
                    return;
                }
                int i9 = iA + 3;
                int i10 = (bArrC[i9] & 126) >> (z4 ? 1 : 0);
                int i11 = iA - iD;
                if (i11 > 0) {
                    a(bArrC, iD, iA);
                }
                int i12 = iE - iA;
                long j = this.l - ((long) i12);
                int i13 = i11 < 0 ? -i11 : 0;
                i = i9;
                long j2 = this.m;
                a aVar2 = this.d;
                boolean z5 = this.e;
                if (aVar2.j && aVar2.g) {
                    aVar2.m = aVar2.c;
                    aVar2.j = false;
                } else {
                    if (aVar2.h || aVar2.g) {
                        if (z5 && aVar2.i) {
                            long j3 = aVar2.b;
                            i2 = i13;
                            int i14 = i12 + ((int) (j - j3));
                            long j4 = aVar2.l;
                            if (j4 != C.TIME_UNSET) {
                                aVar2.a.a(j4, aVar2.m ? 1 : 0, (int) (j3 - aVar2.k), i14, null);
                            }
                        } else {
                            i2 = i13;
                        }
                        aVar2.k = aVar2.b;
                        aVar2.l = aVar2.e;
                        aVar2.m = aVar2.c;
                        aVar2.i = z4;
                    }
                    if (this.e) {
                        i3 = i2;
                    } else {
                        i3 = i2;
                        this.g.a(i3);
                        this.h.a(i3);
                        this.i.a(i3);
                        if (!this.g.a() && this.h.a() && this.i.a()) {
                            a62 a62Var = this.c;
                            String str = this.b;
                            d41 d41Var = this.g;
                            d41 d41Var2 = this.h;
                            iE = iE;
                            d41 d41Var3 = this.i;
                            bArrC = bArrC;
                            int i15 = d41Var.e;
                            i = i;
                            byte[] bArr = new byte[d41Var2.e + i15 + d41Var3.e];
                            i12 = i12;
                            System.arraycopy(d41Var.d, 0, bArr, 0, i15);
                            i10 = i10;
                            System.arraycopy(d41Var2.d, 0, bArr, d41Var.e, d41Var2.e);
                            System.arraycopy(d41Var3.d, 0, bArr, d41Var.e + d41Var2.e, d41Var3.e);
                            bg1 bg1Var = new bg1(d41Var2.d, 0, d41Var2.e);
                            bg1Var.d(44);
                            int iB = bg1Var.b(3);
                            bg1Var.f();
                            int iB2 = bg1Var.b(2);
                            boolean zC = bg1Var.c();
                            int iB3 = bg1Var.b(5);
                            int i16 = 0;
                            int i17 = 0;
                            for (int i18 = 32; i16 < i18; i18 = 32) {
                                if (bg1Var.c()) {
                                    i7 = 1;
                                    i17 |= 1 << i16;
                                } else {
                                    i7 = 1;
                                }
                                i16 += i7;
                            }
                            int[] iArr = new int[6];
                            for (int i19 = 0; i19 < 6; i19++) {
                                iArr[i19] = bg1Var.b(8);
                            }
                            int iB4 = bg1Var.b(8);
                            int i20 = 0;
                            for (int i21 = 0; i21 < iB; i21++) {
                                if (bg1Var.c()) {
                                    i20 += 89;
                                }
                                if (bg1Var.c()) {
                                    i20 += 8;
                                }
                            }
                            bg1Var.d(i20);
                            if (iB > 0) {
                                bg1Var.d((8 - iB) * 2);
                            }
                            bg1Var.e();
                            int iE2 = bg1Var.e();
                            if (iE2 == 3) {
                                bg1Var.f();
                            }
                            int iE3 = bg1Var.e();
                            int iE4 = bg1Var.e();
                            if (bg1Var.c()) {
                                int iE5 = bg1Var.e();
                                int iE6 = bg1Var.e();
                                int iE7 = bg1Var.e();
                                int iE8 = bg1Var.e();
                                iE3 -= (iE5 + iE6) * ((iE2 == 1 || iE2 == 2) ? 2 : 1);
                                iE4 -= (iE7 + iE8) * (iE2 == 1 ? 2 : 1);
                            }
                            bg1Var.e();
                            bg1Var.e();
                            int iE9 = bg1Var.e();
                            for (int i22 = bg1Var.c() ? 0 : iB; i22 <= iB; i22++) {
                                bg1Var.e();
                                bg1Var.e();
                                bg1Var.e();
                            }
                            bg1Var.e();
                            bg1Var.e();
                            bg1Var.e();
                            bg1Var.e();
                            bg1Var.e();
                            bg1Var.e();
                            if (bg1Var.c() && bg1Var.c()) {
                                int i23 = 0;
                                for (int i24 = 4; i23 < i24; i24 = 4) {
                                    int i25 = 0;
                                    for (int i26 = 6; i25 < i26; i26 = 6) {
                                        if (bg1Var.c()) {
                                            i6 = 1;
                                            int iMin = Math.min(64, 1 << ((i23 << 1) + 4));
                                            if (i23 > 1) {
                                                bg1Var.d();
                                            }
                                            for (int i27 = 0; i27 < iMin; i27++) {
                                                bg1Var.d();
                                            }
                                        } else {
                                            bg1Var.e();
                                            i6 = 1;
                                        }
                                        i25 += i23 == 3 ? 3 : i6;
                                        j = j;
                                    }
                                    i23++;
                                    j = j;
                                }
                            }
                            j = j;
                            bg1Var.d(2);
                            if (bg1Var.c()) {
                                bg1Var.d(8);
                                bg1Var.e();
                                bg1Var.e();
                                bg1Var.f();
                            }
                            int i28 = 0;
                            int i29 = 0;
                            boolean zC2 = false;
                            for (int iE10 = bg1Var.e(); i29 < iE10; iE10 = iE10) {
                                if (i29 != 0) {
                                    zC2 = bg1Var.c();
                                }
                                if (zC2) {
                                    bg1Var.f();
                                    bg1Var.e();
                                    for (int i30 = 0; i30 <= i28; i30++) {
                                        if (bg1Var.c()) {
                                            bg1Var.f();
                                        }
                                    }
                                } else {
                                    int iE11 = bg1Var.e();
                                    int iE12 = bg1Var.e();
                                    int i31 = iE11 + iE12;
                                    for (int i32 = 0; i32 < iE11; i32++) {
                                        bg1Var.e();
                                        bg1Var.f();
                                    }
                                    for (int i33 = 0; i33 < iE12; i33++) {
                                        bg1Var.e();
                                        bg1Var.f();
                                    }
                                    i28 = i31;
                                }
                                i29++;
                            }
                            if (bg1Var.c()) {
                                for (int i34 = 0; i34 < bg1Var.e(); i34++) {
                                    bg1Var.d(iE9 + 5);
                                }
                            }
                            bg1Var.d(2);
                            float f = 1.0f;
                            if (bg1Var.c()) {
                                if (bg1Var.c()) {
                                    int iB5 = bg1Var.b(8);
                                    if (iB5 == 255) {
                                        int iB6 = bg1Var.b(16);
                                        int iB7 = bg1Var.b(16);
                                        if (iB6 != 0 && iB7 != 0) {
                                            f = iB6 / iB7;
                                        }
                                    } else {
                                        float[] fArr = e41.b;
                                        if (iB5 < 17) {
                                            f = fArr[iB5];
                                        } else {
                                            xr0.a("Unexpected aspect_ratio_idc value: ", iB5, "H265Reader");
                                        }
                                    }
                                }
                                if (bg1Var.c()) {
                                    bg1Var.f();
                                }
                                if (bg1Var.c()) {
                                    bg1Var.d(4);
                                    if (bg1Var.c()) {
                                        bg1Var.d(24);
                                    }
                                }
                                if (bg1Var.c()) {
                                    bg1Var.e();
                                    bg1Var.e();
                                }
                                bg1Var.f();
                                if (bg1Var.c()) {
                                    iE4 *= 2;
                                }
                                a62Var.a(new jc0.a().b(str).e("video/hevc").a(oq.a(iB2, zC, iB3, i17, iArr, iB4)).o(iE3).f(iE4).b(f).a(Collections.singletonList(bArr)).a());
                                this.e = true;
                            }
                            a62Var.a(new jc0.a().b(str).e("video/hevc").a(oq.a(iB2, zC, iB3, i17, iArr, iB4)).o(iE3).f(iE4).b(f).a(Collections.singletonList(bArr)).a());
                            this.e = true;
                        }
                        if (this.j.a(i3)) {
                            d41 d41Var4 = this.j;
                            this.n.a(e41.a(d41Var4.e, d41Var4.d), this.j.d);
                            this.n.f(5);
                            this.a.a(j2, this.n);
                        }
                        if (this.k.a(i3)) {
                            d41 d41Var5 = this.k;
                            this.n.a(e41.a(d41Var5.e, d41Var5.d), this.k.d);
                            this.n.f(5);
                            this.a.a(j2, this.n);
                        }
                        long j5 = this.m;
                        aVar = this.d;
                        boolean z6 = this.e;
                        aVar.g = false;
                        aVar.h = false;
                        aVar.e = j5;
                        aVar.d = 0;
                        long j6 = j;
                        aVar.b = j6;
                        i4 = i10;
                        if (i4 >= 32) {
                            if (i4 == 40) {
                                i5 = 16;
                                z = false;
                                z2 = true;
                                c = 3;
                            } else {
                                if (aVar.i || aVar.j) {
                                    z = false;
                                    c = 3;
                                } else {
                                    if (z6) {
                                        long j7 = aVar.l;
                                        if (j7 == C.TIME_UNSET) {
                                            z = false;
                                            c = 3;
                                        } else {
                                            c = 3;
                                            aVar.a.a(j7, aVar.m ? 1 : 0, (int) (j6 - aVar.k), i12, null);
                                        }
                                        aVar.i = z;
                                    } else {
                                        c = 3;
                                    }
                                    z = false;
                                    aVar.i = z;
                                }
                                if ((32 > i4 && i4 <= 35) || i4 == 39) {
                                    z2 = true;
                                    aVar.h = !aVar.j;
                                    aVar.j = true;
                                }
                            }
                            if (i4 >= i5 || i4 > 21) {
                                z3 = z;
                            } else {
                                z3 = z2;
                            }
                            aVar.c = z3;
                            if (z3 || i4 <= 9) {
                                z = z2;
                            }
                            aVar.f = z;
                            if (!this.e) {
                                this.g.b(i4);
                                this.h.b(i4);
                                this.i.b(i4);
                            }
                            this.j.b(i4);
                            this.k.b(i4);
                            z4 = z2;
                            iE = iE;
                            bArrC = bArrC;
                        } else {
                            z = false;
                            z2 = true;
                            c = 3;
                        }
                        i5 = 16;
                        if (i4 >= i5) {
                            z3 = z;
                        } else {
                            z3 = z;
                        }
                        aVar.c = z3;
                        if (z3) {
                            z = z2;
                        } else {
                            z = z2;
                        }
                        aVar.f = z;
                        if (!this.e) {
                            this.g.b(i4);
                            this.h.b(i4);
                            this.i.b(i4);
                        }
                        this.j.b(i4);
                        this.k.b(i4);
                        z4 = z2;
                        iE = iE;
                        bArrC = bArrC;
                    }
                    if (this.j.a(i3)) {
                        d41 d41Var6 = this.j;
                        this.n.a(e41.a(d41Var6.e, d41Var6.d), this.j.d);
                        this.n.f(5);
                        this.a.a(j2, this.n);
                    }
                    if (this.k.a(i3)) {
                        d41 d41Var7 = this.k;
                        this.n.a(e41.a(d41Var7.e, d41Var7.d), this.k.d);
                        this.n.f(5);
                        this.a.a(j2, this.n);
                    }
                    long j8 = this.m;
                    aVar = this.d;
                    boolean z7 = this.e;
                    aVar.g = false;
                    aVar.h = false;
                    aVar.e = j8;
                    aVar.d = 0;
                    long j9 = j;
                    aVar.b = j9;
                    i4 = i10;
                    if (i4 >= 32) {
                        if (i4 == 40) {
                            i5 = 16;
                            z = false;
                            z2 = true;
                            c = 3;
                        } else {
                            if (aVar.i) {
                                z = false;
                                c = 3;
                            } else {
                                z = false;
                                c = 3;
                            }
                            z2 = 32 > i4 ? true : true;
                        }
                        if (i4 >= i5) {
                            z3 = z;
                        } else {
                            z3 = z;
                        }
                        aVar.c = z3;
                        if (z3) {
                            z = z2;
                        } else {
                            z = z2;
                        }
                        aVar.f = z;
                        if (!this.e) {
                            this.g.b(i4);
                            this.h.b(i4);
                            this.i.b(i4);
                        }
                        this.j.b(i4);
                        this.k.b(i4);
                        z4 = z2;
                        iE = iE;
                        bArrC = bArrC;
                    } else {
                        z = false;
                        z2 = true;
                        c = 3;
                    }
                    i5 = 16;
                    if (i4 >= i5) {
                        z3 = z;
                    } else {
                        z3 = z;
                    }
                    aVar.c = z3;
                    if (z3) {
                        z = z2;
                    } else {
                        z = z2;
                    }
                    aVar.f = z;
                    if (!this.e) {
                        this.g.b(i4);
                        this.h.b(i4);
                        this.i.b(i4);
                    }
                    this.j.b(i4);
                    this.k.b(i4);
                    z4 = z2;
                    iE = iE;
                    bArrC = bArrC;
                }
                i2 = i13;
                if (this.e) {
                    i3 = i2;
                    this.g.a(i3);
                    this.h.a(i3);
                    this.i.a(i3);
                    if (!this.g.a()) {
                    }
                } else {
                    i3 = i2;
                }
                if (this.j.a(i3)) {
                    d41 d41Var8 = this.j;
                    this.n.a(e41.a(d41Var8.e, d41Var8.d), this.j.d);
                    this.n.f(5);
                    this.a.a(j2, this.n);
                }
                if (this.k.a(i3)) {
                    d41 d41Var9 = this.k;
                    this.n.a(e41.a(d41Var9.e, d41Var9.d), this.k.d);
                    this.n.f(5);
                    this.a.a(j2, this.n);
                }
                long j10 = this.m;
                aVar = this.d;
                boolean z8 = this.e;
                aVar.g = false;
                aVar.h = false;
                aVar.e = j10;
                aVar.d = 0;
                long j11 = j;
                aVar.b = j11;
                i4 = i10;
                if (i4 >= 32) {
                    if (i4 == 40) {
                        i5 = 16;
                        z = false;
                        z2 = true;
                        c = 3;
                    } else {
                        if (aVar.i) {
                            z = false;
                            c = 3;
                        } else {
                            z = false;
                            c = 3;
                        }
                        if (32 > i4) {
                        }
                    }
                    if (i4 >= i5) {
                        z3 = z;
                    } else {
                        z3 = z;
                    }
                    aVar.c = z3;
                    if (z3) {
                        z = z2;
                    } else {
                        z = z2;
                    }
                    aVar.f = z;
                    if (!this.e) {
                        this.g.b(i4);
                        this.h.b(i4);
                        this.i.b(i4);
                    }
                    this.j.b(i4);
                    this.k.b(i4);
                    z4 = z2;
                    iE = iE;
                    bArrC = bArrC;
                } else {
                    z = false;
                    z2 = true;
                    c = 3;
                }
                i5 = 16;
                if (i4 >= i5) {
                    z3 = z;
                } else {
                    z3 = z;
                }
                aVar.c = z3;
                if (z3) {
                    z = z2;
                } else {
                    z = z2;
                }
                aVar.f = z;
                if (!this.e) {
                    this.g.b(i4);
                    this.h.b(i4);
                    this.i.b(i4);
                }
                this.j.b(i4);
                this.k.b(i4);
                z4 = z2;
                iE = iE;
                bArrC = bArrC;
            }
        }
    }

    @Override
    public final void b() {
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        dVar.a();
        this.b = dVar.b();
        a62 a62VarA = b80Var.a(dVar.c(), 2);
        this.c = a62VarA;
        this.d = new a(a62VarA);
        this.a.a(b80Var, dVar);
    }

    private void a(byte[] bArr, int i, int i2) {
        a aVar = this.d;
        if (aVar.f) {
            int i3 = aVar.d;
            int i4 = (i + 2) - i3;
            if (i4 < i2) {
                aVar.g = (bArr[i4] & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
                aVar.f = false;
            } else {
                aVar.d = (i2 - i) + i3;
            }
        }
        if (!this.e) {
            this.g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    @Override
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.m = j;
        }
    }

    @Override
    public final void a() {
        this.l = 0L;
        this.m = C.TIME_UNSET;
        e41.a(this.f);
        this.g.b();
        this.h.b();
        this.i.b();
        this.j.b();
        this.k.b();
        a aVar = this.d;
        if (aVar != null) {
            aVar.f = false;
            aVar.g = false;
            aVar.h = false;
            aVar.i = false;
            aVar.j = false;
        }
    }
}
