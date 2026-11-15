package com.tn.tranpay.event;

import android.app.Application;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f40551a = new a();

    private static Application f40552b;

    private a() {
    }

    public final Application a() {
        Application application = f40552b;
        if (application != null) {
            return application;
        }
        throw new IllegalStateException("TranPay SDK must be initialized by calling TranPay.configure() first! Please ensure TranPay.configure() is called in Application.onCreate() for each process that uses the SDK.");
    }

    public final void b(Application application) {
        Intrinsics.h(application, "application");
        f40552b = application;
    }

    public final boolean c() {
        return f40552b != null;
    }
}
