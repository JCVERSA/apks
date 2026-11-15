package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.div2.DivData;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class ij {
    private final o3 a;
    private final i30 b;

    public ij(o3 o3Var) {
        this(o3Var, new i30());
    }

    public final hj a(Context context, q61 q61Var) {
        b30 b30Var;
        Object next;
        y45.j(context, "context");
        y45.j(q61Var, "nativeAdPrivate");
        this.b.getClass();
        if (i30.a(context)) {
            List<b30> listC = q61Var.c();
            if (listC != null) {
                Iterator<T> it = listC.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!y45.e(((b30) next).e(), h10.c.a()));
                b30Var = (b30) next;
            } else {
                b30Var = null;
            }
            if (b30Var != null) {
                DivData divDataB = b30Var.b();
                o3 o3Var = this.a;
                return new hj(divDataB, o3Var, new m20(), new w10(o3Var.q().c(), new f02()), new ir0());
            }
        }
        return null;
    }

    public ij(o3 o3Var, i30 i30Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(i30Var, "divKitIntegrationValidator");
        this.a = o3Var;
        this.b = i30Var;
    }
}
