package com.transsion.payment.lib;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n"}, d2 = {"T", "Lkotlinx/coroutines/n0;", "<anonymous>"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.PayUtils$retryWithBackoff$2", f = "PayUtils.kt", l = {27}, m = "invokeSuspend")
final class PayUtils$retryWithBackoff$2 extends SuspendLambda implements Function2<n0, Continuation<Object>, Object> {
    final Function1<Continuation<Object>, Object> $action;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PayUtils$retryWithBackoff$2(Function1<? super Continuation<Object>, ? extends Object> function1, Continuation<? super PayUtils$retryWithBackoff$2> continuation) {
        super(2, continuation);
        this.$action = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PayUtils$retryWithBackoff$2(this.$action, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Function1<Continuation<Object>, Object> function1 = this.$action;
            this.label = 1;
            obj = function1.invoke(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
        return ((PayUtils$retryWithBackoff$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
