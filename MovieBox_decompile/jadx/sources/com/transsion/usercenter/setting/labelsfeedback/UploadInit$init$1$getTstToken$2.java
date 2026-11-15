package com.transsion.usercenter.setting.labelsfeedback;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.upload.bean.TstTokenEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
@DebugMetadata(c = "com.transsion.usercenter.setting.labelsfeedback.UploadInit$init$1$getTstToken$2", f = "UploadInit.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION_VALUE}, m = "invokeSuspend")
final class UploadInit$init$1$getTstToken$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<String, Unit> $failed;
    final Function1<TstTokenEntity, Unit> $success;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    UploadInit$init$1$getTstToken$2(Function1<? super TstTokenEntity, Unit> function1, Function1<? super String, Unit> function2, Continuation<? super UploadInit$init$1$getTstToken$2> continuation) {
        super(2, continuation);
        this.$success = function1;
        this.$failed = function2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UploadInit$init$1$getTstToken$2(this.$success, this.$failed, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            mv.a aVarF = UploadInit.f55278a.f();
            String strA = gg.a.f61067a.a();
            this.label = 1;
            obj = aVarF.e(strA, this);
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
        TstTokenEntity tstTokenEntity = baseDto != null ? (TstTokenEntity) baseDto.getData() : null;
        if (tstTokenEntity != null) {
            this.$success.invoke(tstTokenEntity);
        } else {
            this.$failed.invoke("tstToken is null");
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UploadInit$init$1$getTstToken$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
