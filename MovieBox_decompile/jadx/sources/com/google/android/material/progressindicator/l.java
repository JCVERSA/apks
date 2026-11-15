package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;

final class l extends i {

    private static final Property f28661i = new b(Float.class, "animationFraction");

    private ObjectAnimator f28662c;

    private o1.b f28663d;

    private final com.google.android.material.progressindicator.b f28664e;

    private int f28665f;

    private boolean f28666g;

    private float f28667h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            l lVar = l.this;
            lVar.f28665f = (lVar.f28665f + 1) % l.this.f28664e.f28595c.length;
            l.this.f28666g = true;
        }
    }

    class b extends Property {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(l lVar) {
            return Float.valueOf(lVar.n());
        }

        @Override
        public void set(l lVar, Float f10) {
            lVar.r(f10.floatValue());
        }
    }

    public l(n nVar) {
        super(3);
        this.f28665f = 1;
        this.f28664e = nVar;
        this.f28663d = new o1.b();
    }

    public float n() {
        return this.f28667h;
    }

    private void o() {
        if (this.f28662c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<l, Float>) f28661i, 0.0f, 1.0f);
            this.f28662c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(333L);
            this.f28662c.setInterpolator(null);
            this.f28662c.setRepeatCount(-1);
            this.f28662c.addListener(new a());
        }
    }

    private void p() {
        if (!this.f28666g || ((h.a) this.f28652b.get(1)).f28648b >= 1.0f) {
            return;
        }
        ((h.a) this.f28652b.get(2)).f28649c = ((h.a) this.f28652b.get(1)).f28649c;
        ((h.a) this.f28652b.get(1)).f28649c = ((h.a) this.f28652b.get(0)).f28649c;
        ((h.a) this.f28652b.get(0)).f28649c = this.f28664e.f28595c[this.f28665f];
        this.f28666g = false;
    }

    private void s(int i10) {
        ((h.a) this.f28652b.get(0)).f28647a = 0.0f;
        float fB = b(i10, 0, 667);
        h.a aVar = (h.a) this.f28652b.get(0);
        h.a aVar2 = (h.a) this.f28652b.get(1);
        float interpolation = this.f28663d.getInterpolation(fB);
        aVar2.f28647a = interpolation;
        aVar.f28648b = interpolation;
        h.a aVar3 = (h.a) this.f28652b.get(1);
        h.a aVar4 = (h.a) this.f28652b.get(2);
        float interpolation2 = this.f28663d.getInterpolation(fB + 0.49925038f);
        aVar4.f28647a = interpolation2;
        aVar3.f28648b = interpolation2;
        ((h.a) this.f28652b.get(2)).f28648b = 1.0f;
    }

    @Override
    public void a() {
        ObjectAnimator objectAnimator = this.f28662c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override
    public void c() {
        q();
    }

    @Override
    public void d(androidx.vectordrawable.graphics.drawable.b bVar) {
    }

    @Override
    public void f() {
    }

    @Override
    public void g() {
        o();
        q();
        this.f28662c.start();
    }

    @Override
    public void h() {
    }

    void q() {
        this.f28666g = true;
        this.f28665f = 1;
        for (h.a aVar : this.f28652b) {
            com.google.android.material.progressindicator.b bVar = this.f28664e;
            aVar.f28649c = bVar.f28595c[0];
            aVar.f28650d = bVar.f28599g / 2;
        }
    }

    void r(float f10) {
        this.f28667h = f10;
        s((int) (f10 * 333.0f));
        p();
        this.f28651a.invalidateSelf();
    }
}
