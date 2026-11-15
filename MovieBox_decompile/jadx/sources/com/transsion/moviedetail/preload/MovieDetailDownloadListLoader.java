package com.transsion.moviedetail.preload;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class MovieDetailDownloadListLoader extends am.b {

    private String f45551f;

    private final Lazy f45552g;

    public MovieDetailDownloadListLoader(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.f45551f = subjectId;
        this.f45552g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailDownloadListLoader.o();
            }
        });
    }

    public final cx.a m() {
        return (cx.a) this.f45552g.getValue();
    }

    public static final cx.a o() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    @Override
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new MovieDetailDownloadListLoader$loadDataFromService$1(this, null), 3, null));
    }

    public final String n() {
        return this.f45551f;
    }

    public final void p(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f45551f = str;
    }
}
