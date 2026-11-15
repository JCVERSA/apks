package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.j1a;
import defpackage.y45;
import java.util.ArrayList;

public final class ru1 {
    private final k50 a = new k50();

    public final String a(Context context, kx1 kx1Var, jc jcVar, o50 o50Var) {
        y45.j(context, "context");
        y45.j(o50Var, "environmentConfiguration");
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(kx1Var, "sensitiveModeChecker");
        String[] strArr = {new fb0(new fb0.a(kx1Var.b(context)).j(o50Var.g()).e(o50Var.e()).a(jcVar.a(), jcVar.b()).a(jcVar.c()).L0().l(context).k(context).K0().a(kx1.a(context)).a(context, o50Var.b()).b(context).P0().Q0(), 0).toString(), defpackage.i81.y0(o50Var.f(), "&", null, null, 0, null, qu1.b, 30, null)};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            String str = strArr[i];
            if (!j1a.o0(str)) {
                arrayList.add(str);
            }
        }
        return this.a.a(context, defpackage.i81.y0(arrayList, "&", null, null, 0, null, null, 62, null));
    }
}
