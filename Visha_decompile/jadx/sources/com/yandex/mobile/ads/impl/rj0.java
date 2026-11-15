package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.j1a;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Set;

public final class rj0 {
    private final sj0 a;
    private final qj0 b;

    public rj0(sj0 sj0Var, qj0 qj0Var) {
        y45.j(sj0Var, "imageProvider");
        y45.j(qj0Var, "imagePreviewCreator");
        this.a = sj0Var;
        this.b = qj0Var;
    }

    public final void a(Set<xj0> set) {
        Bitmap bitmapA;
        y45.j(set, "imageValues");
        ArrayList<xj0> arrayList = new ArrayList();
        for (Object obj : set) {
            String strC = ((xj0) obj).c();
            if (strC != null && (!j1a.o0(strC))) {
                arrayList.add(obj);
            }
        }
        for (xj0 xj0Var : arrayList) {
            if (this.a.a(xj0Var) == null && this.a.b(xj0Var) == null && (bitmapA = this.b.a(xj0Var)) != null) {
                this.a.a(bitmapA, xj0Var);
            }
        }
    }
}
