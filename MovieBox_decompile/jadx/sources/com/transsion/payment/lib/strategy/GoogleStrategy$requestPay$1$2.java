package com.transsion.payment.lib.strategy;

import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CreateOrderReq;
import com.transsion.payment.lib.bean.CreateOrderRes;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.strategy.GoogleStrategy$requestPay$1$2", f = "GoogleStrategy.kt", l = {95}, m = "invokeSuspend")
final class GoogleStrategy$requestPay$1$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final AppCompatActivity $activity;
    final CreateOrderReq $createOrderReq;
    final com.transsion.payment.lib.b $payCallback;
    final boolean $subscriptOrder;
    int label;
    final GoogleStrategy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GoogleStrategy$requestPay$1$2(GoogleStrategy googleStrategy, CreateOrderReq createOrderReq, AppCompatActivity appCompatActivity, boolean z10, com.transsion.payment.lib.b bVar, Continuation<? super GoogleStrategy$requestPay$1$2> continuation) {
        super(2, continuation);
        this.this$0 = googleStrategy;
        this.$createOrderReq = createOrderReq;
        this.$activity = appCompatActivity;
        this.$subscriptOrder = z10;
        this.$payCallback = bVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GoogleStrategy$requestPay$1$2(this.this$0, this.$createOrderReq, this.$activity, this.$subscriptOrder, this.$payCallback, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0088  */
    /* JADX WARN: Code duplicated, block: B:36:0x009c  */
    /* JADX WARN: Code duplicated, block: B:38:0x009f  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Integer numD;
        String code;
        String tradingOrderId;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            PaymentService paymentServiceZ = this.this$0.z();
            String productId = this.$createOrderReq.getProductId();
            String cpFrontPage = this.$createOrderReq.getCpFrontPage();
            Map<String, String> extStrJson = this.$createOrderReq.getExtStrJson();
            this.label = 1;
            obj = paymentServiceZ.h(productId, cpFrontPage, extStrJson, this);
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
        if (Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0")) {
            CreateOrderRes createOrderRes = (CreateOrderRes) baseDto.getData();
            if (TextUtils.isEmpty(createOrderRes != null ? createOrderRes.getTradingOrderId() : null)) {
                com.transsion.payment.lib.b bVar = this.$payCallback;
                if (baseDto != null) {
                    numD = null;
                } else {
                    numD = null;
                }
                com.transsion.payment.lib.b.a.a(bVar, numD, String.valueOf(baseDto != null ? baseDto.getMsg() : null), false, null, 8, null);
            } else {
                CreateOrderRes createOrderRes2 = (CreateOrderRes) baseDto.getData();
                if (createOrderRes2 == null || (tradingOrderId = createOrderRes2.getTradingOrderId()) == null) {
                    tradingOrderId = "";
                }
                this.this$0.G(this.$activity, this.$createOrderReq.getProductId(), tradingOrderId, this.$subscriptOrder, this.$payCallback);
            }
        } else {
            com.transsion.payment.lib.b bVar2 = this.$payCallback;
            if (baseDto != null || (code = baseDto.getCode()) == null) {
                numD = null;
            } else {
                numD = Boxing.d(Integer.parseInt(code));
            }
            com.transsion.payment.lib.b.a.a(bVar2, numD, String.valueOf(baseDto != null ? baseDto.getMsg() : null), false, null, 8, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GoogleStrategy$requestPay$1$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
