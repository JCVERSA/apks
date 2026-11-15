package com.transsion.shorttv.subtitle;

import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import ur.h;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.subtitle.ShortTVSubtitleControlImp$selectSubtitle$6", f = "ShortTVSubtitleControlImp.kt", l = {446}, m = "invokeSuspend")
final class ShortTVSubtitleControlImp$selectSubtitle$6 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final xr.b $bean;
    int label;
    final ShortTVSubtitleControlImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTVSubtitleControlImp$selectSubtitle$6(xr.b bVar, ShortTVSubtitleControlImp shortTVSubtitleControlImp, Continuation<? super ShortTVSubtitleControlImp$selectSubtitle$6> continuation) {
        super(2, continuation);
        this.$bean = bVar;
        this.this$0 = shortTVSubtitleControlImp;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTVSubtitleControlImp$selectSubtitle$6(this.$bean, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        SubtitleDownloadTable subtitleDownloadTableA;
        String id2;
        ShortTVSubtitleControlImp shortTVSubtitleControlImp;
        ShortTvViewModel shortTvViewModel;
        h hVarA0;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            xr.b bVar = this.$bean;
            if (bVar != null && (subtitleDownloadTableA = bVar.a()) != null && (id2 = subtitleDownloadTableA.getId()) != null && (shortTvViewModel = (shortTVSubtitleControlImp = this.this$0).f51052d) != null && (hVarA0 = shortTvViewModel.A0()) != null) {
                String strE = shortTVSubtitleControlImp.f51053e.e();
                this.label = 1;
                if (hVarA0.b(strE, id2, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTVSubtitleControlImp$selectSubtitle$6) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
