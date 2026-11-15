package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import cb.n;
import cb.q;
import com.google.android.material.R$attr;
import com.google.android.material.R$integer;
import com.google.android.material.internal.w;
import java.util.ArrayList;
import java.util.Iterator;

abstract class d {
    static final TimeInterpolator D = qa.a.f69579c;
    private static final int E = R$attr.motionDurationLong2;
    private static final int F = R$attr.motionEasingEmphasizedInterpolator;
    private static final int G = R$attr.motionDurationMedium1;
    private static final int H = R$attr.motionEasingEmphasizedAccelerateInterpolator;
    static final int[] I = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] J = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    static final int[] K = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] L = {R.attr.state_hovered, R.attr.state_enabled};
    static final int[] M = {R.attr.state_enabled};
    static final int[] N = new int[0];
    private ViewTreeObserver.OnPreDrawListener C;

    n f28180a;

    cb.i f28181b;

    Drawable f28182c;

    com.google.android.material.floatingactionbutton.c f28183d;

    Drawable f28184e;

    boolean f28185f;

    float f28187h;

    float f28188i;

    float f28189j;

    int f28190k;

    private final w f28191l;

    private Animator f28192m;

    private qa.h f28193n;

    private qa.h f28194o;

    private float f28195p;

    private int f28197r;

    private ArrayList f28199t;

    private ArrayList f28200u;

    private ArrayList f28201v;

    final FloatingActionButton f28202w;

    final bb.b f28203x;

    boolean f28186g = true;

    private float f28196q = 1.0f;

    private int f28198s = 0;

    private final Rect f28204y = new Rect();

    private final RectF f28205z = new RectF();
    private final RectF A = new RectF();
    private final Matrix B = new Matrix();

    class a extends AnimatorListenerAdapter {

        private boolean f28206a;

        final boolean f28207b;

        final k f28208c;

        a(boolean z10, k kVar) {
            this.f28207b = z10;
            this.f28208c = kVar;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f28206a = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            d.this.f28198s = 0;
            d.this.f28192m = null;
            if (this.f28206a) {
                return;
            }
            FloatingActionButton floatingActionButton = d.this.f28202w;
            boolean z10 = this.f28207b;
            floatingActionButton.internalSetVisibility(z10 ? 8 : 4, z10);
            k kVar = this.f28208c;
            if (kVar != null) {
                kVar.b();
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            d.this.f28202w.internalSetVisibility(0, this.f28207b);
            d.this.f28198s = 1;
            d.this.f28192m = animator;
            this.f28206a = false;
        }
    }

    class b extends AnimatorListenerAdapter {

        final boolean f28210a;

        final k f28211b;

        b(boolean z10, k kVar) {
            this.f28210a = z10;
            this.f28211b = kVar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            d.this.f28198s = 0;
            d.this.f28192m = null;
            k kVar = this.f28211b;
            if (kVar != null) {
                kVar.a();
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            d.this.f28202w.internalSetVisibility(0, this.f28210a);
            d.this.f28198s = 2;
            d.this.f28192m = animator;
        }
    }

    class c extends qa.g {
        c() {
        }

        @Override
        public Matrix evaluate(float f10, Matrix matrix, Matrix matrix2) {
            d.this.f28196q = f10;
            return super.evaluate(f10, matrix, matrix2);
        }
    }

    class C0371d implements ValueAnimator.AnimatorUpdateListener {

        final float f28214a;

        final float f28215b;

        final float f28216c;

        final float f28217d;

        final float f28218e;

        final float f28219f;

        final float f28220g;

        final Matrix f28221h;

        C0371d(float f10, float f11, float f12, float f13, float f14, float f15, float f16, Matrix matrix) {
            this.f28214a = f10;
            this.f28215b = f11;
            this.f28216c = f12;
            this.f28217d = f13;
            this.f28218e = f14;
            this.f28219f = f15;
            this.f28220g = f16;
            this.f28221h = matrix;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            d.this.f28202w.setAlpha(qa.a.b(this.f28214a, this.f28215b, 0.0f, 0.2f, fFloatValue));
            d.this.f28202w.setScaleX(qa.a.a(this.f28216c, this.f28217d, fFloatValue));
            d.this.f28202w.setScaleY(qa.a.a(this.f28218e, this.f28217d, fFloatValue));
            d.this.f28196q = qa.a.a(this.f28219f, this.f28220g, fFloatValue);
            d.this.h(qa.a.a(this.f28219f, this.f28220g, fFloatValue), this.f28221h);
            d.this.f28202w.setImageMatrix(this.f28221h);
        }
    }

    class e implements TypeEvaluator {

        FloatEvaluator f28223a = new FloatEvaluator();

        e() {
        }

        @Override
        public Float evaluate(float f10, Float f11, Float f12) {
            float fFloatValue = this.f28223a.evaluate(f10, (Number) f11, (Number) f12).floatValue();
            if (fFloatValue < 0.1f) {
                fFloatValue = 0.0f;
            }
            return Float.valueOf(fFloatValue);
        }
    }

    class f implements ViewTreeObserver.OnPreDrawListener {
        f() {
        }

        @Override
        public boolean onPreDraw() {
            d.this.H();
            return true;
        }
    }

    private class g extends m {
        g() {
            super(d.this, null);
        }

        @Override
        protected float a() {
            return 0.0f;
        }
    }

    private class h extends m {
        h() {
            super(d.this, null);
        }

        @Override
        protected float a() {
            d dVar = d.this;
            return dVar.f28187h + dVar.f28188i;
        }
    }

    private class i extends m {
        i() {
            super(d.this, null);
        }

        @Override
        protected float a() {
            d dVar = d.this;
            return dVar.f28187h + dVar.f28189j;
        }
    }

    interface j {
        void a();

        void b();
    }

    interface k {
        void a();

        void b();
    }

    private class l extends m {
        l() {
            super(d.this, null);
        }

        @Override
        protected float a() {
            return d.this.f28187h;
        }
    }

    private abstract class m extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        private boolean f28230a;

        private float f28231b;

        private float f28232c;

        private m() {
        }

        protected abstract float a();

        @Override
        public void onAnimationEnd(Animator animator) {
            d.this.j0((int) this.f28232c);
            this.f28230a = false;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f28230a) {
                cb.i iVar = d.this.f28181b;
                this.f28231b = iVar == null ? 0.0f : iVar.y();
                this.f28232c = a();
                this.f28230a = true;
            }
            d dVar = d.this;
            float f10 = this.f28231b;
            dVar.j0((int) (f10 + ((this.f28232c - f10) * valueAnimator.getAnimatedFraction())));
        }

        m(d dVar, a aVar) {
            this();
        }
    }

    d(FloatingActionButton floatingActionButton, bb.b bVar) {
        this.f28202w = floatingActionButton;
        this.f28203x = bVar;
        w wVar = new w();
        this.f28191l = wVar;
        wVar.a(I, k(new i()));
        wVar.a(J, k(new h()));
        wVar.a(K, k(new h()));
        wVar.a(L, k(new h()));
        wVar.a(M, k(new l()));
        wVar.a(N, k(new g()));
        this.f28195p = floatingActionButton.getRotation();
    }

    private boolean d0() {
        return ViewCompat.isLaidOut(this.f28202w) && !this.f28202w.isInEditMode();
    }

    public void h(float f10, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f28202w.getDrawable();
        if (drawable == null || this.f28197r == 0) {
            return;
        }
        RectF rectF = this.f28205z;
        RectF rectF2 = this.A;
        rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int i10 = this.f28197r;
        rectF2.set(0.0f, 0.0f, i10, i10);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i11 = this.f28197r;
        matrix.postScale(f10, f10, i11 / 2.0f, i11 / 2.0f);
    }

    private AnimatorSet i(qa.h hVar, float f10, float f11, float f12) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f28202w, (Property<FloatingActionButton, Float>) View.ALPHA, f10);
        hVar.h("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f28202w, (Property<FloatingActionButton, Float>) View.SCALE_X, f11);
        hVar.h("scale").a(objectAnimatorOfFloat2);
        k0(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f28202w, (Property<FloatingActionButton, Float>) View.SCALE_Y, f11);
        hVar.h("scale").a(objectAnimatorOfFloat3);
        k0(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        h(f12, this.B);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.f28202w, new qa.f(), new c(), new Matrix(this.B));
        hVar.h("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        qa.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private AnimatorSet j(float f10, float f11, float f12, int i10, int i11) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new C0371d(this.f28202w.getAlpha(), f10, this.f28202w.getScaleX(), f11, this.f28202w.getScaleY(), this.f28196q, f12, new Matrix(this.B)));
        arrayList.add(valueAnimatorOfFloat);
        qa.b.a(animatorSet, arrayList);
        animatorSet.setDuration(ya.j.f(this.f28202w.getContext(), i10, this.f28202w.getContext().getResources().getInteger(R$integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(ya.j.g(this.f28202w.getContext(), i11, qa.a.f69578b));
        return animatorSet;
    }

    private ValueAnimator k(m mVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(D);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(mVar);
        valueAnimator.addUpdateListener(mVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    private void k0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new e());
    }

    private ViewTreeObserver.OnPreDrawListener q() {
        if (this.C == null) {
            this.C = new f();
        }
        return this.C;
    }

    abstract void A();

    void B() {
        cb.i iVar = this.f28181b;
        if (iVar != null) {
            cb.j.f(this.f28202w, iVar);
        }
        if (N()) {
            this.f28202w.getViewTreeObserver().addOnPreDrawListener(q());
        }
    }

    abstract void C();

    void D() {
        ViewTreeObserver viewTreeObserver = this.f28202w.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.C;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.C = null;
        }
    }

    abstract void E(int[] iArr);

    abstract void F(float f10, float f11, float f12);

    void G(Rect rect) {
        androidx.core.util.i.h(this.f28184e, "Didn't initialize content background");
        if (!c0()) {
            this.f28203x.b(this.f28184e);
        } else {
            this.f28203x.b(new InsetDrawable(this.f28184e, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    void H() {
        float rotation = this.f28202w.getRotation();
        if (this.f28195p != rotation) {
            this.f28195p = rotation;
            g0();
        }
    }

    void I() {
        ArrayList arrayList = this.f28201v;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((j) it.next()).b();
            }
        }
    }

    void J() {
        ArrayList arrayList = this.f28201v;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((j) it.next()).a();
            }
        }
    }

    public void K(Animator.AnimatorListener animatorListener) {
        ArrayList arrayList = this.f28200u;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    void L(Animator.AnimatorListener animatorListener) {
        ArrayList arrayList = this.f28199t;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    void M(j jVar) {
        ArrayList arrayList = this.f28201v;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(jVar);
    }

    abstract boolean N();

    void O(ColorStateList colorStateList) {
        cb.i iVar = this.f28181b;
        if (iVar != null) {
            iVar.setTintList(colorStateList);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f28183d;
        if (cVar != null) {
            cVar.c(colorStateList);
        }
    }

    void P(PorterDuff.Mode mode) {
        cb.i iVar = this.f28181b;
        if (iVar != null) {
            iVar.setTintMode(mode);
        }
    }

    final void Q(float f10) {
        if (this.f28187h != f10) {
            this.f28187h = f10;
            F(f10, this.f28188i, this.f28189j);
        }
    }

    void R(boolean z10) {
        this.f28185f = z10;
    }

    final void S(qa.h hVar) {
        this.f28194o = hVar;
    }

    final void T(float f10) {
        if (this.f28188i != f10) {
            this.f28188i = f10;
            F(this.f28187h, f10, this.f28189j);
        }
    }

    final void U(float f10) {
        this.f28196q = f10;
        Matrix matrix = this.B;
        h(f10, matrix);
        this.f28202w.setImageMatrix(matrix);
    }

    final void V(int i10) {
        if (this.f28197r != i10) {
            this.f28197r = i10;
            h0();
        }
    }

    void W(int i10) {
        this.f28190k = i10;
    }

    final void X(float f10) {
        if (this.f28189j != f10) {
            this.f28189j = f10;
            F(this.f28187h, this.f28188i, f10);
        }
    }

    void Y(ColorStateList colorStateList) {
        Drawable drawable = this.f28182c;
        if (drawable != null) {
            a1.a.o(drawable, ab.b.d(colorStateList));
        }
    }

    void Z(boolean z10) {
        this.f28186g = z10;
        i0();
    }

    final void a0(n nVar) {
        this.f28180a = nVar;
        cb.i iVar = this.f28181b;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
        Object obj = this.f28182c;
        if (obj instanceof q) {
            ((q) obj).setShapeAppearanceModel(nVar);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f28183d;
        if (cVar != null) {
            cVar.f(nVar);
        }
    }

    final void b0(qa.h hVar) {
        this.f28193n = hVar;
    }

    abstract boolean c0();

    public void e(Animator.AnimatorListener animatorListener) {
        if (this.f28200u == null) {
            this.f28200u = new ArrayList();
        }
        this.f28200u.add(animatorListener);
    }

    final boolean e0() {
        return !this.f28185f || this.f28202w.getSizeDimension() >= this.f28190k;
    }

    void f(Animator.AnimatorListener animatorListener) {
        if (this.f28199t == null) {
            this.f28199t = new ArrayList();
        }
        this.f28199t.add(animatorListener);
    }

    void f0(k kVar, boolean z10) {
        if (z()) {
            return;
        }
        Animator animator = this.f28192m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z11 = this.f28193n == null;
        if (!d0()) {
            this.f28202w.internalSetVisibility(0, z10);
            this.f28202w.setAlpha(1.0f);
            this.f28202w.setScaleY(1.0f);
            this.f28202w.setScaleX(1.0f);
            U(1.0f);
            if (kVar != null) {
                kVar.a();
                return;
            }
            return;
        }
        if (this.f28202w.getVisibility() != 0) {
            this.f28202w.setAlpha(0.0f);
            this.f28202w.setScaleY(z11 ? 0.4f : 0.0f);
            this.f28202w.setScaleX(z11 ? 0.4f : 0.0f);
            U(z11 ? 0.4f : 0.0f);
        }
        qa.h hVar = this.f28193n;
        AnimatorSet animatorSetI = hVar != null ? i(hVar, 1.0f, 1.0f, 1.0f) : j(1.0f, 1.0f, 1.0f, E, F);
        animatorSetI.addListener(new b(z10, kVar));
        ArrayList arrayList = this.f28199t;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetI.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetI.start();
    }

    void g(j jVar) {
        if (this.f28201v == null) {
            this.f28201v = new ArrayList();
        }
        this.f28201v.add(jVar);
    }

    abstract void g0();

    final void h0() {
        U(this.f28196q);
    }

    final void i0() {
        Rect rect = this.f28204y;
        r(rect);
        G(rect);
        this.f28203x.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    void j0(float f10) {
        cb.i iVar = this.f28181b;
        if (iVar != null) {
            iVar.c0(f10);
        }
    }

    final Drawable l() {
        return this.f28184e;
    }

    abstract float m();

    boolean n() {
        return this.f28185f;
    }

    final qa.h o() {
        return this.f28194o;
    }

    float p() {
        return this.f28188i;
    }

    void r(Rect rect) {
        int iV = v();
        float fM = this.f28186g ? m() + this.f28189j : 0.0f;
        int iMax = Math.max(iV, (int) Math.ceil(fM));
        int iMax2 = Math.max(iV, (int) Math.ceil(fM * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    float s() {
        return this.f28189j;
    }

    final n t() {
        return this.f28180a;
    }

    final qa.h u() {
        return this.f28193n;
    }

    int v() {
        if (this.f28185f) {
            return Math.max((this.f28190k - this.f28202w.getSizeDimension()) / 2, 0);
        }
        return 0;
    }

    void w(k kVar, boolean z10) {
        if (y()) {
            return;
        }
        Animator animator = this.f28192m;
        if (animator != null) {
            animator.cancel();
        }
        if (!d0()) {
            this.f28202w.internalSetVisibility(z10 ? 8 : 4, z10);
            if (kVar != null) {
                kVar.b();
                return;
            }
            return;
        }
        qa.h hVar = this.f28194o;
        AnimatorSet animatorSetI = hVar != null ? i(hVar, 0.0f, 0.0f, 0.0f) : j(0.0f, 0.4f, 0.4f, G, H);
        animatorSetI.addListener(new a(z10, kVar));
        ArrayList arrayList = this.f28200u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetI.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetI.start();
    }

    abstract void x(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i10);

    boolean y() {
        if (this.f28202w.getVisibility() == 0) {
            return this.f28198s == 1;
        }
        return this.f28198s != 2;
    }

    boolean z() {
        if (this.f28202w.getVisibility() != 0) {
            return this.f28198s == 2;
        }
        return this.f28198s != 1;
    }
}
