package com.transsion.ad;

import com.transsion.ad.monopoly.MonopolyAdManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.MBAd$initAd$2$1$sdkMb$1", f = "MBAd.kt", l = {Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE}, m = "invokeSuspend")
final class MBAd$initAd$2$1$sdkMb$1 extends SuspendLambda implements Function2<n0, Continuation<? super String>, Object> {
    final MBAd.a $params;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MBAd$initAd$2$1$sdkMb$1(MBAd.a aVar, Continuation<? super MBAd$initAd$2$1$sdkMb$1> continuation) {
        super(2, continuation);
        this.$params = aVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MBAd$initAd$2$1$sdkMb$1(this.$params, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return "包断广告初始化完成";
        }
        ResultKt.b(obj);
        MonopolyAdManager monopolyAdManager = MonopolyAdManager.f41096a;
        String strA = this.$params.a();
        this.label = 1;
        return MonopolyAdManager.b(monopolyAdManager, strA, null, this, 2, null) == objF ? objF : "包断广告初始化完成";
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super String> continuation) {
        return ((MBAd$initAd$2$1$sdkMb$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
