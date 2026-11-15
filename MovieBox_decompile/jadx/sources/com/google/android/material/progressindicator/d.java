package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;

final class d extends i {

    private static final int[] f28605k = {0, 1350, 2700, 4050};

    private static final int[] f28606l = {667, 2017, 3367, 4717};

    private static final int[] f28607m = {1000, 2350, 3700, 5050};

    private static final Property f28608n = new c(Float.class, "animationFraction");

    private static final Property f28609o = new C0374d(Float.class, "completeEndFraction");

    private ObjectAnimator f28610c;

    private ObjectAnimator f28611d;

    private final o1.b f28612e;

    private final com.google.android.material.progressindicator.b f28613f;

    private int f28614g;

    private float f28615h;

    private float f28616i;

    androidx.vectordrawable.graphics.drawable.b f28617j;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            d dVar = d.this;
            dVar.f28614g = (dVar.f28614g + 4) % d.this.f28613f.f28595c.length;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            d.this.a();
            d dVar = d.this;
            androidx.vectordrawable.graphics.drawable.b bVar = dVar.f28617j;
            if (bVar != null) {
                bVar.onAnimationEnd(dVar.f28651a);
            }
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(d dVar) {
            return Float.valueOf(dVar.o());
        }

        @Override
        public void set(d dVar, Float f10) {
            dVar.t(f10.floatValue());
        }
    }

    class C0374d extends Property {
        C0374d(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(d dVar) {
            return Float.valueOf(dVar.p());
        }

        @Override
        public void set(d dVar, Float f10) {
            dVar.u(f10.floatValue());
        }
    }

    public d(e eVar) {
        super(1);
        this.f28614g = 0;
        this.f28617j = null;
        this.f28613f = eVar;
        this.f28612e = new o1.b();
    }

    public float o() {
        return this.f28615h;
    }

    public float p() {
        return this.f28616i;
    }

    private void q() {
        if (this.f28610c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<d, Float>) f28608n, 0.0f, 1.0f);
            this.f28610c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(5400L);
            this.f28610c.setInterpolator(null);
            this.f28610c.setRepeatCount(-1);
            this.f28610c.addListener(new a());
        }
        if (this.f28611d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<d, Float>) f28609o, 0.0f, 1.0f);
            this.f28611d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(333L);
            this.f28611d.setInterpolator(this.f28612e);
            this.f28611d.addListener(new b());
        }
    }

    private void r(int i10) {
        for (int i11 = 0; i11 < 4; i11++) {
            float fB = b(i10, f28607m[i11], 333);
            if (fB >= 0.0f && fB <= 1.0f) {
                int i12 = i11 + this.f28614g;
                int[] iArr = this.f28613f.f28595c;
                int length = i12 % iArr.length;
                int length2 = (length + 1) % iArr.length;
                int i13 = iArr[length];
                int i14 = iArr[length2];
                ((h.a) this.f28652b.get(0)).f28649c = qa.c.b().evaluate(this.f28612e.getInterpolation(fB), Integer.valueOf(i13), Integer.valueOf(i14)).intValue();
                return;
            }
        }
    }

    public void u(float f10) {
        this.f28616i = f10;
    }

    private void v(int i10) {
        h.a aVar = (h.a) this.f28652b.get(0);
        float f10 = this.f28615h;
        aVar.f28647a = (f10 * 1520.0f) - 20.0f;
        aVar.f28648b = f10 * 1520.0f;
        for (int i11 = 0; i11 < 4; i11++) {
            aVar.f28648b += this.f28612e.getInterpolation(b(i10, f28605k[i11], 667)) * 250.0f;
            aVar.f28647a += this.f28612e.getInterpolation(b(i10, f28606l[i11], 667)) * 250.0f;
        }
        float f11 = aVar.f28647a;
        float f12 = aVar.f28648b;
        aVar.f28647a = (f11 + ((f12 - f11) * this.f28616i)) / 360.0f;
        aVar.f28648b = f12 / 360.0f;
    }

    @Override
    void a() {
        ObjectAnimator objectAnimator = this.f28610c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override
    public void c() {
        s();
    }

    @Override
    public void d(androidx.vectordrawable.graphics.drawable.b bVar) {
        this.f28617j = bVar;
    }

    @Override
    void f() {
        ObjectAnimator objectAnimator = this.f28611d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.f28651a.isVisible()) {
            this.f28611d.start();
        } else {
            a();
        }
    }

    @Override
    void g() {
        q();
        s();
        this.f28610c.start();
    }

    @Override
    public void h() {
        this.f28617j = null;
    }

    void s() {
        this.f28614g = 0;
        ((h.a) this.f28652b.get(0)).f28649c = this.f28613f.f28595c[0];
        this.f28616i = 0.0f;
    }

    void t(float f10) {
        this.f28615h = f10;
        int i10 = (int) (f10 * 5400.0f);
        v(i10);
        r(i10);
        this.f28651a.invalidateSelf();
    }
}
