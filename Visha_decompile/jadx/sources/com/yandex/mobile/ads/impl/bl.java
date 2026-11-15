package com.yandex.mobile.ads.impl;

import android.graphics.RectF;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class bl {
    private final k02 a = new k02();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v9 */
    public final j02 a(RectF rectF, xj0 xj0Var) {
        List<j02> listC;
        y45.j(rectF, "viewRect");
        y45.j(xj0Var, "imageValue");
        RectF rectF2 = new RectF(0.0f, 0.0f, xj0Var.g(), xj0Var.a());
        r02 r02VarE = xj0Var.e();
        Object next = 0;
        if (r02VarE == null || (listC = r02VarE.c()) == null) {
            return null;
        }
        Iterator<T> it = listC.iterator();
        if (it.hasNext()) {
            next = it.next();
            while (it.hasNext()) {
                j02 j02Var = (j02) it.next();
                next = (j02) next;
                this.a.getClass();
                y45.j(next, "first");
                y45.j(j02Var, "second");
                y45.j(rectF2, "imageSize");
                y45.j(rectF, "viewSize");
                float fA = n02.a(next, rectF, rectF2);
                float fA2 = n02.a(j02Var, rectF, rectF2);
                if (fA != Float.MAX_VALUE) {
                    if (fA == fA2) {
                        if (next.a() > j02Var.a()) {
                        }
                    } else if (fA > fA2) {
                    }
                }
                next = j02Var;
            }
        }
        return (j02) next;
    }
}
