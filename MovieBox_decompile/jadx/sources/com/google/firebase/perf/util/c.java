package com.google.firebase.perf.util;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.atomic.AtomicReference;

public class c implements ViewTreeObserver.OnDrawListener {

    private final Handler f31538a = new Handler(Looper.getMainLooper());

    private final AtomicReference f31539b;

    private final Runnable f31540c;

    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnDrawListener(c.this);
            view.removeOnAttachStateChangeListener(this);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
        }
    }

    private c(View view, Runnable runnable) {
        this.f31539b = new AtomicReference(view);
        this.f31540c = runnable;
    }

    private static boolean b(View view) {
        return view.getViewTreeObserver().isAlive() && c(view);
    }

    private static boolean c(View view) {
        return view.isAttachedToWindow();
    }

    public void d(View view) {
        view.getViewTreeObserver().removeOnDrawListener(this);
    }

    public static void e(View view, Runnable runnable) {
        c cVar = new c(view, runnable);
        if (Build.VERSION.SDK_INT >= 26 || b(view)) {
            view.getViewTreeObserver().addOnDrawListener(cVar);
        } else {
            view.addOnAttachStateChangeListener(cVar.new a());
        }
    }

    @Override
    public void onDraw() {
        final View view = (View) this.f31539b.getAndSet(null);
        if (view == null) {
            return;
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public final void onGlobalLayout() {
                this.f31536a.d(view);
            }
        });
        this.f31538a.postAtFrontOfQueue(this.f31540c);
    }
}
