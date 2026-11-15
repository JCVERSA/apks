package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;

public final class vg1 implements p72 {
    private final b50 a;
    private final zf1 b = new zf1(new byte[10]);
    private int c = 0;
    private int d;
    private p52 e;
    private boolean f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;
    private boolean k;
    private long l;

    public vg1(b50 b50Var) {
        this.a = b50Var;
    }

    @Override
    public final void a(int i, ag1 ag1Var) throws eg1 {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.e == null) {
            throw new IllegalStateException();
        }
        int i7 = 2;
        int i8 = 3;
        int i9 = -1;
        int i10 = 0;
        if ((i & 1) != 0) {
            int i11 = this.c;
            if (i11 != 0 && i11 != 1) {
                if (i11 == 2) {
                    et0.d("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.j != -1) {
                        et0.d("PesReader", "Unexpected start indicator: expected " + this.j + " more bytes");
                    }
                    this.a.b();
                }
            }
            this.c = 1;
            this.d = 0;
        }
        int i12 = i;
        while (ag1Var.a() > 0) {
            int i13 = this.c;
            if (i13 == 0) {
                i2 = i7;
                i3 = i8;
                i4 = i9;
                i5 = i10;
                ag1Var.f(ag1Var.a());
            } else if (i13 == 1) {
                i3 = i8;
                int i14 = i10;
                if (a(9, ag1Var, this.b.a)) {
                    this.b.c(i14);
                    int iB = this.b.b(24);
                    if (iB != 1) {
                        xr0.a("Unexpected start code prefix: ", iB, "PesReader");
                        i4 = -1;
                        this.j = -1;
                        i6 = 0;
                        i2 = 2;
                    } else {
                        this.b.d(8);
                        int iB2 = this.b.b(16);
                        this.b.d(5);
                        this.k = this.b.f();
                        i2 = 2;
                        this.b.d(2);
                        this.f = this.b.f();
                        this.g = this.b.f();
                        this.b.d(6);
                        int iB3 = this.b.b(8);
                        this.i = iB3;
                        if (iB2 == 0) {
                            this.j = -1;
                            i4 = -1;
                        } else {
                            int i15 = (iB2 - 3) - iB3;
                            this.j = i15;
                            if (i15 < 0) {
                                et0.d("PesReader", "Found negative packet payload size: " + this.j);
                                i4 = -1;
                                this.j = -1;
                            } else {
                                i4 = -1;
                            }
                        }
                        i6 = 2;
                    }
                    this.c = i6;
                    i5 = 0;
                    this.d = 0;
                } else {
                    i5 = i14;
                    i4 = -1;
                    i2 = 2;
                }
            } else if (i13 != i7) {
                if (i13 != i8) {
                    throw new IllegalStateException();
                }
                int iA = ag1Var.a();
                int i16 = this.j;
                int i17 = i16 == i9 ? i10 : iA - i16;
                if (i17 > 0) {
                    iA -= i17;
                    ag1Var.d(ag1Var.d() + iA);
                }
                this.a.a(ag1Var);
                int i18 = this.j;
                if (i18 != i9) {
                    int i19 = i18 - iA;
                    this.j = i19;
                    if (i19 == 0) {
                        this.a.b();
                        this.c = 1;
                        this.d = i10;
                    }
                }
                i2 = i7;
                i3 = i8;
                i4 = i9;
                i5 = i10;
            } else if (a(Math.min(10, this.i), ag1Var, this.b.a) && a(this.i, ag1Var, (byte[]) null)) {
                this.b.c(i10);
                this.l = C.TIME_UNSET;
                if (this.f) {
                    this.b.d(4);
                    long jB = ((long) this.b.b(i8)) << 30;
                    this.b.d(1);
                    long jB2 = ((long) (this.b.b(15) << 15)) | jB;
                    this.b.d(1);
                    long jB3 = jB2 | ((long) this.b.b(15));
                    this.b.d(1);
                    if (!this.h && this.g) {
                        this.b.d(4);
                        long jB4 = ((long) this.b.b(i8)) << 30;
                        this.b.d(1);
                        long jB5 = ((long) (this.b.b(15) << 15)) | jB4;
                        this.b.d(1);
                        long jB6 = jB5 | ((long) this.b.b(15));
                        this.b.d(1);
                        this.e.b(jB6);
                        this.h = true;
                    }
                    this.l = this.e.b(jB3);
                }
                i12 |= this.k ? 4 : 0;
                this.a.a(i12, this.l);
                this.c = 3;
                this.d = 0;
                i10 = 0;
                i9 = -1;
                i8 = 3;
                i7 = 2;
            } else {
                i3 = i8;
                i4 = i9;
                i5 = i10;
                i2 = 2;
            }
            i10 = i5;
            i9 = i4;
            i8 = i3;
            i7 = i2;
        }
    }

    private boolean a(int i, ag1 ag1Var, @Nullable byte[] bArr) {
        int iMin = Math.min(ag1Var.a(), i - this.d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            ag1Var.f(iMin);
        } else {
            ag1Var.a(bArr, this.d, iMin);
        }
        int i2 = this.d + iMin;
        this.d = i2;
        return i2 == i;
    }

    @Override
    public final void a(p52 p52Var, b80 b80Var, p72.d dVar) {
        this.e = p52Var;
        this.a.a(b80Var, dVar);
    }

    @Override
    public final void a() {
        this.c = 0;
        this.d = 0;
        this.h = false;
        this.a.a();
    }
}
