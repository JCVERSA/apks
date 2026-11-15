package com.yandex.div.evaluable.function;

import defpackage.k81;
import defpackage.n81;
import defpackage.s74;
import defpackage.s81;

public final class ColorAlphaComponentSetter extends n81 {
    public static final ColorAlphaComponentSetter g = new ColorAlphaComponentSetter();
    public static final String h = "setColorAlpha";

    public ColorAlphaComponentSetter() {
        super(new s74() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                return k81.c(m260invokeGnj5c28(((k81) obj).k(), ((Number) obj2).doubleValue()));
            }

            public final int m260invokeGnj5c28(int i, double d) {
                return k81.b.a(s81.b(d), k81.i(i), k81.g(i), k81.b(i));
            }
        });
    }

    @Override
    public String f() {
        return h;
    }
}
