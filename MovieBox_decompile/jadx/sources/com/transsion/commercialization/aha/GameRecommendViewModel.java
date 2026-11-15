package com.transsion.commercialization.aha;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class GameRecommendViewModel extends t0 {

    private final b0 f42569a = new b0();

    private final Lazy f42570b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return GameRecommendViewModel.l();
        }
    });

    private int f42571c;

    public final String j() {
        String simpleName = GameRecommendViewModel.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final g k() {
        return (g) this.f42570b.getValue();
    }

    public static final g l() {
        return (g) kg.c.f63982e.a().h(g.class);
    }

    public final b0 h() {
        return this.f42569a;
    }

    public final void i() {
        k.d(u0.a(this), y0.b(), null, new GameRecommendViewModel$getAllGame$1(this, null), 2, null);
    }
}
