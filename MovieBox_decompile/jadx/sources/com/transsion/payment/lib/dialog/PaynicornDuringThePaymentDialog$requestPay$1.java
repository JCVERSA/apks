package com.transsion.payment.lib.dialog;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CreateOrderReq;
import com.transsion.payment.lib.bean.CreateOrderRes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$requestPay$1", f = "PaynicornDuringThePaymentDialog.kt", l = {Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE}, m = "invokeSuspend")
final class PaynicornDuringThePaymentDialog$requestPay$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final PaynicornDuringThePaymentDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaynicornDuringThePaymentDialog$requestPay$1(PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog, Continuation<? super PaynicornDuringThePaymentDialog$requestPay$1> continuation) {
        super(2, continuation);
        this.this$0 = paynicornDuringThePaymentDialog;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaynicornDuringThePaymentDialog$requestPay$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Map<String, String> mapH;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            PaymentService paymentServiceE0 = this.this$0.E0();
            CreateOrderReq createOrderReq = this.this$0.mCreateOrderReq;
            String productId = createOrderReq != null ? createOrderReq.getProductId() : null;
            CreateOrderReq createOrderReq2 = this.this$0.mCreateOrderReq;
            String cpFrontPage = createOrderReq2 != null ? createOrderReq2.getCpFrontPage() : null;
            CreateOrderReq createOrderReq3 = this.this$0.mCreateOrderReq;
            if (createOrderReq3 == null || (mapH = createOrderReq3.getExtStrJson()) == null) {
                mapH = MapsKt.h();
            }
            this.label = 1;
            obj = paymentServiceE0.i(productId, cpFrontPage, mapH, this);
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
        if (!Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0") || baseDto.getData() == null) {
            this.this$0.I0(1001, "requestPay() --> 请求接口创建订单....失败 --> code = " + (baseDto != null ? baseDto.getCode() : null));
        } else {
            this.this$0.L0((CreateOrderRes) baseDto.getData());
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaynicornDuringThePaymentDialog$requestPay$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
