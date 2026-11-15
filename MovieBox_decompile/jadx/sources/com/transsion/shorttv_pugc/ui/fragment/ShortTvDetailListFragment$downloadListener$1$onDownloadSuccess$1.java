package com.transsion.shorttv_pugc.ui.fragment;

import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$1", f = "ShortTvDetailListFragment.kt", l = {670}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $ugcVideoId;
    Object L$0;
    Object L$1;
    int label;
    final ShortTvDetailListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$1(ShortTvDetailListFragment shortTvDetailListFragment, String str, Continuation<? super ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvDetailListFragment;
        this.$ugcVideoId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$1(this.this$0, this.$ugcVideoId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object next;
        ShortTvDetailListFragment shortTvDetailListFragment;
        ShorttvModel.UGCVideo uGCVideo;
        String playUrl;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            List listZ = this.this$0.z0().z();
            String str = this.$ugcVideoId;
            Iterator it = listZ.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next).getUgcVideoId(), str));
            ShorttvModel.UGCVideo uGCVideo2 = (ShorttvModel.UGCVideo) next;
            if (uGCVideo2 != null) {
                shortTvDetailListFragment = this.this$0;
                String str2 = this.$ugcVideoId;
                ShortTvViewModel shortTvViewModelZ0 = shortTvDetailListFragment.z0();
                this.L$0 = shortTvDetailListFragment;
                this.L$1 = uGCVideo2;
                this.label = 1;
                Object objW = shortTvViewModelZ0.w(str2, this);
                if (objW == objF) {
                    return objF;
                }
                uGCVideo = uGCVideo2;
                obj = objW;
            }
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        uGCVideo = (ShorttvModel.UGCVideo) this.L$1;
        shortTvDetailListFragment = (ShortTvDetailListFragment) this.L$0;
        ResultKt.b(obj);
        ShorttvModel.UGCVideo uGCVideo3 = (ShorttvModel.UGCVideo) obj;
        if (uGCVideo3 != null && (playUrl = uGCVideo3.getPlayUrl()) != null) {
            pn.f fVar = shortTvDetailListFragment.mOrPlayer;
            if (fVar != null) {
                gn.e eVar = new gn.e(playUrl, playUrl, uGCVideo.getEp(), null, null, 24, null);
                eVar.p(playUrl);
                Boxing.a(fVar.a(eVar));
            }
            uGCVideo.setPlayUrl(playUrl);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
