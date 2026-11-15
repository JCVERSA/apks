package com.transsion.postdetail.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class PostDetailCommentsFragmentViewModel extends t0 {

    private final Lazy f48115a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailCommentsFragmentViewModel.d();
        }
    });

    private final b0 f48116b = new b0();

    public static final ao.a d() {
        return (ao.a) kg.c.f63982e.a().h(ao.a.class);
    }

    public final ao.a f() {
        return (ao.a) this.f48115a.getValue();
    }

    public final void e(String postId, String rootCommentId, String page, int i10) {
        Intrinsics.h(postId, "postId");
        Intrinsics.h(rootCommentId, "rootCommentId");
        Intrinsics.h(page, "page");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PostDetailCommentsFragmentViewModel$getCommentList$1(this, postId, rootCommentId, page, i10, null), 3, null);
    }

    public final b0 g() {
        return this.f48116b;
    }
}
