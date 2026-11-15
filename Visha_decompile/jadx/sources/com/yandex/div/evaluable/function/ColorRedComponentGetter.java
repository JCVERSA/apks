package com.yandex.div.evaluable.function;

import defpackage.e74;
import defpackage.k81;
import defpackage.m81;

public final class ColorRedComponentGetter extends m81 {
    public static final ColorRedComponentGetter g = new ColorRedComponentGetter();
    public static final String h = "getColorRed";

    public ColorRedComponentGetter() {
        super(new e74() {
            @Override
            public Object invoke(Object obj) {
                return m265invokecIhhviA(((k81) obj).k());
            }

            public final Integer m265invokecIhhviA(int i) {
                return Integer.valueOf(k81.i(i));
            }
        });
    }

    @Override
    public String f() {
        return h;
    }
}
