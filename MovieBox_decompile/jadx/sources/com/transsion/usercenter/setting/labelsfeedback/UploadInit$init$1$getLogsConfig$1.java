package com.transsion.usercenter.setting.labelsfeedback;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.upload.bean.LoggerSwitchBean;
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

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.setting.labelsfeedback.UploadInit$init$1$getLogsConfig$1", f = "UploadInit.kt", l = {85}, m = "invokeSuspend")
final class UploadInit$init$1$getLogsConfig$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<LoggerSwitchBean, Unit> $callback;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    UploadInit$init$1$getLogsConfig$1(Function1<? super LoggerSwitchBean, Unit> function1, Continuation<? super UploadInit$init$1$getLogsConfig$1> continuation) {
        super(2, continuation);
        this.$callback = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UploadInit$init$1$getLogsConfig$1(this.$callback, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            mv.a aVarF = UploadInit.f55278a.f();
            this.label = 1;
            obj = mv.a.C0818a.a(aVarF, null, this, 1, null);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        BaseDto baseDto = (BaseDto) obj;
        wf.a.C0922a.f(wf.a.f74274a, "UploadLoggerManager", "getLogsConfig code=" + baseDto.getCode(), false, 4, null);
        this.$callback.invoke(baseDto.getData());
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UploadInit$init$1$getLogsConfig$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
