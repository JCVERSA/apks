package com.transsion.postdetail.ui.fragment.preload;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class VideoDataLoader extends am.b {

    private String f47708f;

    private final Lazy f47709g;

    /* JADX WARN: Multi-variable type inference failed */
    public VideoDataLoader() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final ao.b n() {
        return (ao.b) this.f47709g.getValue();
    }

    public static final ao.b o() {
        return (ao.b) kg.c.f63982e.a().h(ao.b.class);
    }

    @Override
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new VideoDataLoader$loadDataFromService$1(this, null), 3, null));
    }

    public final String m() {
        return this.f47708f;
    }

    public final void p(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f47708f = str;
    }

    public VideoDataLoader(String postId) {
        Intrinsics.h(postId, "postId");
        this.f47708f = postId;
        this.f47709g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return VideoDataLoader.o();
            }
        });
    }

    public VideoDataLoader(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str);
    }
}
