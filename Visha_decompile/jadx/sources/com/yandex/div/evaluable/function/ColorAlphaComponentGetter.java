package com.yandex.div.evaluable.function;

import defpackage.e74;
import defpackage.k81;
import defpackage.m81;

public final class ColorAlphaComponentGetter extends m81 {
    public static final ColorAlphaComponentGetter g = new ColorAlphaComponentGetter();
    public static final String h = "getColorAlpha";

    public ColorAlphaComponentGetter() {
        super(new e74() {
            @Override
            public Object invoke(Object obj) {
                return m259invokecIhhviA(((k81) obj).k());
            }

            public final Integer m259invokecIhhviA(int i) {
                return Integer.valueOf(k81.a(i));
            }
        });
    }

    @Override
    public String f() {
        return h;
    }
}
