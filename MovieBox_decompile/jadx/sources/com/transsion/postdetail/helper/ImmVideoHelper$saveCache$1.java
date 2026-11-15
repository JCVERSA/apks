package com.transsion.postdetail.helper;

import com.blankj.utilcode.util.o;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.ui.fragment.VideoFragment;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.helper.ImmVideoHelper$saveCache$1", f = "ImmVideoHelper.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class ImmVideoHelper$saveCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final List<PostSubjectItem> $videoList;
    int label;
    final ImmVideoHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ImmVideoHelper$saveCache$1(List<PostSubjectItem> list, ImmVideoHelper immVideoHelper, Continuation<? super ImmVideoHelper$saveCache$1> continuation) {
        super(2, continuation);
        this.$videoList = list;
        this.this$0 = immVideoHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ImmVideoHelper$saveCache$1(this.$videoList, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            List<PostSubjectItem> list = this.$videoList;
            List<PostSubjectItem> listSubList = list.subList(list.size() - 1, this.$videoList.size());
            ImmVideoHelper immVideoHelper = this.this$0;
            for (PostSubjectItem postSubjectItem : listSubList) {
                if (postSubjectItem.isCache()) {
                    return Unit.f64096a;
                }
                postSubjectItem.setCache(true);
                wf.a.C0922a.f(wf.a.f74274a, VideoFragment.PAGE_NAME, "save cache " + postSubjectItem.getTitle(), false, 4, null);
                Media media = postSubjectItem.getMedia();
                immVideoHelper.q(media != null ? media.getVideo() : null);
            }
            com.transsion.baselib.report.launch.b.f42221a.b().putString("k_save_video", o.j(listSubList));
        } catch (Exception unused) {
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ImmVideoHelper$saveCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
