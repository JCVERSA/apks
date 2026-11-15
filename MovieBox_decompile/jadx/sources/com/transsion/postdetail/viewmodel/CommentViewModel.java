package com.transsion.postdetail.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.postdetail.bean.CommentBody;
import com.transsion.postdetail.bean.CommentLikeBody;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class CommentViewModel extends androidx.p009lifecycle.b {

    public static final a f48094i = new a(null);

    private final b0 f48095b;

    private final b0 f48096c;

    private final b0 f48097d;

    private final b0 f48098e;

    private final b0 f48099f;

    private final b0 f48100g;

    private final Lazy f48101h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f48095b = new b0();
        this.f48096c = new b0();
        this.f48097d = new b0();
        this.f48098e = new b0();
        this.f48099f = new b0();
        this.f48100g = new b0();
        this.f48101h = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return CommentViewModel.f();
            }
        });
    }

    public static final ao.a f() {
        return (ao.a) kg.c.f63982e.a().h(ao.a.class);
    }

    public final ao.a i() {
        return (ao.a) this.f48101h.getValue();
    }

    public final void r(String str) {
        wf.a.C0922a.f(wf.a.f74274a, "CommentViewModel", str, false, 4, null);
    }

    public final void g(String topicType, String commentId) {
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(commentId, "commentId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$deleteComment$1(topicType, this, commentId, null), 3, null);
    }

    public final void h(String postId, String topicType, String rootCommentId, String page, int i10, String locCommentId) {
        Intrinsics.h(postId, "postId");
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(rootCommentId, "rootCommentId");
        Intrinsics.h(page, "page");
        Intrinsics.h(locCommentId, "locCommentId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$getCommentList$1(this, postId, topicType, rootCommentId, page, locCommentId, i10, null), 3, null);
    }

    public final b0 j() {
        return this.f48099f;
    }

    public final b0 k() {
        return this.f48096c;
    }

    public final b0 l() {
        return this.f48097d;
    }

    public final b0 m() {
        return this.f48098e;
    }

    public final b0 n() {
        return this.f48095b;
    }

    public final b0 o() {
        return this.f48100g;
    }

    public final void p(un.a info, String topicType, String page, int i10) {
        Intrinsics.h(info, "info");
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(page, "page");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$getSubCommentList$1(this, info, topicType, page, i10, null), 3, null);
    }

    public final void q(CommentLikeBody commentBody) {
        Intrinsics.h(commentBody, "commentBody");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$likeComment$1(commentBody, this, null), 3, null);
    }

    public final void s(String topicType, CommentBody commentBody) {
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(commentBody, "commentBody");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$postComment$1(commentBody, topicType, this, null), 3, null);
    }

    public final void t(String commentId) {
        Intrinsics.h(commentId, "commentId");
        this.f48100g.q(commentId);
    }
}
