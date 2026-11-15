package com.tn.tranpay;

import com.tn.tranpay.bean.CurrencyInfoBean;
import com.tn.tranpay.helper.PaymentMMKV;
import com.tn.tranpay.network.BaseDto;
import com.tn.tranpay.network.RetrofitClient;
import com.tn.tranpay.report.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class TranPayConfiguration {

    private static String f40496b;

    private static String f40499e;

    private static boolean f40500f;

    private static String f40502h;

    private static String f40503i;

    private static String f40504j;

    private static String f40505k;

    private static String f40506l;

    private static boolean f40507m;

    private static CurrencyInfoBean f40508n;

    public static final TranPayConfiguration f40495a = new TranPayConfiguration();

    private static String f40497c = "";

    private static String f40498d = "";

    private static boolean f40501g = true;

    private static final Lazy f40509o = LazyKt.b(new Function0<com.tn.tranpay.network.b>() {
        @Override
        public final com.tn.tranpay.network.b invoke() {
            return (com.tn.tranpay.network.b) RetrofitClient.f40653a.d().b(com.tn.tranpay.network.b.class);
        }
    });

    private TranPayConfiguration() {
    }

    private final void E() {
        k.d(o0.a(y0.c()), null, null, new TranPayConfiguration$updateCurrencyInfo$1(null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(CurrencyInfoBean currencyInfoBean, Continuation continuation) {
        TranPayConfiguration$cacheCurrencyInfo$1 tranPayConfiguration$cacheCurrencyInfo$1;
        if (continuation instanceof TranPayConfiguration$cacheCurrencyInfo$1) {
            tranPayConfiguration$cacheCurrencyInfo$1 = (TranPayConfiguration$cacheCurrencyInfo$1) continuation;
            int i10 = tranPayConfiguration$cacheCurrencyInfo$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                tranPayConfiguration$cacheCurrencyInfo$1.label = i10 - Integer.MIN_VALUE;
            } else {
                tranPayConfiguration$cacheCurrencyInfo$1 = new TranPayConfiguration$cacheCurrencyInfo$1(this, continuation);
            }
        } else {
            tranPayConfiguration$cacheCurrencyInfo$1 = new TranPayConfiguration$cacheCurrencyInfo$1(this, continuation);
        }
        Object obj = tranPayConfiguration$cacheCurrencyInfo$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = tranPayConfiguration$cacheCurrencyInfo$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String str = f40499e;
            if (str == null || str.length() == 0) {
                PaymentMMKV paymentMMKV = PaymentMMKV.f40642a;
                tranPayConfiguration$cacheCurrencyInfo$1.label = 1;
                if (paymentMMKV.a(currencyInfoBean, tranPayConfiguration$cacheCurrencyInfo$1) == objF) {
                    return objF;
                }
            } else {
                PaymentMMKV paymentMMKV2 = PaymentMMKV.f40642a;
                String str2 = f40499e;
                Intrinsics.e(str2);
                paymentMMKV2.b(str2, currencyInfoBean);
                lh.a.g(lh.a.f65699a, "按region缓存货币信息: region=" + f40499e, null, 2, null);
            }
            return Unit.f64096a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        lh.a.g(lh.a.f65699a, "按IP+日期缓存货币信息", null, 2, null);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(boolean z10, Continuation continuation) {
        TranPayConfiguration$fetchAndUpdateCurrencyInfo$1 tranPayConfiguration$fetchAndUpdateCurrencyInfo$1;
        if (continuation instanceof TranPayConfiguration$fetchAndUpdateCurrencyInfo$1) {
            tranPayConfiguration$fetchAndUpdateCurrencyInfo$1 = (TranPayConfiguration$fetchAndUpdateCurrencyInfo$1) continuation;
            int i10 = tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.label = i10 - Integer.MIN_VALUE;
            } else {
                tranPayConfiguration$fetchAndUpdateCurrencyInfo$1 = new TranPayConfiguration$fetchAndUpdateCurrencyInfo$1(this, continuation);
            }
        } else {
            tranPayConfiguration$fetchAndUpdateCurrencyInfo$1 = new TranPayConfiguration$fetchAndUpdateCurrencyInfo$1(this, continuation);
        }
        Object objO = tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.label;
        if (i11 == 0) {
            ResultKt.b(objO);
            tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.Z$0 = z10;
            tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.label = 1;
            objO = o(tranPayConfiguration$fetchAndUpdateCurrencyInfo$1);
            if (objO == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z10 = tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.Z$0;
            ResultKt.b(objO);
        }
        BaseDto baseDto = (BaseDto) objO;
        if ((baseDto != null ? (CurrencyInfoBean) baseDto.getData() : null) == null) {
            if (z10) {
                h.f40683a.c(false);
            }
            lh.a.e(lh.a.f65699a, "Failed to update currency info", null, 2, null);
            return null;
        }
        f40508n = (CurrencyInfoBean) baseDto.getData();
        if (z10) {
            h.f40683a.c(true);
        }
        lh.a.g(lh.a.f65699a, "Currency info updated successfully: " + f40508n, null, 2, null);
        CurrencyInfoBean currencyInfoBean = f40508n;
        f40504j = currencyInfoBean != null ? currencyInfoBean.getCountryCode() : null;
        CurrencyInfoBean currencyInfoBean2 = f40508n;
        f40505k = currencyInfoBean2 != null ? currencyInfoBean2.getCurrency() : null;
        return f40508n;
    }

    private final Object i(Continuation continuation) {
        String str = f40499e;
        if (str == null || str.length() == 0) {
            return PaymentMMKV.f40642a.f(continuation);
        }
        PaymentMMKV paymentMMKV = PaymentMMKV.f40642a;
        String str2 = f40499e;
        Intrinsics.e(str2);
        return paymentMMKV.g(str2);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0098 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:14:0x0030, B:40:0x00a7, B:20:0x0040, B:33:0x008e, B:35:0x0098, B:30:0x007b), top: B:50:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00be  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x00be, please report this as an issue */
    public final Object o(Continuation continuation) {
        TranPayConfiguration$getCurrencyInfoBean$1 tranPayConfiguration$getCurrencyInfoBean$1;
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        BaseDto baseDto;
        CurrencyInfoBean currencyInfoBean;
        TranPayConfiguration tranPayConfiguration;
        BaseDto baseDto2;
        if (continuation instanceof TranPayConfiguration$getCurrencyInfoBean$1) {
            tranPayConfiguration$getCurrencyInfoBean$1 = (TranPayConfiguration$getCurrencyInfoBean$1) continuation;
            int i10 = tranPayConfiguration$getCurrencyInfoBean$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                tranPayConfiguration$getCurrencyInfoBean$1.label = i10 - Integer.MIN_VALUE;
            } else {
                tranPayConfiguration$getCurrencyInfoBean$1 = new TranPayConfiguration$getCurrencyInfoBean$1(this, continuation);
            }
        } else {
            tranPayConfiguration$getCurrencyInfoBean$1 = new TranPayConfiguration$getCurrencyInfoBean$1(this, continuation);
        }
        Object objI = tranPayConfiguration$getCurrencyInfoBean$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = tranPayConfiguration$getCurrencyInfoBean$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(objI);
                } else {
                    if (i11 == 2) {
                        ResultKt.b(objI);
                        baseDto = (BaseDto) objI;
                        currencyInfoBean = (CurrencyInfoBean) baseDto.getData();
                        if (currencyInfoBean != null) {
                            tranPayConfiguration = f40495a;
                            tranPayConfiguration$getCurrencyInfoBean$1.L$0 = baseDto;
                            tranPayConfiguration$getCurrencyInfoBean$1.label = 3;
                            if (tranPayConfiguration.d(currencyInfoBean, tranPayConfiguration$getCurrencyInfoBean$1) == objF) {
                                return objF;
                            }
                            baseDto2 = baseDto;
                        }
                        objM453constructorimpl = Result.m453constructorimpl(baseDto);
                        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                        if (thM456exceptionOrNullimpl == null) {
                            return objM453constructorimpl;
                        }
                        lh.a.e(lh.a.f65699a, "获取货币信息失败 [" + thM456exceptionOrNullimpl.getClass().getSimpleName() + "]: " + thM456exceptionOrNullimpl.getMessage(), null, 2, null);
                        if (!f40500f) {
                            return null;
                        }
                        thM456exceptionOrNullimpl.printStackTrace();
                        return null;
                    }
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    baseDto2 = (BaseDto) tranPayConfiguration$getCurrencyInfoBean$1.L$0;
                    ResultKt.b(objI);
                }
                baseDto = baseDto2;
                objM453constructorimpl = Result.m453constructorimpl(baseDto);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl == null) {
                    return objM453constructorimpl;
                }
                lh.a.e(lh.a.f65699a, "获取货币信息失败 [" + thM456exceptionOrNullimpl.getClass().getSimpleName() + "]: " + thM456exceptionOrNullimpl.getMessage(), null, 2, null);
                if (!f40500f) {
                    return null;
                }
                thM456exceptionOrNullimpl.printStackTrace();
                return null;
            }
            ResultKt.b(objI);
            PaymentMMKV.f40642a.c();
            tranPayConfiguration$getCurrencyInfoBean$1.label = 1;
            objI = i(tranPayConfiguration$getCurrencyInfoBean$1);
            if (objI == objF) {
                return objF;
            }
            CurrencyInfoBean currencyInfoBean2 = (CurrencyInfoBean) objI;
            if (currencyInfoBean2 != null) {
                lh.a.g(lh.a.f65699a, "使用缓存的货币信息: " + currencyInfoBean2, null, 2, null);
                return new BaseDto(200, currencyInfoBean2);
            }
            Result.Companion companion = Result.INSTANCE;
            com.tn.tranpay.network.b bVarR = f40495a.r();
            String str = f40499e;
            tranPayConfiguration$getCurrencyInfoBean$1.label = 2;
            objI = bVarR.e(str, tranPayConfiguration$getCurrencyInfoBean$1);
            if (objI == objF) {
                return objF;
            }
            baseDto = (BaseDto) objI;
            currencyInfoBean = (CurrencyInfoBean) baseDto.getData();
            if (currencyInfoBean != null) {
                tranPayConfiguration = f40495a;
                tranPayConfiguration$getCurrencyInfoBean$1.L$0 = baseDto;
                tranPayConfiguration$getCurrencyInfoBean$1.label = 3;
                if (tranPayConfiguration.d(currencyInfoBean, tranPayConfiguration$getCurrencyInfoBean$1) == objF) {
                    return objF;
                }
                baseDto2 = baseDto;
                baseDto = baseDto2;
            }
            objM453constructorimpl = Result.m453constructorimpl(baseDto);
            thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl == null) {
                return objM453constructorimpl;
            }
            lh.a.e(lh.a.f65699a, "获取货币信息失败 [" + thM456exceptionOrNullimpl.getClass().getSimpleName() + "]: " + thM456exceptionOrNullimpl.getMessage(), null, 2, null);
            if (!f40500f) {
                return null;
            }
            thM456exceptionOrNullimpl.printStackTrace();
            return null;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final com.tn.tranpay.network.b r() {
        Object value = f40509o.getValue();
        Intrinsics.g(value, "<get-iPaymentApi>(...)");
        return (com.tn.tranpay.network.b) value;
    }

    public final void A(boolean z10) {
        f40501g = z10;
    }

    public final void B(String str) {
        f40499e = str;
    }

    public final void C() {
        E();
    }

    public final void D(BillingParams params) {
        Intrinsics.h(params, "params");
        f40502h = params.getOrderId();
        f40505k = params.getCurrency();
        f40506l = params.getAmount();
        f40503i = params.getTxnId();
    }

    public final Object f(Continuation continuation) {
        CurrencyInfoBean currencyInfoBean = f40508n;
        return currencyInfoBean == null ? e(false, continuation) : currencyInfoBean;
    }

    public final String g() {
        return f40506l;
    }

    public final String h() {
        return f40497c;
    }

    public final String j() {
        return f40498d;
    }

    public final String k() {
        return f40504j;
    }

    public final String l() {
        return f40496b;
    }

    public final String m() {
        return f40505k;
    }

    public final CurrencyInfoBean n() {
        return f40508n;
    }

    public final boolean p() {
        return f40500f;
    }

    public final boolean q() {
        return f40507m;
    }

    public final String s() {
        return f40502h;
    }

    public final String t() {
        return f40503i;
    }

    public final boolean u() {
        return f40501g;
    }

    public final void v(String str) {
        Intrinsics.h(str, "<set-?>");
        f40497c = str;
    }

    public final void w(String str) {
        Intrinsics.h(str, "<set-?>");
        f40498d = str;
    }

    public final void x(String str) {
        f40496b = str;
    }

    public final void y(boolean z10) {
        f40500f = z10;
    }

    public final void z(boolean z10) {
        f40507m = z10;
    }
}
