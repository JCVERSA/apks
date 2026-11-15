package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import cb.i;
import cb.n;
import com.google.android.material.R$color;
import java.util.ArrayList;

class e extends d {
    private StateListAnimator O;

    static class a extends i {
        a(n nVar) {
            super(nVar);
        }

        @Override
        public boolean isStateful() {
            return true;
        }
    }

    e(FloatingActionButton floatingActionButton, bb.b bVar) {
        super(floatingActionButton, bVar);
    }

    private StateListAnimator m0(float f10, float f11, float f12) {
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(d.I, n0(f10, f12));
        stateListAnimator.addState(d.J, n0(f10, f11));
        stateListAnimator.addState(d.K, n0(f10, f11));
        stateListAnimator.addState(d.L, n0(f10, f11));
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.f28202w, "elevation", f10).setDuration(0L));
        if (Build.VERSION.SDK_INT <= 24) {
            FloatingActionButton floatingActionButton = this.f28202w;
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
        }
        arrayList.add(ObjectAnimator.ofFloat(this.f28202w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
        animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
        animatorSet.setInterpolator(d.D);
        stateListAnimator.addState(d.M, animatorSet);
        stateListAnimator.addState(d.N, n0(0.0f, 0.0f));
        return stateListAnimator;
    }

    private Animator n0(float f10, float f11) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f28202w, "elevation", f10).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f28202w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f11).setDuration(100L));
        animatorSet.setInterpolator(d.D);
        return animatorSet;
    }

    @Override
    void A() {
    }

    @Override
    void C() {
        i0();
    }

    @Override
    void E(int[] iArr) {
    }

    @Override
    void F(float f10, float f11, float f12) {
        if (this.f28202w.getStateListAnimator() == this.O) {
            StateListAnimator stateListAnimatorM0 = m0(f10, f11, f12);
            this.O = stateListAnimatorM0;
            this.f28202w.setStateListAnimator(stateListAnimatorM0);
        }
        if (c0()) {
            i0();
        }
    }

    @Override
    boolean N() {
        return false;
    }

    @Override
    void Y(ColorStateList colorStateList) {
        Drawable drawable = this.f28182c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(ab.b.d(colorStateList));
        } else {
            super.Y(colorStateList);
        }
    }

    @Override
    boolean c0() {
        return this.f28203x.c() || !e0();
    }

    @Override
    void g0() {
    }

    c l0(int i10, ColorStateList colorStateList) {
        Context context = this.f28202w.getContext();
        c cVar = new c((n) androidx.core.util.i.g(this.f28180a));
        cVar.e(androidx.core.content.b.getColor(context, R$color.design_fab_stroke_top_outer_color), androidx.core.content.b.getColor(context, R$color.design_fab_stroke_top_inner_color), androidx.core.content.b.getColor(context, R$color.design_fab_stroke_end_inner_color), androidx.core.content.b.getColor(context, R$color.design_fab_stroke_end_outer_color));
        cVar.d(i10);
        cVar.c(colorStateList);
        return cVar;
    }

    @Override
    public float m() {
        return this.f28202w.getElevation();
    }

    i o0() {
        return new a((n) androidx.core.util.i.g(this.f28180a));
    }

    @Override
    void r(Rect rect) {
        if (this.f28203x.c()) {
            super.r(rect);
        } else if (e0()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f28190k - this.f28202w.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override
    void x(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        Drawable layerDrawable;
        i iVarO0 = o0();
        this.f28181b = iVarO0;
        iVarO0.setTintList(colorStateList);
        if (mode != null) {
            this.f28181b.setTintMode(mode);
        }
        this.f28181b.S(this.f28202w.getContext());
        if (i10 > 0) {
            this.f28183d = l0(i10, colorStateList);
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) androidx.core.util.i.g(this.f28183d), (Drawable) androidx.core.util.i.g(this.f28181b)});
        } else {
            this.f28183d = null;
            layerDrawable = this.f28181b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(ab.b.d(colorStateList2), layerDrawable, null);
        this.f28182c = rippleDrawable;
        this.f28184e = rippleDrawable;
    }
}
