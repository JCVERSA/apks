package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import org.mozilla.classfile.ByteCode;

public final class s implements b50 {
    private final zf1 a;
    private final ag1 b;

    @Nullable
    private final String c;
    private String d;
    private a62 e;
    private int f;
    private int g;
    private boolean h;
    private long i;
    private jc0 j;
    private int k;
    private long l;

    public s() {
        this(null);
    }

    @Override
    public final void a(ag1 ag1Var) {
        if (this.e == null) {
            throw new IllegalStateException();
        }
        while (ag1Var.a() > 0) {
            int i = this.f;
            if (i == 0) {
                while (ag1Var.a() > 0) {
                    if (this.h) {
                        int iT = ag1Var.t();
                        if (iT == 119) {
                            this.h = false;
                            this.f = 1;
                            this.b.c()[0] = ByteCode.T_LONG;
                            this.b.c()[1] = 119;
                            this.g = 2;
                            break;
                        }
                        this.h = iT == 11;
                    } else {
                        this.h = ag1Var.t() == 11;
                    }
                }
            } else if (i == 1) {
                byte[] bArrC = this.b.c();
                int iMin = Math.min(ag1Var.a(), 128 - this.g);
                ag1Var.a(bArrC, this.g, iMin);
                int i2 = this.g + iMin;
                this.g = i2;
                if (i2 == 128) {
                    this.a.c(0);
                    t.a aVarA = t.a(this.a);
                    jc0 jc0Var = this.j;
                    if (jc0Var == null || aVarA.c != jc0Var.z || aVarA.b != jc0Var.A || !f92.a(aVarA.a, jc0Var.m)) {
                        jc0 jc0VarA = new jc0.a().b(this.d).e(aVarA.a).c(aVarA.c).l(aVarA.b).d(this.c).a();
                        this.j = jc0VarA;
                        this.e.a(jc0VarA);
                    }
                    this.k = aVarA.d;
                    this.i = (((long) aVarA.e) * 1000000) / ((long) this.j.A);
                    this.b.e(0);
                    this.e.a(128, this.b);
                    this.f = 2;
                }
            } else if (i == 2) {
                int iMin2 = Math.min(ag1Var.a(), this.k - this.g);
                this.e.a(iMin2, ag1Var);
                int i3 = this.g + iMin2;
                this.g = i3;
                int i4 = this.k;
                if (i3 == i4) {
                    long j = this.l;
                    if (j != C.TIME_UNSET) {
                        this.e.a(j, 1, i4, 0, null);
                        this.l += this.i;
                    }
                    this.f = 0;
                }
            }
        }
    }

    @Override
    public final void b() {
    }

    public s(@Nullable String str) {
        byte[] bArr = new byte[128];
        this.a = new zf1(bArr);
        this.b = new ag1(bArr);
        this.f = 0;
        this.l = C.TIME_UNSET;
        this.c = str;
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        dVar.a();
        this.d = dVar.b();
        this.e = b80Var.a(dVar.c(), 1);
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
        this.h = false;
        this.l = C.TIME_UNSET;
    }
}
