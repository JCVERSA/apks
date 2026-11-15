package com.yandex.div.evaluable.function;

import defpackage.k81;
import defpackage.n81;
import defpackage.s74;
import defpackage.s81;

public final class ColorGreenComponentSetter extends n81 {
    public static final ColorGreenComponentSetter g = new ColorGreenComponentSetter();
    public static final String h = "setColorGreen";

    public ColorGreenComponentSetter() {
        super(new s74() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                return k81.c(m264invokeGnj5c28(((k81) obj).k(), ((Number) obj2).doubleValue()));
            }

            public final int m264invokeGnj5c28(int i, double d) {
                return k81.b.a(k81.a(i), k81.i(i), s81.b(d), k81.b(i));
            }
        });
    }

    @Override
    public String f() {
        return h;
    }
}
