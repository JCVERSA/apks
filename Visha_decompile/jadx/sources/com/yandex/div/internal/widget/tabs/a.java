package com.yandex.div.internal.widget.tabs;

import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import defpackage.pp5;

public abstract class a implements ViewPagerFixedSizeLayout.a {
    public final ViewGroup a;
    public final d.b b;
    public final d.a c;
    public Bundle e;
    public final SparseArray d = new SparseArray();
    public int f = 0;
    public float g = 0.0f;

    public a(ViewGroup viewGroup, d.b bVar, d.a aVar) {
        this.a = viewGroup;
        this.b = bVar;
        this.c = aVar;
    }

    public static int i(int i, int i2, float f) {
        pp5.a("[Y:BaseCardHeightCalculator]", "New optimal height for tab " + i2 + " with position offset " + f + " is " + i);
        return i;
    }

    @Override
    public int a(int i, final int i2) {
        f fVar = (f) this.d.get(i);
        if (fVar == null) {
            int iApply = this.c.apply();
            if (iApply == 0) {
                return 0;
            }
            final int size = View.MeasureSpec.getSize(i);
            f fVar2 = new f(iApply, new f.a() {
                @Override
                public final int a(int i3) {
                    return this.a.h(size, i2, i3);
                }
            });
            Bundle bundle = this.e;
            if (bundle != null) {
                fVar2.e(bundle, i);
                fVar2.d(this.e, i);
                if (this.e.isEmpty()) {
                    this.e = null;
                }
            }
            this.d.put(i, fVar2);
            fVar = fVar2;
        }
        return i(f(fVar, this.f, this.g), this.f, this.g);
    }

    @Override
    public void b() {
        pp5.a("[Y:BaseCardHeightCalculator]", "reseting layout...");
        this.e = null;
        this.d.clear();
    }

    @Override
    public void d(int i, float f) {
        pp5.a("[Y:BaseCardHeightCalculator]", "request layout for tab " + i + " with position offset " + f);
        this.f = i;
        this.g = f;
    }

    public abstract int f(f fVar, int i, float f);

    public boolean g() {
        return this.d.size() == 0;
    }

    public final int h(int i, int i2, int i3) {
        return this.b.a(this.a, i, i2, i3);
    }
}
