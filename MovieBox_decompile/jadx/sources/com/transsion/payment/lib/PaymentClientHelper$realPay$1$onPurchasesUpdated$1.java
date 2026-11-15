package com.transsion.payment.lib;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.bean.CheckPaymentBean;
import com.transsion.payment.lib.bean.CreateOrderRes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.PaymentClientHelper$realPay$1$onPurchasesUpdated$1", f = "PaymentClientHelper.kt", l = {126}, m = "invokeSuspend")
final class PaymentClientHelper$realPay$1$onPurchasesUpdated$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final CreateOrderRes $orderRequest;
    final b $payCallback;
    final PaymentService $paymentService;
    int label;

    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.transsion.payment.lib.PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1", f = "PaymentClientHelper.kt", l = {128}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final CreateOrderRes $orderRequest;
        final b $payCallback;
        final PaymentService $paymentService;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PaymentService paymentService, CreateOrderRes createOrderRes, b bVar, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$paymentService = paymentService;
            this.$orderRequest = createOrderRes;
            this.$payCallback = bVar;
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$paymentService, this.$orderRequest, this.$payCallback, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Exception {
            String balanceCoin;
            String addCoin;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                PaymentService paymentService = this.$paymentService;
                String tradingOrderId = this.$orderRequest.getTradingOrderId();
                this.label = 1;
                obj = paymentService.e(tradingOrderId, this);
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
            if (!Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0")) {
                d.f45901a.b(PaymentClientHelper.f45891a.b() + " --> realPay() --> orderCheckResult?.code = " + (baseDto != null ? baseDto.getCode() : null) + " -- orderCheckResult?.msg = " + (baseDto != null ? baseDto.getMsg() : null) + " -- 接口请求失败");
                throw new Exception(baseDto != null ? baseDto.getMsg() : null);
            }
            d.f45901a.a(PaymentClientHelper.f45891a.b() + " --> realPay() --> paynicorn 发货成功");
            int i11 = 0;
            this.$payCallback.b(false);
            b bVar = this.$payCallback;
            CheckPaymentBean checkPaymentBean = (CheckPaymentBean) baseDto.getData();
            if (checkPaymentBean != null && (addCoin = checkPaymentBean.getAddCoin()) != null) {
                i11 = Integer.parseInt(addCoin);
            }
            CheckPaymentBean checkPaymentBean2 = (CheckPaymentBean) baseDto.getData();
            if (checkPaymentBean2 == null || (balanceCoin = checkPaymentBean2.getBalanceCoin()) == null) {
                balanceCoin = "";
            }
            bVar.c(i11, balanceCoin, this.$orderRequest.getTradingOrderId());
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentClientHelper$realPay$1$onPurchasesUpdated$1(b bVar, CreateOrderRes createOrderRes, PaymentService paymentService, Continuation<? super PaymentClientHelper$realPay$1$onPurchasesUpdated$1> continuation) {
        super(2, continuation);
        this.$payCallback = bVar;
        this.$orderRequest = createOrderRes;
        this.$paymentService = paymentService;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaymentClientHelper$realPay$1$onPurchasesUpdated$1(this.$payCallback, this.$orderRequest, this.$paymentService, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                PayUtils payUtils = PayUtils.f45890a;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$paymentService, this.$orderRequest, this.$payCallback, null);
                this.label = 1;
                if (PayUtils.b(payUtils, 0L, 0, anonymousClass1, this, 3, null) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        } catch (Exception e10) {
            d.f45901a.b(PaymentClientHelper.f45891a.b() + " --> realPay() --> handlePurchase 发货进行中ing --> e = " + e10.getMessage());
            this.$payCallback.b(false);
            this.$payCallback.a(Boxing.d(-30), e10.getMessage(), false, this.$orderRequest.getTradingOrderId());
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaymentClientHelper$realPay$1$onPurchasesUpdated$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
