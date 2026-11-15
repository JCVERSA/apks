package com.transsion.payment.lib;

import android.app.Application;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.blankj.utilcode.util.Utils;
import com.transsion.payment.lib.bean.CreateOrderReq;
import com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog;
import com.transsion.payment.lib.strategy.GoogleStrategy;
import com.transsion.payment.lib.strategy.PaynicornStrategy;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final a f45914b = new a(null);

    private static final Lazy f45915c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.d();
        }
    });

    private com.transsion.payment.lib.strategy.g f45916a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            return (f) f.f45915c.getValue();
        }

        private a() {
        }
    }

    public f() {
        jg.b.a aVar = jg.b.f63119a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        String strE = aVar.e(applicationA);
        com.transsion.payment.lib.strategy.g googleStrategy = TextUtils.equals(strE, "gp") ? new GoogleStrategy() : new PaynicornStrategy();
        this.f45916a = googleStrategy;
        d.f45901a.a("PaymentManager() --> init{} --> channel = " + strE + " -- payStrategy = " + googleStrategy.getClass().getSimpleName());
    }

    private final String c() {
        String simpleName = f.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public static final f d() {
        return new f();
    }

    public final void e(AppCompatActivity activity, String productId, String str, boolean z10, Map map, b payCallback) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(productId, "productId");
        Intrinsics.h(payCallback, "payCallback");
        CreateOrderReq createOrderReq = new CreateOrderReq(productId, str, z10, map);
        jg.b.a aVar = jg.b.f63119a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        String strE = aVar.e(applicationA);
        d.f45901a.a(c() + " --> requestPay() --> channel = " + strE + " --> orderReq = " + createOrderReq);
        if (TextUtils.equals(strE, "gp")) {
            com.transsion.payment.lib.strategy.g gVar = this.f45916a;
            if (gVar != null) {
                gVar.a(activity, createOrderReq, z10, payCallback);
                return;
            }
            return;
        }
        PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog = new PaynicornDuringThePaymentDialog();
        paynicornDuringThePaymentDialog.R0(payCallback);
        paynicornDuringThePaymentDialog.S0(createOrderReq);
        paynicornDuringThePaymentDialog.k0(activity, "PaynicornDuringThePaymentDialog");
    }

    public final void g() {
        Application applicationA = Utils.a();
        com.transsion.payment.lib.strategy.g gVar = this.f45916a;
        if (gVar != null) {
            Intrinsics.e(applicationA);
            gVar.init(applicationA);
        }
    }
}
