package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

public final class vi0 implements b50 {
    private a62 b;
    private boolean c;
    private int e;
    private int f;
    private final ag1 a = new ag1(10);
    private long d = C.TIME_UNSET;

    @Override
    public final void a(ag1 ag1Var) {
        if (this.b == null) {
            throw new IllegalStateException();
        }
        if (this.c) {
            int iA = ag1Var.a();
            int i = this.f;
            if (i < 10) {
                int iMin = Math.min(iA, 10 - i);
                System.arraycopy(ag1Var.c(), ag1Var.d(), this.a.c(), this.f, iMin);
                if (this.f + iMin == 10) {
                    this.a.e(0);
                    if (73 != this.a.t() || 68 != this.a.t() || 51 != this.a.t()) {
                        et0.d("Id3Reader", "Discarding invalid ID3 tag");
                        this.c = false;
                        return;
                    } else {
                        this.a.f(3);
                        this.e = this.a.s() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.e - this.f);
            this.b.a(iMin2, ag1Var);
            this.f += iMin2;
        }
    }

    @Override
    public final void b() {
        int i;
        a62 a62Var = this.b;
        if (a62Var == null) {
            throw new IllegalStateException();
        }
        if (this.c && (i = this.e) != 0 && this.f == i) {
            long j = this.d;
            if (j != C.TIME_UNSET) {
                a62Var.a(j, 1, i, 0, null);
            }
            this.c = false;
        }
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        dVar.a();
        a62 a62VarA = b80Var.a(dVar.c(), 5);
        this.b = a62VarA;
        a62VarA.a(new jc0.a().b(dVar.b()).e(MimeTypes.APPLICATION_ID3).a());
    }

    @Override
    public final void a(int i, long j) {
        if ((i & 4) == 0) {
            return;
        }
        this.c = true;
        if (j != C.TIME_UNSET) {
            this.d = j;
        }
        this.e = 0;
        this.f = 0;
    }

    @Override
    public final void a() {
        this.c = false;
        this.d = C.TIME_UNSET;
    }
}
