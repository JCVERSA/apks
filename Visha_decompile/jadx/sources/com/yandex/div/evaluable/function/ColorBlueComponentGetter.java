package com.yandex.div.evaluable.function;

import defpackage.e74;
import defpackage.k81;
import defpackage.m81;

public final class ColorBlueComponentGetter extends m81 {
    public static final ColorBlueComponentGetter g = new ColorBlueComponentGetter();
    public static final String h = "getColorBlue";

    public ColorBlueComponentGetter() {
        super(new e74() {
            @Override
            public Object invoke(Object obj) {
                return m261invokecIhhviA(((k81) obj).k());
            }

            public final Integer m261invokecIhhviA(int i) {
                return Integer.valueOf(k81.b(i));
            }
        });
    }

    @Override
    public String f() {
        return h;
    }
}
