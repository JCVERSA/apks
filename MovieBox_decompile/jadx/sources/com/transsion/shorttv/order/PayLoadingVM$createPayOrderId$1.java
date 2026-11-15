package com.transsion.shorttv.order;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import com.transsion.shorttv.order.bean.HttpErrorBodyBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import retrofit2.HttpException;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.order.PayLoadingVM$createPayOrderId$1", f = "PayLoadingVM.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE}, m = "invokeSuspend")
final class PayLoadingVM$createPayOrderId$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final CreatePaynicornOrderReqBean $orderReq;
    private Object L$0;
    int label;
    final PayLoadingVM this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PayLoadingVM$createPayOrderId$1(CreatePaynicornOrderReqBean createPaynicornOrderReqBean, PayLoadingVM payLoadingVM, Continuation<? super PayLoadingVM$createPayOrderId$1> continuation) {
        super(2, continuation);
        this.$orderReq = createPaynicornOrderReqBean;
        this.this$0 = payLoadingVM;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PayLoadingVM$createPayOrderId$1 payLoadingVM$createPayOrderId$1 = new PayLoadingVM$createPayOrderId$1(this.$orderReq, this.this$0, continuation);
        payLoadingVM$createPayOrderId$1.L$0 = obj;
        return payLoadingVM$createPayOrderId$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        HttpErrorBodyBean httpErrorBodyBean;
        PayLoadingVM payLoadingVM;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                CreatePaynicornOrderReqBean createPaynicornOrderReqBean = this.$orderReq;
                PayLoadingVM payLoadingVM2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                g gVar = g.f51041a;
                this.L$0 = payLoadingVM2;
                this.label = 1;
                obj = gVar.b(createPaynicornOrderReqBean, this);
                if (obj == objF) {
                    return objF;
                }
                payLoadingVM = payLoadingVM2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                payLoadingVM = (PayLoadingVM) this.L$0;
                ResultKt.b(obj);
            }
            payLoadingVM.f51030d.n(((BaseDto) obj).getData());
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        PayLoadingVM payLoadingVM3 = this.this$0;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            if (thM456exceptionOrNullimpl instanceof HttpException) {
                httpErrorBodyBean = HttpErrorBodyBean.INSTANCE.a((HttpException) thM456exceptionOrNullimpl);
            } else {
                String message = thM456exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "";
                }
                httpErrorBodyBean = new HttpErrorBodyBean(message, TmcConstants.COLD_OPEN_TYPE, "");
            }
            payLoadingVM3.f51032f.n(httpErrorBodyBean);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PayLoadingVM$createPayOrderId$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
