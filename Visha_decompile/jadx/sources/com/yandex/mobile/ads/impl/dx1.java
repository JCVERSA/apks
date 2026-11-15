package com.yandex.mobile.ads.impl;

import androidx.core.view.InputDeviceCompat;

public final class dx1 implements p72 {
    private final cx1 a;
    private final ag1 b = new ag1(32);
    private int c;
    private int d;
    private boolean e;
    private boolean f;

    public dx1(cx1 cx1Var) {
        this.a = cx1Var;
    }

    @Override
    public final void a(int i, ag1 ag1Var) {
        int iD;
        boolean z = (i & 1) != 0;
        if (z) {
            iD = ag1Var.d() + ag1Var.t();
        } else {
            iD = -1;
        }
        if (this.f) {
            if (!z) {
                return;
            }
            this.f = false;
            ag1Var.e(iD);
            this.d = 0;
        }
        while (ag1Var.a() > 0) {
            int i2 = this.d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int iT = ag1Var.t();
                    ag1Var.e(ag1Var.d() - 1);
                    if (iT == 255) {
                        this.f = true;
                        return;
                    }
                }
                int iMin = Math.min(ag1Var.a(), 3 - this.d);
                ag1Var.a(this.b.c(), this.d, iMin);
                int i3 = this.d + iMin;
                this.d = i3;
                if (i3 == 3) {
                    this.b.e(0);
                    this.b.d(3);
                    this.b.f(1);
                    int iT2 = this.b.t();
                    int iT3 = this.b.t();
                    this.e = (iT2 & 128) != 0;
                    this.c = (((iT2 & 15) << 8) | iT3) + 3;
                    int iB = this.b.b();
                    int i4 = this.c;
                    if (iB < i4) {
                        this.b.a(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i4, this.b.b() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(ag1Var.a(), this.c - this.d);
                ag1Var.a(this.b.c(), this.d, iMin2);
                int i5 = this.d + iMin2;
                this.d = i5;
                int i6 = this.c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (this.e) {
                        if (f92.a(this.c, this.b.c()) != 0) {
                            this.f = true;
                            return;
                        }
                        this.b.d(this.c - 4);
                    } else {
                        this.b.d(i6);
                    }
                    this.b.e(0);
                    this.a.a(this.b);
                    this.d = 0;
                }
            }
        }
    }

    @Override
    public final void a(p52 p52Var, b80 b80Var, p72.d dVar) {
        this.a.a(p52Var, b80Var, dVar);
        this.f = true;
    }

    @Override
    public final void a() {
        this.f = true;
    }
}
