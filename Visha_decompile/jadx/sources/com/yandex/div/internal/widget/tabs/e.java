package com.yandex.div.internal.widget.tabs;

import android.util.SparseArray;
import android.view.ViewGroup;
import defpackage.xi;

public class e extends a {
    public e(ViewGroup viewGroup, d.b bVar, d.a aVar) {
        super(viewGroup, bVar, aVar);
    }

    @Override
    public boolean c(int i, float f) {
        if (g()) {
            return true;
        }
        return (i == 0 || (i == 1 && f <= 0.0f)) && j();
    }

    @Override
    public int f(f fVar, int i, float f) {
        if (i > 0) {
            return fVar.b();
        }
        if (f < 0.01f) {
            return fVar.a();
        }
        int iA = fVar.a();
        return Math.round(iA + ((fVar.b() - iA) * f));
    }

    public final boolean j() {
        xi.h(this.d.size() > 0);
        SparseArray sparseArray = this.d;
        f fVar = (f) sparseArray.valueAt(sparseArray.size() - 1);
        return fVar.a() != fVar.b();
    }
}
