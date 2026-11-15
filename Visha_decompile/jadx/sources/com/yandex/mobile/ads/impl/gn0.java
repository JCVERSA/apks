package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;

public final class gn0 {
    private final zb2<go0> a;
    private final vu b;
    private final z12 c;
    private final kz d;

    public gn0(Context context, zb2<go0> zb2Var, vu vuVar, z12 z12Var, kz kzVar) {
        y45.j(context, "context");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(vuVar, "creativeAssetsProvider");
        y45.j(z12Var, "sponsoredAssetProviderCreator");
        y45.j(kzVar, "callToActionAssetProvider");
        this.a = zb2Var;
        this.b = vuVar;
        this.c = z12Var;
        this.d = kzVar;
    }

    public final List<ig<?>> a() {
        Object next;
        uu uuVarB = this.a.b();
        this.b.getClass();
        List<ig<?>> listE1 = defpackage.i81.e1(vu.a(uuVarB));
        for (Pair pair : defpackage.y71.n(new Pair("sponsored", this.c.a()), new Pair("call_to_action", this.d))) {
            String str = (String) pair.component1();
            gz gzVar = (gz) pair.component2();
            Iterator<T> it = listE1.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!y45.e(((ig) next).b(), str));
            if (((ig) next) == null) {
                listE1.add(gzVar.a());
            }
        }
        return listE1;
    }
}
