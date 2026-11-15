package com.transsion.postdetail.comment.ui;

import com.blankj.utilcode.util.o;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.bean.MyCommentListBean;
import com.transsion.postdetail.bean.Pager;
import com.transsion.postdetail.bean.PagerBody;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.comment.ui.CommentListViewModel$getCommentList$1", f = "CommentListViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "invokeSuspend")
final class CommentListViewModel$getCommentList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final CommentListViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommentListViewModel$getCommentList$1(CommentListViewModel commentListViewModel, Continuation<? super CommentListViewModel$getCommentList$1> continuation) {
        super(2, continuation);
        this.this$0 = commentListViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CommentListViewModel$getCommentList$1 commentListViewModel$getCommentList$1 = new CommentListViewModel$getCommentList$1(this.this$0, continuation);
        commentListViewModel$getCommentList$1.L$0 = obj;
        return commentListViewModel$getCommentList$1;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00c5  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        CommentListViewModel commentListViewModel;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                CommentListViewModel commentListViewModel2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                mg.b.a aVar = mg.b.f66404a;
                String strJ = o.j(new PagerBody(commentListViewModel2.f46789e, Boxing.d(commentListViewModel2.f46790f)));
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyA = aVar.a(strJ);
                if (requestBodyA != null) {
                    ao.a aVarL = commentListViewModel2.l();
                    this.L$0 = commentListViewModel2;
                    this.label = 1;
                    Object objA = ao.a.C0131a.a(aVarL, requestBodyA, null, this, 2, null);
                    if (objA == objF) {
                        return objF;
                    }
                    commentListViewModel = commentListViewModel2;
                    obj = objA;
                }
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("error:");
                    sb2.append(thM456exceptionOrNullimpl);
                }
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            commentListViewModel = (CommentListViewModel) this.L$0;
            ResultKt.b(obj);
            MyCommentListBean myCommentListBean = (MyCommentListBean) ((BaseDto) obj).getData();
            if (myCommentListBean != null) {
                Pager pager = myCommentListBean.getPager();
                if (pager != null) {
                    commentListViewModel.f46789e = String.valueOf(pager.getNextPage());
                    pager.getNextPage();
                    commentListViewModel.f46791g = Intrinsics.c(pager.getHasMore(), Boxing.a(true));
                }
                List list = commentListViewModel.f46788d;
                List<CommentBean> commentList = myCommentListBean.getCommentList();
                if (commentList == null) {
                    commentList = CollectionsKt.l();
                }
                list.addAll(commentList);
                commentListViewModel.m().n(commentListViewModel.f46788d);
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("error:");
            sb3.append(thM456exceptionOrNullimpl);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CommentListViewModel$getCommentList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
