package com.yandex.mobile.ads.impl;

import androidx.media3.common.MimeTypes;
import java.util.List;

final class e92 {
    private final List<jc0> a;
    private final a62[] b;

    public e92(List<jc0> list) {
        this.a = list;
        this.b = new a62[list.size()];
    }

    public final void a(long j, ag1 ag1Var) {
        if (ag1Var.a() < 9) {
            return;
        }
        int iH = ag1Var.h();
        int iH2 = ag1Var.h();
        int iT = ag1Var.t();
        if (iH == 434 && iH2 == 1195456820 && iT == 3) {
            Cdo.b(j, ag1Var, this.b);
        }
    }

    public final void a(b80 b80Var, p72.d dVar) {
        for (int i = 0; i < this.b.length; i++) {
            dVar.a();
            a62 a62VarA = b80Var.a(dVar.c(), 3);
            jc0 jc0Var = this.a.get(i);
            String str = jc0Var.m;
            hg.a("Invalid closed caption mime type provided: " + str, MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str));
            a62VarA.a(new jc0.a().b(dVar.b()).e(str).m(jc0Var.e).d(jc0Var.d).a(jc0Var.E).a(jc0Var.o).a());
            this.b[i] = a62VarA;
        }
    }
}
