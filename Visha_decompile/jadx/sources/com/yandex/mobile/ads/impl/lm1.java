package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class lm1 implements su0 {
    private final float a;
    private final su0.a b;
    private final gg c;

    public lm1(float f) {
        this(f, new su0.a());
    }

    @Override
    public final su0.a a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            int iA = this.c.a(size);
            if (mode2 == Integer.MIN_VALUE) {
                iA = (int) Math.min(size2, iA);
            }
            i2 = View.MeasureSpec.makeMeasureSpec(iA, 1073741824);
        } else if (mode2 == 1073741824 && (mode == Integer.MIN_VALUE || mode == 0)) {
            int iB = this.c.b(size2);
            if (mode == Integer.MIN_VALUE) {
                iB = (int) Math.min(size, iB);
            }
            i = View.MeasureSpec.makeMeasureSpec(iB, 1073741824);
        } else if (mode2 == Integer.MIN_VALUE && mode == Integer.MIN_VALUE && size2 != 0 && size != 0) {
            if (size / size2 > this.a) {
                i = View.MeasureSpec.makeMeasureSpec(this.c.b(size2), 1073741824);
                i2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
            } else {
                int iA2 = this.c.a(size);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                i2 = View.MeasureSpec.makeMeasureSpec(iA2, 1073741824);
                i = iMakeMeasureSpec;
            }
        }
        su0.a aVar = this.b;
        aVar.a = i;
        aVar.b = i2;
        return aVar;
    }

    public lm1(float f, su0.a aVar) {
        this(f, aVar, new gg(f));
    }

    public lm1(float f, su0.a aVar, gg ggVar) {
        y45.j(aVar, "measureSpecHolder");
        y45.j(ggVar, "aspectRatioResolver");
        this.a = f;
        this.b = aVar;
        this.c = ggVar;
    }
}
