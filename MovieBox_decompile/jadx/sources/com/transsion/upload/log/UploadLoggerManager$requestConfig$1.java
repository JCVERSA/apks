package com.transsion.upload.log;

import com.transsion.upload.bean.LoggerSwitchBean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import uu.b;
import uu.c;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.transsion.upload.log.UploadLoggerManager$requestConfig$1", f = "UploadLoggerManager.kt", l = {}, m = "invokeSuspend")
final class UploadLoggerManager$requestConfig$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    UploadLoggerManager$requestConfig$1(Continuation<? super UploadLoggerManager$requestConfig$1> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UploadLoggerManager$requestConfig$1(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Unit unit;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            Result.Companion companion = Result.INSTANCE;
            b bVarC = c.f73250a.c();
            if (bVarC != null) {
                bVarC.e(new Function1<LoggerSwitchBean, Unit>() {
                    @Override
                    public Object invoke(Object obj2) throws Throwable {
                        invoke((LoggerSwitchBean) obj2);
                        return Unit.f64096a;
                    }

                    public final void invoke(LoggerSwitchBean loggerSwitchBean) throws Throwable {
                        Boolean retrieve = loggerSwitchBean != null ? loggerSwitchBean.getRetrieve() : null;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("retrieve=");
                        sb2.append(retrieve);
                        if (loggerSwitchBean != null ? Intrinsics.c(loggerSwitchBean.getRetrieve(), Boolean.TRUE) : false) {
                            UploadLoggerManager.l(UploadLoggerManager.f54563a, null, 1, null);
                        }
                    }
                });
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UploadLoggerManager$requestConfig$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
