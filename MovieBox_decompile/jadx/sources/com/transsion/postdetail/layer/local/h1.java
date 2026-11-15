package com.transsion.postdetail.layer.local;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

public final class h1 {

    private final TextView f47016a;

    private final TextView f47017b;

    private long f47018c;

    private int f47019d = 1;

    private final Runnable f47020e = new Runnable() {
        @Override
        public final void run() {
            h1.e(this.f47012a);
        }
    };

    private final Runnable f47021f = new Runnable() {
        @Override
        public final void run() {
            h1.f(this.f47014a);
        }
    };

    public static final class a implements Animator.AnimatorListener {

        final TextView f47023b;

        final String f47024c;

        a(TextView textView, String str) {
            this.f47023b = textView;
            this.f47024c = str;
        }

        @Override
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
            h1.this.f47018c = System.currentTimeMillis();
            TextView textView = this.f47023b;
            if (textView != null) {
                uf.c.k(textView);
            }
            TextView textView2 = this.f47023b;
            if (textView2 != null) {
                textView2.setText(this.f47024c);
            }
        }
    }

    public h1(TextView textView, TextView textView2) {
        this.f47016a = textView;
        this.f47017b = textView2;
    }

    public static final void e(h1 h1Var) {
        TextView textView = h1Var.f47016a;
        if (textView != null) {
            uf.c.g(textView);
        }
    }

    public static final void f(h1 h1Var) {
        TextView textView = h1Var.f47017b;
        if (textView != null) {
            uf.c.g(textView);
        }
    }

    private final void g(String str, long j10, TextView textView, long j11, Runnable runnable) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(500L);
        if (textView != null) {
            uf.c.g(textView);
        }
        objectAnimatorOfFloat.addListener(new a(textView, str));
        objectAnimatorOfFloat.setStartDelay(j10);
        objectAnimatorOfFloat.start();
        if (j11 <= 0 || textView == null) {
            return;
        }
        textView.postDelayed(runnable, j11);
    }

    public static void i(h1 h1Var, String str, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 3000;
        }
        h1Var.h(str, j10);
    }

    public final void d() {
        TextView textView = this.f47016a;
        if (textView != null) {
            uf.c.g(textView);
        }
        TextView textView2 = this.f47017b;
        if (textView2 != null) {
            uf.c.g(textView2);
        }
    }

    public final void h(String content, long j10) {
        TextView textView;
        Intrinsics.h(content, "content");
        TextView textView2 = this.f47016a;
        if (textView2 != null && uf.c.i(textView2) && (textView = this.f47017b) != null && uf.c.i(textView)) {
            int i10 = this.f47019d;
            TextView textView3 = i10 == 1 ? this.f47017b : this.f47016a;
            Runnable runnable = i10 == 1 ? this.f47021f : this.f47020e;
            textView3.removeCallbacks(runnable);
            g(content, 0L, textView3, j10, runnable);
            this.f47019d = this.f47019d != 1 ? 1 : 2;
            return;
        }
        TextView textView4 = this.f47016a;
        if (textView4 == null || !uf.c.i(textView4)) {
            this.f47019d = 1;
            g(content, 0L, this.f47016a, j10, this.f47020e);
        } else {
            long j11 = System.currentTimeMillis() - this.f47018c < 500 ? 500L : 0L;
            this.f47019d = 2;
            g(content, j11, this.f47017b, j10, this.f47021f);
        }
    }
}
