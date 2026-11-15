package com.yandex.div.internal.widget.tabs;

import android.view.ViewGroup;

public class c extends a {
    public c(ViewGroup viewGroup, d.b bVar, d.a aVar) {
        super(viewGroup, bVar, aVar);
    }

    @Override
    public int a(int i, int i2) {
        b();
        return super.a(i, i2);
    }

    @Override
    public boolean c(int i, float f) {
        return true;
    }

    @Override
    public int f(f fVar, int i, float f) {
        if (f < 0.01f) {
            return fVar.c(i);
        }
        int iC = fVar.c(i);
        return Math.round(iC + ((fVar.c(i + 1) - iC) * f));
    }
}
