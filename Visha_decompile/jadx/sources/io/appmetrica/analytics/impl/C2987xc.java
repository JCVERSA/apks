package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import defpackage.g1a;
import defpackage.j1a;
import io.appmetrica.analytics.billinginterface.internal.BillingType;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import java.lang.reflect.Field;
import java.util.Objects;
import java.util.concurrent.Executor;

public final class C2987xc extends C2830r5 {
    public final Uj n;

    public C2987xc(@NonNull Context context, @NonNull C2532f5 c2532f5, @NonNull F4 f4, @NonNull AbstractC2656k5 abstractC2656k5, @NonNull Hl hl, @NonNull Zg zg, @NonNull ICommonExecutor iCommonExecutor, int i, @NonNull Uj uj, @NonNull Kb kb, @NonNull InterfaceC3009y9 interfaceC3009y9) {
        super(context, c2532f5, f4, abstractC2656k5, hl, zg, iCommonExecutor, i, kb, interfaceC3009y9);
        this.n = uj;
    }

    @NonNull
    public final C2679l3 a(@NonNull C2937vc c2937vc) {
        String str;
        BillingType billingType;
        Field field;
        Context context = this.c;
        IHandlerExecutor iHandlerExecutorA = this.n.a();
        Executor executorF = this.n.f();
        try {
            Class<?> clsFindClass = ReflectionUtils.findClass("com.android.billingclient.BuildConfig");
            str = (String) ((clsFindClass == null || (field = clsFindClass.getField("VERSION_NAME")) == null) ? null : field.get(null));
        } catch (Throwable unused) {
            str = null;
        }
        if (str == null || j1a.o0(str) || g1a.R(str, "2.", false, 2, null) || g1a.R(str, "3.", false, 2, null) || g1a.R(str, "4.", false, 2, null)) {
            billingType = BillingType.NONE;
        } else {
            billingType = (!g1a.R(str, "5.", false, 2, null) && g1a.R(str, "6.", false, 2, null)) ? BillingType.LIBRARY_V6 : BillingType.LIBRARY_V6;
        }
        return new C2679l3(context, iHandlerExecutorA, executorF, billingType, new C2580h3(C2872sm.a(C2902u2.class).a(this.c)), new C2555g3(c2937vc, C2910ua.j().w().e()));
    }

    @NonNull
    public final C2518eg b(@NonNull C2937vc c2937vc) {
        C2466ce c2466ce = new C2466ce(c2937vc);
        Objects.requireNonNull(c2937vc);
        return new C2518eg(c2466ce, new C2912uc(c2937vc), c2937vc);
    }

    @Override
    @NonNull
    public final InterfaceC2959w9 a(@NonNull B9 b9, @NonNull S6 s6, @NonNull Fg fg, @NonNull F4 f4, @NonNull C2532f5 c2532f5, @NonNull Le le) {
        return this.l.a(b9, s6, fg, f4, c2532f5, le).a();
    }
}
