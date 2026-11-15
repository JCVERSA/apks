package com.yandex.div.evaluable.function;

import defpackage.k81;
import defpackage.n81;
import defpackage.s74;
import defpackage.s81;

public final class ColorBlueComponentSetter extends n81 {
    public static final ColorBlueComponentSetter g = new ColorBlueComponentSetter();
    public static final String h = "setColorBlue";

    public ColorBlueComponentSetter() {
        super(new s74() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                return k81.c(m262invokeGnj5c28(((k81) obj).k(), ((Number) obj2).doubleValue()));
            }

            public final int m262invokeGnj5c28(int i, double d) {
                return k81.b.a(k81.a(i), k81.i(i), k81.g(i), s81.b(d));
            }
        });
    }

    @Override
    public String f() {
        return h;
    }
}
