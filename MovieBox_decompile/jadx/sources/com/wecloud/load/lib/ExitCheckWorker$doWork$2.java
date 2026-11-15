package com.wecloud.load.lib;

import android.content.Context;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00070\u0001¢\u0006\u0002\b\u0002*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroidx/work/i$a;", "Lkotlin/jvm/internal/EnhancedNullability;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroidx/work/i$a;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.wecloud.load.lib.ExitCheckWorker$doWork$2", f = "ExitCheckWorker.kt", l = {}, m = "invokeSuspend")
final class ExitCheckWorker$doWork$2 extends SuspendLambda implements Function2<n0, Continuation<? super androidx.work.i.a>, Object> {
    int label;
    final ExitCheckWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExitCheckWorker$doWork$2(ExitCheckWorker exitCheckWorker, Continuation<? super ExitCheckWorker$doWork$2> continuation) {
        super(2, continuation);
        this.this$0 = exitCheckWorker;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ExitCheckWorker$doWork$2(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            ExitCheckWorker.Companion aVar = ExitCheckWorker.INSTANCE;
            Context contextB = this.this$0.b();
            Intrinsics.g(contextB, "getApplicationContext(...)");
            aVar.a(contextB);
            return androidx.work.i.a.c();
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, "ExitCheckWorker", "ExitCheckWorker 异常: " + e10.getMessage(), e10, false, 8, null);
            return androidx.work.i.a.a();
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super androidx.work.i.a> continuation) {
        return ((ExitCheckWorker$doWork$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
