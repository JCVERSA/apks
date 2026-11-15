package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

public final class v implements b50 {
    private final zf1 a;
    private final ag1 b;

    @Nullable
    private final String c;
    private String d;
    private a62 e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;
    private long j;
    private jc0 k;
    private int l;
    private long m;

    public v() {
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
                        this.h = iT == 172;
                        if (iT == 64 || iT == 65) {
                            this.i = iT == 65;
                            this.f = 1;
                            this.b.c()[0] = -84;
                            this.b.c()[1] = (byte) (this.i ? 65 : 64);
                            this.g = 2;
                            break;
                        }
                    } else {
                        this.h = ag1Var.t() == 172;
                    }
                }
            } else if (i == 1) {
                byte[] bArrC = this.b.c();
                int iMin = Math.min(ag1Var.a(), 16 - this.g);
                ag1Var.a(bArrC, this.g, iMin);
                int i2 = this.g + iMin;
                this.g = i2;
                if (i2 == 16) {
                    this.a.c(0);
                    w.a aVarA = w.a(this.a);
                    jc0 jc0Var = this.k;
                    if (jc0Var == null || 2 != jc0Var.z || aVarA.a != jc0Var.A || !MimeTypes.AUDIO_AC4.equals(jc0Var.m)) {
                        jc0 jc0VarA = new jc0.a().b(this.d).e(MimeTypes.AUDIO_AC4).c(2).l(aVarA.a).d(this.c).a();
                        this.k = jc0VarA;
                        this.e.a(jc0VarA);
                    }
                    this.l = aVarA.b;
                    this.j = (((long) aVarA.c) * 1000000) / ((long) this.k.A);
                    this.b.e(0);
                    this.e.a(16, this.b);
                    this.f = 2;
                }
            } else if (i == 2) {
                int iMin2 = Math.min(ag1Var.a(), this.l - this.g);
                this.e.a(iMin2, ag1Var);
                int i3 = this.g + iMin2;
                this.g = i3;
                int i4 = this.l;
                if (i3 == i4) {
                    long j = this.m;
                    if (j != C.TIME_UNSET) {
                        this.e.a(j, 1, i4, 0, null);
                        this.m += this.j;
                    }
                    this.f = 0;
                }
            }
        }
    }

    @Override
    public final void b() {
    }

    public v(@Nullable String str) {
        byte[] bArr = new byte[16];
        this.a = new zf1(bArr);
        this.b = new ag1(bArr);
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.i = false;
        this.m = C.TIME_UNSET;
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
            this.m = j;
        }
    }

    @Override
    public final void a() {
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.i = false;
        this.m = C.TIME_UNSET;
    }
}
