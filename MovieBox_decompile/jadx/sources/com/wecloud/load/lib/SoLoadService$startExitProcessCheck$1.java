package com.wecloud.load.lib;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.wecloud.load.lib.SoLoadService$startExitProcessCheck$1", f = "SoLoadService.kt", l = {155}, m = "invokeSuspend")
final class SoLoadService$startExitProcessCheck$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final SoLoadService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SoLoadService$startExitProcessCheck$1(SoLoadService soLoadService, Continuation<? super SoLoadService$startExitProcessCheck$1> continuation) {
        super(2, continuation);
        this.this$0 = soLoadService;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SoLoadService$startExitProcessCheck$1 soLoadService$startExitProcessCheck$1 = new SoLoadService$startExitProcessCheck$1(this.this$0, continuation);
        soLoadService$startExitProcessCheck$1.L$0 = obj;
        return soLoadService$startExitProcessCheck$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            if (!o0.g((n0) this.L$0)) {
                return Unit.f64096a;
            }
            this.label = 1;
            if (u0.a(1000L, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        this.this$0.stopSelf();
        t1 t1Var = this.this$0.exitMonitorJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SoLoadService$startExitProcessCheck$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
