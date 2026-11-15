package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.Collections;
import java.util.List;

public final class x40 implements b50 {
    private final List<p72.a> a;
    private final a62[] b;
    private boolean c;
    private int d;
    private int e;
    private long f = C.TIME_UNSET;

    public x40(List<p72.a> list) {
        this.a = list;
        this.b = new a62[list.size()];
    }

    @Override
    public final void a(ag1 ag1Var) {
        if (this.c) {
            if (this.d == 2) {
                if (ag1Var.a() == 0) {
                    return;
                }
                if (ag1Var.t() != 32) {
                    this.c = false;
                }
                this.d--;
                if (!this.c) {
                    return;
                }
            }
            if (this.d == 1) {
                if (ag1Var.a() == 0) {
                    return;
                }
                if (ag1Var.t() != 0) {
                    this.c = false;
                }
                this.d--;
                if (!this.c) {
                    return;
                }
            }
            int iD = ag1Var.d();
            int iA = ag1Var.a();
            for (a62 a62Var : this.b) {
                ag1Var.e(iD);
                a62Var.a(iA, ag1Var);
            }
            this.e += iA;
        }
    }

    @Override
    public final void b() {
        if (this.c) {
            if (this.f != C.TIME_UNSET) {
                for (a62 a62Var : this.b) {
                    a62Var.a(this.f, 1, this.e, 0, null);
                }
            }
            this.c = false;
        }
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        for (int i = 0; i < this.b.length; i++) {
            p72.a aVar = this.a.get(i);
            dVar.a();
            a62 a62VarA = b80Var.a(dVar.c(), 3);
            a62VarA.a(new jc0.a().b(dVar.b()).e(MimeTypes.APPLICATION_DVBSUBS).a(Collections.singletonList(aVar.b)).d(aVar.a).a());
            this.b[i] = a62VarA;
        }
    }

    @Override
    public final void a(int i, long j) {
        if ((i & 4) == 0) {
            return;
        }
        this.c = true;
        if (j != C.TIME_UNSET) {
            this.f = j;
        }
        this.e = 0;
        this.d = 2;
    }

    @Override
    public final void a() {
        this.c = false;
        this.f = C.TIME_UNSET;
    }
}
