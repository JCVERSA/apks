package com.transsion.payment.lib.strategy;

import android.app.Application;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.b0;
import com.transsion.payment.lib.PaymentClientHelper;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CreateOrderReq;
import com.transsion.payment.lib.bean.CreateOrderRes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class PaynicornStrategy implements g {

    private final b0 f45935a = new b0();

    private final Lazy f45936b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PaynicornStrategy.j();
        }
    });

    private n0 f45937c = o0.a(y0.b());

    public final PaymentService i() {
        return (PaymentService) this.f45936b.getValue();
    }

    public static final PaymentService j() {
        return new PaymentService();
    }

    public final void k(AppCompatActivity appCompatActivity, CreateOrderRes createOrderRes, com.transsion.payment.lib.b bVar) {
        PaymentClientHelper.f45891a.d(appCompatActivity, createOrderRes, bVar, i());
    }

    @Override
    public void a(AppCompatActivity activity, CreateOrderReq orderRequest, boolean z10, com.transsion.payment.lib.b payCallback) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(orderRequest, "orderRequest");
        Intrinsics.h(payCallback, "payCallback");
        com.transsion.payment.lib.d.f45901a.a(h() + " --> requestPay() --> 请求接口创建订单....");
        payCallback.b(true);
        k.d(this.f45937c, null, null, new PaynicornStrategy$requestPay$1(this, orderRequest, activity, payCallback, null), 3, null);
    }

    @Override
    public void b(Boolean bool, com.transsion.payment.lib.b bVar, Function0 function0) {
        g();
    }

    public void g() {
        k.d(this.f45937c, null, null, new PaynicornStrategy$fetchSkuList$1(this, null), 3, null);
    }

    public String h() {
        return g.a.a(this);
    }

    @Override
    public void init(Application application) {
        Intrinsics.h(application, "application");
        PaymentClientHelper.f45891a.c();
    }
}
