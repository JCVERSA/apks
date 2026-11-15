package com.transsion.postdetail.viewmodel;

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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$loadPostSubPageCache$1", f = "RoomPostViewModel.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class RoomPostViewModel$loadPostSubPageCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $tabId;
    private Object L$0;
    int label;
    final RoomPostViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomPostViewModel$loadPostSubPageCache$1(String str, RoomPostViewModel roomPostViewModel, Continuation<? super RoomPostViewModel$loadPostSubPageCache$1> continuation) {
        super(2, continuation);
        this.$tabId = str;
        this.this$0 = roomPostViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RoomPostViewModel$loadPostSubPageCache$1 roomPostViewModel$loadPostSubPageCache$1 = new RoomPostViewModel$loadPostSubPageCache$1(this.$tabId, this.this$0, continuation);
        roomPostViewModel$loadPostSubPageCache$1.L$0 = obj;
        return roomPostViewModel$loadPostSubPageCache$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        PostSubjectItem postSubjectItem;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        String str = this.$tabId;
        RoomPostViewModel roomPostViewModel = this.this$0;
        try {
            Result.Companion companion = Result.INSTANCE;
            String content = null;
            String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("post_sub_page_cache_" + str, null);
            if (string != null && string.length() != 0) {
                PostSubjectBean postSubjectBean = (PostSubjectBean) com.blankj.utilcode.util.o.d(string, PostSubjectBean.class);
                wf.a.C0922a c0922a = wf.a.f74274a;
                List<PostSubjectItem> items = postSubjectBean.getItems();
                if (items != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) != null) {
                    String title = postSubjectItem.getTitle();
                    content = (title == null || title.length() == 0) ? postSubjectItem.getContent() : postSubjectItem.getTitle();
                }
                wf.a.C0922a.f(c0922a, "RoomPostVM", "loadPostSubPageCache, hase cache,show cache, tabId:" + str + ", content:" + content, false, 4, null);
                roomPostViewModel.f48148l.n(postSubjectBean);
            } else if (!yg.l.f76264a.e()) {
                roomPostViewModel.f48148l.n(null);
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
        return ((RoomPostViewModel$loadPostSubPageCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
