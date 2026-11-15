package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.ad9;
import defpackage.e74;
import defpackage.y45;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import kotlin.Pair;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class tb1 {
    private final gx0 a;

    public static final class a extends Lambda implements e74 {
        public static final a b = new a();

        public a() {
            super(1);
        }

        @Override
        public final Object invoke(Object obj) {
            lb2 lb2Var = (lb2) obj;
            y45.j(lb2Var, "it");
            return lb2Var.b();
        }
    }

    public static final class b extends Lambda implements e74 {
        public static final b b = new b();

        public b() {
            super(1);
        }

        @Override
        public final Object invoke(Object obj) {
            zb2 zb2Var = (zb2) obj;
            y45.j(zb2Var, "it");
            return abb.a(((kb1) zb2Var.d()).getUrl(), zb2Var.e());
        }
    }

    public static final class c extends Lambda implements e74 {
        public static final c b = new c();

        public c() {
            super(1);
        }

        @Override
        public final Object invoke(Object obj) {
            lb2 lb2Var = (lb2) obj;
            y45.j(lb2Var, "it");
            return lb2Var.a();
        }
    }

    public tb1() {
        this(new gx0());
    }

    public final SortedSet b(y61 y61Var) {
        y45.j(y61Var, "nativeAdResponse");
        return ad9.t(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.S(SequencesKt___SequencesKt.L(defpackage.i81.b0(y61Var.e()), new wb1(this)), xb1.b), ub1.b), vb1.b));
    }

    public final Set<xj0> c(y61 y61Var) {
        y45.j(y61Var, "nativeAdResponse");
        return SequencesKt___SequencesKt.e0(SequencesKt___SequencesKt.S(SequencesKt___SequencesKt.S(SequencesKt___SequencesKt.L(defpackage.i81.b0(y61Var.e()), new wb1(this)), xb1.b), c.b));
    }

    public final List<Pair<String, String>> a(y61 y61Var) {
        y45.j(y61Var, "nativeAdResponse");
        return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.S(SequencesKt___SequencesKt.L(defpackage.i81.b0(y61Var.e()), new wb1(this)), xb1.b), a.b), b.b));
    }

    public tb1(gx0 gx0Var) {
        y45.j(gx0Var, "mediaValuesProvider");
        this.a = gx0Var;
    }
}
