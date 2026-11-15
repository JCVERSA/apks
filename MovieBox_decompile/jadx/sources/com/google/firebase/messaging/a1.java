package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

final class a1 {

    private static WeakReference f31213d;

    private final SharedPreferences f31214a;

    private x0 f31215b;

    private final Executor f31216c;

    private a1(SharedPreferences sharedPreferences, Executor executor) {
        this.f31216c = executor;
        this.f31214a = sharedPreferences;
    }

    public static synchronized a1 b(Context context, Executor executor) {
        a1 a1Var;
        try {
            WeakReference weakReference = f31213d;
            a1Var = weakReference != null ? (a1) weakReference.get() : null;
            if (a1Var == null) {
                a1Var = new a1(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                a1Var.d();
                f31213d = new WeakReference(a1Var);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return a1Var;
    }

    private synchronized void d() {
        this.f31215b = x0.d(this.f31214a, "topic_operation_queue", ",", this.f31216c);
    }

    synchronized boolean a(z0 z0Var) {
        return this.f31215b.b(z0Var.e());
    }

    synchronized z0 c() {
        return z0.a(this.f31215b.f());
    }

    synchronized boolean e(z0 z0Var) {
        return this.f31215b.g(z0Var.e());
    }
}
