package com.yandex.mobile.ads.impl;

import androidx.media3.common.MimeTypes;
import java.util.List;

public final class jx1 {
    private final List<jc0> a;
    private final a62[] b;

    public jx1(List<jc0> list) {
        this.a = list;
        this.b = new a62[list.size()];
    }

    public final void a(long j, ag1 ag1Var) {
        Cdo.a(j, ag1Var, this.b);
    }

    public final void a(b80 b80Var, p72.d dVar) {
        for (int i = 0; i < this.b.length; i++) {
            dVar.a();
            a62 a62VarA = b80Var.a(dVar.c(), 3);
            jc0 jc0Var = this.a.get(i);
            String str = jc0Var.m;
            hg.a("Invalid closed caption mime type provided: " + str, MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str));
            String strB = jc0Var.b;
            if (strB == null) {
                strB = dVar.b();
            }
            a62VarA.a(new jc0.a().b(strB).e(str).m(jc0Var.e).d(jc0Var.d).a(jc0Var.E).a(jc0Var.o).a());
            this.b[i] = a62VarA;
        }
    }
}
