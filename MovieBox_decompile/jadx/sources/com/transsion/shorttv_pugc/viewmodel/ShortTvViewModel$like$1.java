package com.transsion.shorttv_pugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv_pugc.bean.InteractiveRespData;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$like$1", f = "ShortTvViewModel.kt", l = {339}, m = "invokeSuspend")
final class ShortTvViewModel$like$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $hasLike;
    final String $ugcVideoId;
    private Object L$0;
    int label;
    final ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$like$1(ShortTvViewModel shortTvViewModel, String str, boolean z10, Continuation<? super ShortTvViewModel$like$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$ugcVideoId = str;
        this.$hasLike = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvViewModel$like$1 shortTvViewModel$like$1 = new ShortTvViewModel$like$1(this.this$0, this.$ugcVideoId, this.$hasLike, continuation);
        shortTvViewModel$like$1.L$0 = obj;
        return shortTvViewModel$like$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                ShortTvViewModel shortTvViewModel = this.this$0;
                String str = this.$ugcVideoId;
                boolean z10 = this.$hasLike;
                Result.Companion companion = Result.INSTANCE;
                us.a aVar = shortTvViewModel.f52457a;
                this.label = 1;
                obj = us.a.C0899a.i(aVar, null, str, z10 ? 1 : 0, this, 1, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            InteractiveRespData interactiveRespData = (InteractiveRespData) ((BaseDto) obj).getData();
            objM453constructorimpl = Result.m453constructorimpl(String.valueOf(interactiveRespData != null ? Boxing.d(interactiveRespData.getLikes()) : null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
        }
        Result.m456exceptionOrNullimpl(objM453constructorimpl);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$like$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
