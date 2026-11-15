package com.transsion.payment.lib.dialog;

import android.text.TextUtils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CreateOrderRes;
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

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1", f = "PaynicornDuringThePaymentDialog.kt", l = {179}, m = "invokeSuspend")
final class PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final PaynicornDuringThePaymentDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1(PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog, Continuation<? super PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1> continuation) {
        super(2, continuation);
        this.this$0 = paynicornDuringThePaymentDialog;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1(this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00d1 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:6:0x0012, B:21:0x0045, B:23:0x0049, B:26:0x0051, B:33:0x0065, B:36:0x006e, B:61:0x010b, B:37:0x0077, B:40:0x0080, B:42:0x008c, B:43:0x0095, B:45:0x00a1, B:46:0x00a9, B:47:0x00c2, B:50:0x00cb, B:52:0x00d1, B:55:0x00d9, B:58:0x00e1, B:60:0x00e7, B:13:0x0026, B:15:0x0032, B:17:0x0038), top: B:70:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d9 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:6:0x0012, B:21:0x0045, B:23:0x0049, B:26:0x0051, B:33:0x0065, B:36:0x006e, B:61:0x010b, B:37:0x0077, B:40:0x0080, B:42:0x008c, B:43:0x0095, B:45:0x00a1, B:46:0x00a9, B:47:0x00c2, B:50:0x00cb, B:52:0x00d1, B:55:0x00d9, B:58:0x00e1, B:60:0x00e7, B:13:0x0026, B:15:0x0032, B:17:0x0038), top: B:70:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00de  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e1 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:6:0x0012, B:21:0x0045, B:23:0x0049, B:26:0x0051, B:33:0x0065, B:36:0x006e, B:61:0x010b, B:37:0x0077, B:40:0x0080, B:42:0x008c, B:43:0x0095, B:45:0x00a1, B:46:0x00a9, B:47:0x00c2, B:50:0x00cb, B:52:0x00d1, B:55:0x00d9, B:58:0x00e1, B:60:0x00e7, B:13:0x0026, B:15:0x0032, B:17:0x0038), top: B:70:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00e6  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog;
        String code;
        String msg;
        String reason;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                PaymentService paymentServiceE0 = paynicornDuringThePaymentDialog2.E0();
                CreateOrderRes createOrderRes = paynicornDuringThePaymentDialog2.mCreateOrderRes;
                String tradingOrderId = createOrderRes != null ? createOrderRes.getTradingOrderId() : null;
                this.L$0 = paynicornDuringThePaymentDialog2;
                this.label = 1;
                Object objE = paymentServiceE0.e(tradingOrderId, this);
                if (objE == objF) {
                    return objF;
                }
                paynicornDuringThePaymentDialog = paynicornDuringThePaymentDialog2;
                obj = objE;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                paynicornDuringThePaymentDialog = (PaynicornDuringThePaymentDialog) this.L$0;
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            String code2 = baseDto != null ? baseDto.getCode() : null;
            if (code2 == null) {
                if (baseDto != null) {
                    code = baseDto.getCode();
                } else {
                    code = null;
                }
                if (baseDto != null) {
                    msg = baseDto.getMsg();
                } else {
                    msg = null;
                }
                if (baseDto != null) {
                    reason = baseDto.getReason();
                } else {
                    reason = null;
                }
                PaynicornDuringThePaymentDialog.Q0(paynicornDuringThePaymentDialog, "orderCheck4Paynicorn() --> code = " + code + " -- msg = " + msg + " -- reason = " + reason, 0, 2, null);
            } else {
                int iHashCode = code2.hashCode();
                if (iHashCode != 48) {
                    if (iHashCode != 51508) {
                        if (iHashCode == 52469 && code2.equals("500")) {
                            paynicornDuringThePaymentDialog.I0(1005, "orderCheck4Paynicorn() --> 500 --> 服务器内部错误");
                        } else {
                            if (baseDto != null) {
                                code = baseDto.getCode();
                            } else {
                                code = null;
                            }
                            if (baseDto != null) {
                                msg = baseDto.getMsg();
                            } else {
                                msg = null;
                            }
                            if (baseDto != null) {
                                reason = baseDto.getReason();
                            } else {
                                reason = null;
                            }
                            PaynicornDuringThePaymentDialog.Q0(paynicornDuringThePaymentDialog, "orderCheck4Paynicorn() --> code = " + code + " -- msg = " + msg + " -- reason = " + reason, 0, 2, null);
                        }
                    } else if (!code2.equals("400")) {
                        if (baseDto != null) {
                            code = baseDto.getCode();
                        } else {
                            code = null;
                        }
                        if (baseDto != null) {
                            msg = baseDto.getMsg();
                        } else {
                            msg = null;
                        }
                        if (baseDto != null) {
                            reason = baseDto.getReason();
                        } else {
                            reason = null;
                        }
                        PaynicornDuringThePaymentDialog.Q0(paynicornDuringThePaymentDialog, "orderCheck4Paynicorn() --> code = " + code + " -- msg = " + msg + " -- reason = " + reason, 0, 2, null);
                    } else if (TextUtils.equals(baseDto.getReason(), "PAY_PROCESSING")) {
                        paynicornDuringThePaymentDialog.P0("orderCheck4Paynicorn() --> code = 400 -- 支付未完成", 1003);
                    } else if (TextUtils.equals(baseDto.getReason(), "PAY_FAILED")) {
                        paynicornDuringThePaymentDialog.I0(1004, "orderCheck4Paynicorn() --> 400 --> 支付失败: 就是付钱了，但是第三方渠道没有成功");
                    } else {
                        PaynicornDuringThePaymentDialog.Q0(paynicornDuringThePaymentDialog, "orderCheck4Paynicorn() --> code = 400 -- reason = " + baseDto.getReason(), 0, 2, null);
                    }
                } else if (code2.equals("0")) {
                    paynicornDuringThePaymentDialog.J0(baseDto);
                } else {
                    if (baseDto != null) {
                        code = baseDto.getCode();
                    } else {
                        code = null;
                    }
                    if (baseDto != null) {
                        msg = baseDto.getMsg();
                    } else {
                        msg = null;
                    }
                    if (baseDto != null) {
                        reason = baseDto.getReason();
                    } else {
                        reason = null;
                    }
                    PaynicornDuringThePaymentDialog.Q0(paynicornDuringThePaymentDialog, "orderCheck4Paynicorn() --> code = " + code + " -- msg = " + msg + " -- reason = " + reason, 0, 2, null);
                }
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog3 = this.this$0;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            PaynicornDuringThePaymentDialog.Q0(paynicornDuringThePaymentDialog3, "orderCheck4Paynicorn() --> getOrElse() --> it = " + thM456exceptionOrNullimpl, 0, 2, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
