package com.yandex.div.core.widget;

import defpackage.e74;
import defpackage.go8;
import defpackage.odc;
import defpackage.wn8;

public interface AspectView {
    public static final Companion x6 = Companion.a;

    public static final class Companion {
        public static final Companion a = new Companion();

        public final go8 a() {
            return odc.c(Float.valueOf(0.0f), new e74() {
                public final Float invoke(float f) {
                    return Float.valueOf(wn8.c(f, 0.0f));
                }

                @Override
                public Object invoke(Object obj) {
                    return invoke(((Number) obj).floatValue());
                }
            });
        }
    }

    void setAspectRatio(float f);
}
