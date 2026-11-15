package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import com.google.android.material.R$anim;
import java.util.Iterator;

final class m extends i {

    private static final int[] f28669k = {533, 567, 850, 750};

    private static final int[] f28670l = {1267, 1000, 333, 0};

    private static final Property f28671m = new c(Float.class, "animationFraction");

    private ObjectAnimator f28672c;

    private ObjectAnimator f28673d;

    private final Interpolator[] f28674e;

    private final com.google.android.material.progressindicator.b f28675f;

    private int f28676g;

    private boolean f28677h;

    private float f28678i;

    androidx.vectordrawable.graphics.drawable.b f28679j;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            m mVar = m.this;
            mVar.f28676g = (mVar.f28676g + 1) % m.this.f28675f.f28595c.length;
            m.this.f28677h = true;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            m.this.a();
            m mVar = m.this;
            androidx.vectordrawable.graphics.drawable.b bVar = mVar.f28679j;
            if (bVar != null) {
                bVar.onAnimationEnd(mVar.f28651a);
            }
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(m mVar) {
            return Float.valueOf(mVar.n());
        }

        @Override
        public void set(m mVar, Float f10) {
            mVar.r(f10.floatValue());
        }
    }

    public m(Context context, n nVar) {
        super(2);
        this.f28676g = 0;
        this.f28679j = null;
        this.f28675f = nVar;
        this.f28674e = new Interpolator[]{androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line1_head_interpolator), androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line1_tail_interpolator), androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line2_head_interpolator), androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line2_tail_interpolator)};
    }

    public float n() {
        return this.f28678i;
    }

    private void o() {
        if (this.f28672c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<m, Float>) f28671m, 0.0f, 1.0f);
            this.f28672c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.f28672c.setInterpolator(null);
            this.f28672c.setRepeatCount(-1);
            this.f28672c.addListener(new a());
        }
        if (this.f28673d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<m, Float>) f28671m, 1.0f);
            this.f28673d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(1800L);
            this.f28673d.setInterpolator(null);
            this.f28673d.addListener(new b());
        }
    }

    private void p() {
        if (this.f28677h) {
            Iterator it = this.f28652b.iterator();
            while (it.hasNext()) {
                ((h.a) it.next()).f28649c = this.f28675f.f28595c[this.f28676g];
            }
            this.f28677h = false;
        }
    }

    private void s(int i10) {
        for (int i11 = 0; i11 < this.f28652b.size(); i11++) {
            h.a aVar = (h.a) this.f28652b.get(i11);
            int[] iArr = f28670l;
            int i12 = i11 * 2;
            int i13 = iArr[i12];
            int[] iArr2 = f28669k;
            aVar.f28647a = d1.a.a(this.f28674e[i12].getInterpolation(b(i10, i13, iArr2[i12])), 0.0f, 1.0f);
            int i14 = i12 + 1;
            aVar.f28648b = d1.a.a(this.f28674e[i14].getInterpolation(b(i10, iArr[i14], iArr2[i14])), 0.0f, 1.0f);
        }
    }

    @Override
    public void a() {
        ObjectAnimator objectAnimator = this.f28672c;
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
        this.f28679j = bVar;
    }

    @Override
    public void f() {
        ObjectAnimator objectAnimator = this.f28673d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        a();
        if (this.f28651a.isVisible()) {
            this.f28673d.setFloatValues(this.f28678i, 1.0f);
            this.f28673d.setDuration((long) ((1.0f - this.f28678i) * 1800.0f));
            this.f28673d.start();
        }
    }

    @Override
    public void g() {
        o();
        q();
        this.f28672c.start();
    }

    @Override
    public void h() {
        this.f28679j = null;
    }

    void q() {
        this.f28676g = 0;
        Iterator it = this.f28652b.iterator();
        while (it.hasNext()) {
            ((h.a) it.next()).f28649c = this.f28675f.f28595c[0];
        }
    }

    void r(float f10) {
        this.f28678i = f10;
        s((int) (f10 * 1800.0f));
        p();
        this.f28651a.invalidateSelf();
    }
}
