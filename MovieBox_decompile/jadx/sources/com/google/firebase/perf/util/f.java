package com.google.firebase.perf.util;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.atomic.AtomicReference;

public class f implements ViewTreeObserver.OnPreDrawListener {

    private final Handler f31545a = new Handler(Looper.getMainLooper());

    private final AtomicReference f31546b;

    private final Runnable f31547c;

    private final Runnable f31548d;

    private f(View view, Runnable runnable, Runnable runnable2) {
        this.f31546b = new AtomicReference(view);
        this.f31547c = runnable;
        this.f31548d = runnable2;
    }

    public static void a(View view, Runnable runnable, Runnable runnable2) {
        view.getViewTreeObserver().addOnPreDrawListener(new f(view, runnable, runnable2));
    }

    @Override
    public boolean onPreDraw() {
        View view = (View) this.f31546b.getAndSet(null);
        if (view == null) {
            return true;
        }
        view.getViewTreeObserver().removeOnPreDrawListener(this);
        this.f31545a.post(this.f31547c);
        this.f31545a.postAtFrontOfQueue(this.f31548d);
        return true;
    }
}
