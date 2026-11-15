package com.transsion.moviedetail.preload;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class MovieDetailResourcesSeasonLoader extends am.b {

    private String f45554f;

    private final Lazy f45555g;

    public MovieDetailResourcesSeasonLoader(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.f45554f = subjectId;
        this.f45555g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailResourcesSeasonLoader.o();
            }
        });
    }

    public final cx.a m() {
        return (cx.a) this.f45555g.getValue();
    }

    public static final cx.a o() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    @Override
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new MovieDetailResourcesSeasonLoader$loadDataFromService$1(this, null), 3, null));
    }

    public final String n() {
        return this.f45554f;
    }

    public final void p(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f45554f = str;
    }
}
