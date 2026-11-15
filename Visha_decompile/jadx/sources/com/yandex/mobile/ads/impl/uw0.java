package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;
import java.util.Set;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class uw0 {
    private final gx0 a = new gx0();

    public static final class a extends Lambda implements e74 {
        public a() {
            super(1);
        }

        @Override
        public final Object invoke(Object obj) {
            g41 g41Var = (g41) obj;
            y45.j(g41Var, "nativeAd");
            uw0.this.a.getClass();
            return gx0.a(g41Var);
        }
    }

    public static final class b extends Lambda implements e74 {
        public static final b b = new b();

        public b() {
            super(1);
        }

        @Override
        public final Object invoke(Object obj) {
            ex0 ex0Var = (ex0) obj;
            y45.j(ex0Var, "mediaValue");
            return ex0Var.b();
        }
    }

    public final Set<wu0> a(s41 s41Var) {
        y45.j(s41Var, "nativeAdBlock");
        return SequencesKt___SequencesKt.e0(SequencesKt___SequencesKt.H(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.L(defpackage.i81.b0(s41Var.c().e()), new a()), b.b)));
    }
}
