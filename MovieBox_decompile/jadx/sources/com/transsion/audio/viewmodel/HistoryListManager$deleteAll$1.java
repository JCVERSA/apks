package com.transsion.audio.viewmodel;

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
@DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$deleteAll$1", f = "HistoryListManager.kt", l = {93}, m = "invokeSuspend")
final class HistoryListManager$deleteAll$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final HistoryListManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoryListManager$deleteAll$1(HistoryListManager historyListManager, Continuation<? super HistoryListManager$deleteAll$1> continuation) {
        super(2, continuation);
        this.this$0 = historyListManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoryListManager$deleteAll$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            si.a aVarQ = this.this$0.q();
            if (aVarQ != null) {
                this.label = 1;
                if (aVarQ.a(this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        wf.a.C0922a.g(wf.a.f74274a, "audio deleteAll ok", false, 2, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HistoryListManager$deleteAll$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
