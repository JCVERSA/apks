package com.transsion.shorttv_pugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$follow$1", f = "ShortTvViewModel.kt", l = {358}, m = "invokeSuspend")
final class ShortTvViewModel$follow$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $hasSubscribe;
    final String $userId;
    private Object L$0;
    int label;
    final ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$follow$1(ShortTvViewModel shortTvViewModel, String str, boolean z10, Continuation<? super ShortTvViewModel$follow$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$userId = str;
        this.$hasSubscribe = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvViewModel$follow$1 shortTvViewModel$follow$1 = new ShortTvViewModel$follow$1(this.this$0, this.$userId, this.$hasSubscribe, continuation);
        shortTvViewModel$follow$1.L$0 = obj;
        return shortTvViewModel$follow$1;
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
                String str = this.$userId;
                boolean z10 = this.$hasSubscribe;
                Result.Companion companion = Result.INSTANCE;
                this.label = 1;
                obj = us.a.C0899a.g(shortTvViewModel.f52457a, null, str, !z10, this, 1, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) obj);
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
        return ((ShortTvViewModel$follow$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
