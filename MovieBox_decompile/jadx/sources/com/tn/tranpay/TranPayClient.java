package com.tn.tranpay;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.tn.tranpay.activity.TranPayTransparentActivity;
import com.tn.tranpay.fragment.PayLoadingFragment;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class TranPayClient {

    public static final TranPayClient f40493a = new TranPayClient();

    private static boolean f40494b;

    private TranPayClient() {
    }

    public final void b(Context context, BillingParams params, d callback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
        Intrinsics.h(callback, "callback");
        if (!TranPayConfiguration.f40495a.q()) {
            lh.a.e(lh.a.f65699a, "TranPay must be initialized!", null, 2, null);
            callback.a(new b(-1, "TranPay must be initialized!"), null);
            return;
        }
        if (!com.tn.tranpay.helper.b.f40649a.a()) {
            lh.a.e(lh.a.f65699a, "Network is not available!", null, 2, null);
            callback.a(new b(-2, "Network is not available. Please check your network connection."), null);
        } else {
            if (f40494b) {
                return;
            }
            lh.a.g(lh.a.f65699a, "launchBillingFlow with context and params is " + params, null, 2, null);
            TranPayTransparentActivity.INSTANCE.a(context, params, callback);
        }
    }

    public final void c(AppCompatActivity activity, BillingParams params, d callback) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(params, "params");
        Intrinsics.h(callback, "callback");
        TranPayConfiguration tranPayConfiguration = TranPayConfiguration.f40495a;
        if (!tranPayConfiguration.q()) {
            lh.a.e(lh.a.f65699a, "TranPay must be initialized!", null, 2, null);
            callback.a(new b(-1, "TranPay must be initialized!"), null);
            return;
        }
        if (!com.tn.tranpay.helper.b.f40649a.a()) {
            lh.a.e(lh.a.f65699a, "Network is not available!", null, 2, null);
            callback.a(new b(-2, "Network is not available. Please check your network connection."), null);
            return;
        }
        if (f40494b || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        lh.a.g(lh.a.f65699a, "launchBillingFlow and params is " + params, null, 2, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            PayLoadingFragment payLoadingFragmentA = PayLoadingFragment.INSTANCE.a(params, callback);
            payLoadingFragmentA.show(activity.getSupportFragmentManager(), "pay_loading_fragment");
            f40494b = true;
            payLoadingFragmentA.i0(new Function0<Unit>() {
                @Override
                public Object invoke() {
                    m312invoke();
                    return Unit.f64096a;
                }

                public final void m312invoke() {
                    TranPayClient.f40494b = false;
                }
            });
            tranPayConfiguration.D(params);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
