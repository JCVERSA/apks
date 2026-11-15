package com.yandex.div.evaluable.function;

import defpackage.e74;
import defpackage.k81;
import defpackage.m81;

public final class ColorGreenComponentGetter extends m81 {
    public static final ColorGreenComponentGetter g = new ColorGreenComponentGetter();
    public static final String h = "getColorGreen";

    public ColorGreenComponentGetter() {
        super(new e74() {
            @Override
            public Object invoke(Object obj) {
                return m263invokecIhhviA(((k81) obj).k());
            }

            public final Integer m263invokecIhhviA(int i) {
                return Integer.valueOf(k81.g(i));
            }
        });
    }

    @Override
    public String f() {
        return h;
    }
}
