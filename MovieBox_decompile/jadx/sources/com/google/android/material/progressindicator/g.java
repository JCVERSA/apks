package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

abstract class g extends Drawable implements Animatable {

    private static final Property f28629o = new c(Float.class, "growFraction");

    final Context f28630a;

    final com.google.android.material.progressindicator.b f28631b;

    private ValueAnimator f28633d;

    private ValueAnimator f28634e;

    private boolean f28635f;

    private boolean f28636g;

    private float f28637h;

    private List f28638i;

    private androidx.vectordrawable.graphics.drawable.b f28639j;

    private boolean f28640k;

    private float f28641l;

    private int f28643n;

    final Paint f28642m = new Paint();

    com.google.android.material.progressindicator.a f28632c = new com.google.android.material.progressindicator.a();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            g.this.f();
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            g.super.setVisible(false, false);
            g.this.e();
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(g gVar) {
            return Float.valueOf(gVar.h());
        }

        @Override
        public void set(g gVar, Float f10) {
            gVar.n(f10.floatValue());
        }
    }

    g(Context context, com.google.android.material.progressindicator.b bVar) {
        this.f28630a = context;
        this.f28631b = bVar;
        setAlpha(255);
    }

    private void d(ValueAnimator... valueAnimatorArr) {
        boolean z10 = this.f28640k;
        this.f28640k = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.cancel();
        }
        this.f28640k = z10;
    }

    public void e() {
        androidx.vectordrawable.graphics.drawable.b bVar = this.f28639j;
        if (bVar != null) {
            bVar.onAnimationEnd(this);
        }
        List list = this.f28638i;
        if (list == null || this.f28640k) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((androidx.vectordrawable.graphics.drawable.b) it.next()).onAnimationEnd(this);
        }
    }

    public void f() {
        androidx.vectordrawable.graphics.drawable.b bVar = this.f28639j;
        if (bVar != null) {
            bVar.onAnimationStart(this);
        }
        List list = this.f28638i;
        if (list == null || this.f28640k) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((androidx.vectordrawable.graphics.drawable.b) it.next()).onAnimationStart(this);
        }
    }

    private void g(ValueAnimator... valueAnimatorArr) {
        boolean z10 = this.f28640k;
        this.f28640k = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.f28640k = z10;
    }

    private void l() {
        if (this.f28633d == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<g, Float>) f28629o, 0.0f, 1.0f);
            this.f28633d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.f28633d.setInterpolator(qa.a.f69578b);
            p(this.f28633d);
        }
        if (this.f28634e == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<g, Float>) f28629o, 1.0f, 0.0f);
            this.f28634e = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.f28634e.setInterpolator(qa.a.f69578b);
            o(this.f28634e);
        }
    }

    private void o(ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f28634e;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
        }
        this.f28634e = valueAnimator;
        valueAnimator.addListener(new b());
    }

    private void p(ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f28633d;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
        }
        this.f28633d = valueAnimator;
        valueAnimator.addListener(new a());
    }

    @Override
    public int getAlpha() {
        return this.f28643n;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    float h() {
        if (this.f28631b.b() || this.f28631b.a()) {
            return (this.f28636g || this.f28635f) ? this.f28637h : this.f28641l;
        }
        return 1.0f;
    }

    public boolean i() {
        return q(false, false, false);
    }

    public boolean isRunning() {
        return k() || j();
    }

    public boolean j() {
        ValueAnimator valueAnimator = this.f28634e;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f28636g;
    }

    public boolean k() {
        ValueAnimator valueAnimator = this.f28633d;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f28635f;
    }

    public void m(androidx.vectordrawable.graphics.drawable.b bVar) {
        if (this.f28638i == null) {
            this.f28638i = new ArrayList();
        }
        if (this.f28638i.contains(bVar)) {
            return;
        }
        this.f28638i.add(bVar);
    }

    void n(float f10) {
        if (this.f28641l != f10) {
            this.f28641l = f10;
            invalidateSelf();
        }
    }

    public boolean q(boolean z10, boolean z11, boolean z12) {
        return r(z10, z11, z12 && this.f28632c.a(this.f28630a.getContentResolver()) > 0.0f);
    }

    boolean r(boolean z10, boolean z11, boolean z12) {
        l();
        if (!isVisible() && !z10) {
            return false;
        }
        ValueAnimator valueAnimator = z10 ? this.f28633d : this.f28634e;
        ValueAnimator valueAnimator2 = z10 ? this.f28634e : this.f28633d;
        if (!z12) {
            if (valueAnimator2.isRunning()) {
                d(valueAnimator2);
            }
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            } else {
                g(valueAnimator);
            }
            return super.setVisible(z10, false);
        }
        if (valueAnimator.isRunning()) {
            return false;
        }
        boolean z13 = !z10 || super.setVisible(z10, false);
        if (!(z10 ? this.f28631b.b() : this.f28631b.a())) {
            g(valueAnimator);
            return z13;
        }
        if (z11 || !valueAnimator.isPaused()) {
            valueAnimator.start();
        } else {
            valueAnimator.resume();
        }
        return z13;
    }

    public boolean s(androidx.vectordrawable.graphics.drawable.b bVar) {
        List list = this.f28638i;
        if (list == null || !list.contains(bVar)) {
            return false;
        }
        this.f28638i.remove(bVar);
        if (!this.f28638i.isEmpty()) {
            return true;
        }
        this.f28638i = null;
        return true;
    }

    @Override
    public void setAlpha(int i10) {
        this.f28643n = i10;
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f28642m.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        return q(z10, z11, true);
    }

    public void start() {
        r(true, true, false);
    }

    public void stop() {
        r(false, true, false);
    }
}
