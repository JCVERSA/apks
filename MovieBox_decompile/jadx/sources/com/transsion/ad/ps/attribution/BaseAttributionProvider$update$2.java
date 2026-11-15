package com.transsion.ad.ps.attribution;

import com.transsion.ad.db.pslink.AttributionPoint;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.attribution.BaseAttributionProvider$update$2", f = "BaseAttributionProvider.kt", l = {74}, m = "invokeSuspend")
final class BaseAttributionProvider$update$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final AttributionPoint $attributionPoint;
    int label;
    final BaseAttributionProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseAttributionProvider$update$2(AttributionPoint attributionPoint, BaseAttributionProvider baseAttributionProvider, Continuation<? super BaseAttributionProvider$update$2> continuation) {
        super(2, continuation);
        this.$attributionPoint = attributionPoint;
        this.this$0 = baseAttributionProvider;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BaseAttributionProvider$update$2(this.$attributionPoint, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.$attributionPoint.setUpdateTimestamp(System.currentTimeMillis());
            com.transsion.ad.db.pslink.a aVarF = this.this$0.f();
            AttributionPoint attributionPoint = this.$attributionPoint;
            this.label = 1;
            if (aVarF.b(attributionPoint, this) == objF) {
                return objF;
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
        return ((BaseAttributionProvider$update$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
