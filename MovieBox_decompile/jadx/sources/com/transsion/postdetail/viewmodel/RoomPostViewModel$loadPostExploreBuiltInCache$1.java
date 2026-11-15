package com.transsion.postdetail.viewmodel;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$loadPostExploreBuiltInCache$1", f = "RoomPostViewModel.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class RoomPostViewModel$loadPostExploreBuiltInCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final RoomPostViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomPostViewModel$loadPostExploreBuiltInCache$1(RoomPostViewModel roomPostViewModel, Continuation<? super RoomPostViewModel$loadPostExploreBuiltInCache$1> continuation) {
        super(2, continuation);
        this.this$0 = roomPostViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RoomPostViewModel$loadPostExploreBuiltInCache$1 roomPostViewModel$loadPostExploreBuiltInCache$1 = new RoomPostViewModel$loadPostExploreBuiltInCache$1(this.this$0, continuation);
        roomPostViewModel$loadPostExploreBuiltInCache$1.L$0 = obj;
        return roomPostViewModel$loadPostExploreBuiltInCache$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String content;
        PostSubjectItem postSubjectItem;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("room_cache_data", "");
        String string2 = bVar.b().getString("post_explore_net_cache", "");
        if ((string != null && string.length() != 0) || (string2 != null && string2.length() != 0)) {
            wf.a.C0922a.f(wf.a.f74274a, "RoomPostVM", "loadPostExploreBuiltInCache, 有手动缓存或网络缓存，不使用内置", false, 4, null);
            return Unit.f64096a;
        }
        RoomPostViewModel roomPostViewModel = this.this$0;
        try {
            Result.Companion companion = Result.INSTANCE;
            roomPostViewModel.f48150n = System.currentTimeMillis();
            bo.a aVarV = roomPostViewModel.v();
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            String strA = aVarV.a(applicationA);
            if (strA == null || strA.length() == 0) {
                wf.a.C0922a.f(wf.a.f74274a, "RoomPostVM", "loadPostExploreBuiltInCache, 无内置", false, 4, null);
            } else {
                PostSubjectBean postSubjectBean = (PostSubjectBean) com.blankj.utilcode.util.o.d(strA, PostSubjectBean.class);
                wf.a.C0922a c0922a = wf.a.f74274a;
                List<PostSubjectItem> items = postSubjectBean.getItems();
                if (items == null || (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) == null) {
                    content = null;
                } else {
                    String title = postSubjectItem.getTitle();
                    content = (title == null || title.length() == 0) ? postSubjectItem.getContent() : postSubjectItem.getTitle();
                }
                wf.a.C0922a.f(c0922a, "RoomPostVM", "loadPostExploreBuiltInCache, 内置--hase cache,show cache, firstContent:" + content, false, 4, null);
                List<PostSubjectItem> items2 = postSubjectBean.getItems();
                if (items2 != null && !items2.isEmpty()) {
                    roomPostViewModel.f48140d.n(postSubjectBean);
                }
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomPostViewModel$loadPostExploreBuiltInCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
