package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;

public final class e21 implements b50 {
    private final ag1 a;
    private final f21.a b;

    @Nullable
    private final String c;
    private a62 d;
    private String e;
    private int f = 0;
    private int g;
    private boolean h;
    private boolean i;
    private long j;
    private int k;
    private long l;

    public e21(@Nullable String str) {
        ag1 ag1Var = new ag1(4);
        this.a = ag1Var;
        ag1Var.c()[0] = -1;
        this.b = new f21.a();
        this.l = C.TIME_UNSET;
        this.c = str;
    }

    @Override
    public final void a(ag1 ag1Var) {
        if (this.d == null) {
            throw new IllegalStateException();
        }
        while (ag1Var.a() > 0) {
            int i = this.f;
            if (i == 0) {
                byte[] bArrC = ag1Var.c();
                int iD = ag1Var.d();
                int iE = ag1Var.e();
                while (true) {
                    if (iD >= iE) {
                        ag1Var.e(iE);
                        break;
                    }
                    byte b = bArrC[iD];
                    boolean z = (b & 255) == 255;
                    boolean z2 = this.i && (b & 224) == 224;
                    this.i = z;
                    if (z2) {
                        ag1Var.e(iD + 1);
                        this.i = false;
                        this.a.c()[1] = bArrC[iD];
                        this.g = 2;
                        this.f = 1;
                        break;
                    }
                    iD++;
                }
            } else if (i == 1) {
                int iMin = Math.min(ag1Var.a(), 4 - this.g);
                ag1Var.a(this.a.c(), this.g, iMin);
                int i2 = this.g + iMin;
                this.g = i2;
                if (i2 >= 4) {
                    this.a.e(0);
                    if (this.b.a(this.a.h())) {
                        f21.a aVar = this.b;
                        this.k = aVar.c;
                        if (!this.h) {
                            this.j = (((long) aVar.g) * 1000000) / ((long) aVar.d);
                            this.d.a(new jc0.a().b(this.e).e(this.b.b).h(4096).c(this.b.e).l(this.b.d).d(this.c).a());
                            this.h = true;
                        }
                        this.a.e(0);
                        this.d.a(4, this.a);
                        this.f = 2;
                    } else {
                        this.g = 0;
                        this.f = 1;
                    }
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                int iMin2 = Math.min(ag1Var.a(), this.k - this.g);
                this.d.a(iMin2, ag1Var);
                int i3 = this.g + iMin2;
                this.g = i3;
                int i4 = this.k;
                if (i3 >= i4) {
                    long j = this.l;
                    if (j != C.TIME_UNSET) {
                        this.d.a(j, 1, i4, 0, null);
                        this.l += this.j;
                    }
                    this.g = 0;
                    this.f = 0;
                }
            }
        }
    }

    @Override
    public final void b() {
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        dVar.a();
        this.e = dVar.b();
        this.d = b80Var.a(dVar.c(), 1);
    }

    @Override
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.l = j;
        }
    }

    @Override
    public final void a() {
        this.f = 0;
        this.g = 0;
        this.i = false;
        this.l = C.TIME_UNSET;
    }
}
