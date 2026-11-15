package com.yandex.div.histogram;

import com.yandex.div.histogram.a;
import defpackage.ar0;
import defpackage.y45;

public interface a {

    public static final class C0297a implements a {
        public static final void c() {
        }

        @Override
        public ar0 a(String str, int i) {
            y45.j(str, "histogramName");
            return new ar0() {
                @Override
                public final void cancel() {
                    a.C0297a.c();
                }
            };
        }
    }

    ar0 a(String str, int i);
}
