package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class r90 {
    private final o3 a;
    private final i30 b;

    public r90(o3 o3Var) {
        this(o3Var, new i30());
    }

    public final q90 a(Context context, List<vk1> list) {
        Object next;
        y45.j(context, "context");
        y45.j(list, "preloadedDivKitDesigns");
        this.b.getClass();
        if (i30.a(context)) {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!y45.e(((vk1) next).c().e(), h10.c.a()));
            vk1 vk1Var = (vk1) next;
            if (vk1Var != null) {
                return new q90(vk1Var, this.a, new m20(), new ir0());
            }
        }
        return null;
    }

    public r90(o3 o3Var, i30 i30Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(i30Var, "divKitIntegrationValidator");
        this.a = o3Var;
        this.b = i30Var;
    }
}
