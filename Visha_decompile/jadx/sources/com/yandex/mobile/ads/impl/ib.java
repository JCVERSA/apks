package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.material.internal.ViewUtils;
import java.util.Arrays;
import java.util.Collections;

public final class ib implements b50 {
    private static final byte[] v = {73, 68, 51};
    private final boolean a;
    private final zf1 b;
    private final ag1 c;

    @Nullable
    private final String d;
    private String e;
    private a62 f;
    private a62 g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private long q;
    private int r;
    private long s;
    private a62 t;
    private long u;

    public ib() {
        this(null, true);
    }

    private void d() {
        this.h = 0;
        this.i = 0;
        this.j = 256;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:125:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:127:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:129:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:168:0x0304 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x0302 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x023a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:174:0x023a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:175:0x02bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x0320 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x031a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x0314 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x02f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x0214  */
    /* JADX WARN: Code duplicated, block: B:73:0x024f  */
    /* JADX WARN: Code duplicated, block: B:78:0x0260  */
    /* JADX WARN: Code duplicated, block: B:81:0x0276  */
    /* JADX WARN: Code duplicated, block: B:84:0x0282  */
    /* JADX WARN: Code duplicated, block: B:86:0x0287  */
    /* JADX WARN: Code duplicated, block: B:89:0x028b  */
    /* JADX WARN: Code duplicated, block: B:94:0x029f  */
    @Override
    public final void a(ag1 ag1Var) throws eg1 {
        int i;
        int i2;
        char c;
        byte[] bArr;
        int iB;
        byte[] bArrC;
        int iE;
        int i3;
        byte b;
        int i4;
        int i5;
        int i6;
        byte b2;
        int i7 = 7;
        int i8 = -1;
        this.f.getClass();
        int i9 = f92.a;
        while (ag1Var.a() > 0) {
            int i10 = this.h;
            int i11 = 4;
            if (i10 == 0) {
                byte[] bArrC2 = ag1Var.c();
                int iD = ag1Var.d();
                int iE2 = ag1Var.e();
                while (true) {
                    if (iD < iE2) {
                        int i12 = iD + 1;
                        byte b3 = bArrC2[iD];
                        int i13 = b3 & 255;
                        if (this.j == 512 && (((((byte) i13) & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK) & 65526) == 65520) {
                            if (this.l) {
                                i8 = i8;
                            } else {
                                int i14 = iD - 1;
                                ag1Var.e(iD);
                                byte[] bArr2 = this.b.a;
                                if (ag1Var.a() < 1) {
                                    i8 = i8;
                                } else {
                                    ag1Var.a(bArr2, 0, 1);
                                    this.b.c(i11);
                                    int iB2 = this.b.b(1);
                                    int i15 = this.m;
                                    if (i15 != i8 && iB2 != i15) {
                                        i8 = i8;
                                    } else if (this.n != i8) {
                                        byte[] bArr3 = this.b.a;
                                        if (ag1Var.a() >= 1) {
                                            ag1Var.a(bArr3, 0, 1);
                                            this.b.c(2);
                                            if (this.b.b(i11) != this.n) {
                                                i8 = -1;
                                            } else {
                                                ag1Var.e(i12);
                                                bArr = this.b.a;
                                                if (ag1Var.a() < i11) {
                                                    ag1Var.a(bArr, 0, i11);
                                                    this.b.c(14);
                                                    iB = this.b.b(13);
                                                    if (iB < 7) {
                                                        i8 = -1;
                                                    } else {
                                                        bArrC = ag1Var.c();
                                                        iE = ag1Var.e();
                                                        i3 = i14 + iB;
                                                        if (i3 >= iE) {
                                                            b = bArrC[i3];
                                                            i8 = -1;
                                                            if (b == -1) {
                                                                i6 = i3 + 1;
                                                                if (i6 == iE) {
                                                                    b2 = bArrC[i6];
                                                                    if ((((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK) & 65526) == 65520 || ((b2 & 8) >> 3) != iB2) {
                                                                    }
                                                                }
                                                            } else if (b == 73 && ((i4 = i3 + 1) == iE || (bArrC[i4] == 68 && ((i5 = i3 + 2) == iE || bArrC[i5] == 51)))) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        i8 = -1;
                                    } else {
                                        bArr = this.b.a;
                                        if (ag1Var.a() < i11) {
                                            ag1Var.a(bArr, 0, i11);
                                            this.b.c(14);
                                            iB = this.b.b(13);
                                            if (iB < 7) {
                                                i8 = -1;
                                            } else {
                                                bArrC = ag1Var.c();
                                                iE = ag1Var.e();
                                                i3 = i14 + iB;
                                                if (i3 >= iE) {
                                                    b = bArrC[i3];
                                                    i8 = -1;
                                                    if (b == -1) {
                                                        i6 = i3 + 1;
                                                        if (i6 == iE) {
                                                            b2 = bArrC[i6];
                                                            if ((((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK) & 65526) == 65520) {
                                                            }
                                                        }
                                                    } else if (b == 73) {
                                                    }
                                                }
                                            }
                                        }
                                        i8 = -1;
                                    }
                                }
                                i = this.j;
                                i2 = i | i13;
                                if (i2 != 329) {
                                    c = 3;
                                    this.j = ViewUtils.EDGE_TO_EDGE_FLAGS;
                                } else if (i2 != 511) {
                                    c = 3;
                                    this.j = 512;
                                } else if (i2 != 836) {
                                    c = 3;
                                    this.j = 1024;
                                } else if (i2 != 1075) {
                                    this.h = 2;
                                    this.i = 3;
                                    this.r = 0;
                                    this.c.e(0);
                                    ag1Var.e(i12);
                                } else if (i != 256) {
                                    this.j = 256;
                                    i11 = 4;
                                } else {
                                    c = 3;
                                }
                                iD = i12;
                                i11 = 4;
                            }
                            this.o = (b3 & 8) >> 3;
                            this.k = (b3 & 1) == 0;
                            if (this.l) {
                                this.h = 3;
                                this.i = 0;
                            } else {
                                this.h = 1;
                                this.i = 0;
                            }
                            ag1Var.e(i12);
                        } else {
                            i8 = i8;
                            i = this.j;
                            i2 = i | i13;
                            if (i2 != 329) {
                                c = 3;
                                this.j = ViewUtils.EDGE_TO_EDGE_FLAGS;
                            } else if (i2 != 511) {
                                c = 3;
                                this.j = 512;
                            } else if (i2 != 836) {
                                c = 3;
                                this.j = 1024;
                            } else if (i2 != 1075) {
                                this.h = 2;
                                this.i = 3;
                                this.r = 0;
                                this.c.e(0);
                                ag1Var.e(i12);
                            } else if (i != 256) {
                                this.j = 256;
                                i11 = 4;
                            } else {
                                c = 3;
                            }
                            iD = i12;
                            i11 = 4;
                        }
                        i8 = i8;
                    } else {
                        ag1Var.e(iD);
                    }
                    i7 = 7;
                }
            } else if (i10 != 1) {
                if (i10 == 2) {
                    byte[] bArrC3 = this.c.c();
                    int iMin = Math.min(ag1Var.a(), 10 - this.i);
                    ag1Var.a(bArrC3, this.i, iMin);
                    int i16 = this.i + iMin;
                    this.i = i16;
                    if (i16 == 10) {
                        this.g.a(10, this.c);
                        this.c.e(6);
                        a62 a62Var = this.g;
                        int iS = this.c.s() + 10;
                        this.h = 4;
                        this.i = 10;
                        this.t = a62Var;
                        this.u = 0L;
                        this.r = iS;
                    }
                } else if (i10 == 3) {
                    int i17 = this.k ? i7 : 5;
                    byte[] bArr4 = this.b.a;
                    int iMin2 = Math.min(ag1Var.a(), i17 - this.i);
                    ag1Var.a(bArr4, this.i, iMin2);
                    int i18 = this.i + iMin2;
                    this.i = i18;
                    if (i18 == i17) {
                        this.b.c(0);
                        if (this.p) {
                            this.b.d(10);
                        } else {
                            int iB3 = this.b.b(2) + 1;
                            if (iB3 != 2) {
                                et0.d("AdtsReader", "Detected audio object type: " + iB3 + ", but assuming AAC LC.");
                                iB3 = 2;
                            }
                            this.b.d(5);
                            int iB4 = this.b.b(3);
                            int i19 = this.n;
                            byte[] bArr5 = {(byte) (((iB3 << 3) & 248) | ((i19 >> 1) & i7)), (byte) (((iB4 << 3) & 120) | ((i19 << i7) & 128))};
                            e.a aVarA = e.a(new zf1(2, bArr5), false);
                            jc0 jc0VarA = new jc0.a().b(this.e).e("audio/mp4a-latm").a(aVarA.c).c(aVarA.b).l(aVarA.a).a(Collections.singletonList(bArr5)).d(this.d).a();
                            this.q = 1024000000 / ((long) jc0VarA.A);
                            this.f.a(jc0VarA);
                            this.p = true;
                        }
                        this.b.d(4);
                        int iB5 = this.b.b(13);
                        int i20 = iB5 - 7;
                        if (this.k) {
                            i20 = iB5 - 9;
                        }
                        a62 a62Var2 = this.f;
                        long j = this.q;
                        this.h = 4;
                        this.i = 0;
                        this.t = a62Var2;
                        this.u = j;
                        this.r = i20;
                    }
                } else {
                    if (i10 != 4) {
                        throw new IllegalStateException();
                    }
                    int iMin3 = Math.min(ag1Var.a(), this.r - this.i);
                    this.t.a(iMin3, ag1Var);
                    int i21 = this.i + iMin3;
                    this.i = i21;
                    int i22 = this.r;
                    if (i21 == i22) {
                        long j2 = this.s;
                        if (j2 != C.TIME_UNSET) {
                            this.t.a(j2, 1, i22, 0, null);
                            this.s += this.u;
                        }
                        d();
                    }
                }
            } else if (ag1Var.a() != 0) {
                this.b.a[0] = ag1Var.c()[ag1Var.d()];
                this.b.c(2);
                int iB6 = this.b.b(4);
                int i23 = this.n;
                if (i23 == i8 || iB6 == i23) {
                    if (!this.l) {
                        this.l = true;
                        this.m = this.o;
                        this.n = iB6;
                    }
                    this.h = 3;
                    this.i = 0;
                } else {
                    this.l = false;
                    d();
                }
            }
        }
    }

    @Override
    public final void b() {
    }

    public final long c() {
        return this.q;
    }

    public ib(@Nullable String str, boolean z) {
        this.b = new zf1(new byte[7]);
        this.c = new ag1(Arrays.copyOf(v, 10));
        d();
        this.m = -1;
        this.n = -1;
        this.q = C.TIME_UNSET;
        this.s = C.TIME_UNSET;
        this.a = z;
        this.d = str;
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        dVar.a();
        this.e = dVar.b();
        a62 a62VarA = b80Var.a(dVar.c(), 1);
        this.f = a62VarA;
        this.t = a62VarA;
        if (this.a) {
            dVar.a();
            a62 a62VarA2 = b80Var.a(dVar.c(), 5);
            this.g = a62VarA2;
            a62VarA2.a(new jc0.a().b(dVar.b()).e(MimeTypes.APPLICATION_ID3).a());
            return;
        }
        this.g = new r40();
    }

    @Override
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.s = j;
        }
    }

    @Override
    public final void a() {
        this.s = C.TIME_UNSET;
        this.l = false;
        d();
    }
}
