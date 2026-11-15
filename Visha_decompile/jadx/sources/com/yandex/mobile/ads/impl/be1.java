package com.yandex.mobile.ads.impl;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

final class be1 {
    private final ce1 a = new ce1();
    private final ag1 b = new ag1(0, new byte[65025]);
    private int c = -1;
    private int d;
    private boolean e;

    public final ce1 a() {
        return this.a;
    }

    public final ag1 b() {
        return this.b;
    }

    public final void c() {
        ce1 ce1Var = this.a;
        ce1Var.a = 0;
        ce1Var.b = 0L;
        ce1Var.c = 0;
        ce1Var.d = 0;
        ce1Var.e = 0;
        this.b.c(0);
        this.c = -1;
        this.e = false;
    }

    public final void d() {
        if (this.b.c().length == 65025) {
            return;
        }
        ag1 ag1Var = this.b;
        ag1Var.a(this.b.e(), Arrays.copyOf(ag1Var.c(), Math.max(65025, this.b.e())));
    }

    public final boolean a(wz wzVar) throws IOException {
        int i;
        int i2;
        int i3;
        if (this.e) {
            this.e = false;
            this.b.c(0);
        }
        while (true) {
            if (this.e) {
                return true;
            }
            if (this.c < 0) {
                if (this.a.a(wzVar, -1L) && this.a.a(wzVar, true)) {
                    ce1 ce1Var = this.a;
                    int i4 = ce1Var.d;
                    if ((ce1Var.a & 1) == 1 && this.b.e() == 0) {
                        this.d = 0;
                        int i5 = 0;
                        do {
                            int i6 = this.d;
                            ce1 ce1Var2 = this.a;
                            if (i6 >= ce1Var2.c) {
                                break;
                            }
                            int[] iArr = ce1Var2.f;
                            this.d = i6 + 1;
                            i3 = iArr[i6];
                            i5 += i3;
                        } while (i3 == 255);
                        i4 += i5;
                        i2 = this.d;
                    } else {
                        i2 = 0;
                    }
                    try {
                        wzVar.a(i4);
                        this.c = i2;
                    } catch (EOFException unused) {
                    }
                }
                return false;
            }
            int i7 = this.c;
            this.d = 0;
            int i8 = 0;
            do {
                int i9 = this.d;
                int i10 = i7 + i9;
                ce1 ce1Var3 = this.a;
                if (i10 >= ce1Var3.c) {
                    break;
                }
                int[] iArr2 = ce1Var3.f;
                this.d = i9 + 1;
                i = iArr2[i10];
                i8 += i;
            } while (i == 255);
            int i11 = this.c + this.d;
            if (i8 > 0) {
                ag1 ag1Var = this.b;
                ag1Var.a(ag1Var.e() + i8);
                try {
                    wzVar.a(this.b.c(), this.b.e(), i8, false);
                    ag1 ag1Var2 = this.b;
                    ag1Var2.d(ag1Var2.e() + i8);
                    this.e = this.a.f[i11 + (-1)] != 255;
                } catch (EOFException unused2) {
                    return false;
                }
            }
            if (i11 == this.a.c) {
                i11 = -1;
            }
            this.c = i11;
        }
    }
}
