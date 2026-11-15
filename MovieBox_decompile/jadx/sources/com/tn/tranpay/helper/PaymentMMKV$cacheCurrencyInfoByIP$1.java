package com.tn.tranpay.helper;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.tn.tranpay.helper.PaymentMMKV", f = "PaymentMMKV.kt", l = {109}, m = "cacheCurrencyInfoByIP")
final class PaymentMMKV$cacheCurrencyInfoByIP$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final PaymentMMKV this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentMMKV$cacheCurrencyInfoByIP$1(PaymentMMKV paymentMMKV, Continuation<? super PaymentMMKV$cacheCurrencyInfoByIP$1> continuation) {
        super(continuation);
        this.this$0 = paymentMMKV;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a(null, this);
    }
}
