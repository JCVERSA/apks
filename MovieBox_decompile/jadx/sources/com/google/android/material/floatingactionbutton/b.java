package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.core.util.i;
import java.util.ArrayList;
import java.util.List;
import qa.h;

abstract class b implements f {

    private final Context f28156a;

    private final ExtendedFloatingActionButton f28157b;

    private final ArrayList f28158c = new ArrayList();

    private final com.google.android.material.floatingactionbutton.a f28159d;

    private h f28160e;

    private h f28161f;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(qa.a.a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.E.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f28157b.E.getDefaultColor()))));
        }

        @Override
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f10) {
            int colorForState = extendedFloatingActionButton.E.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f28157b.E.getDefaultColor());
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (qa.a.a(0.0f, Color.alpha(colorForState) / 255.0f, f10.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f10.floatValue() == 1.0f) {
                extendedFloatingActionButton.B(extendedFloatingActionButton.E);
            } else {
                extendedFloatingActionButton.B(colorStateListValueOf);
            }
        }
    }

    b(ExtendedFloatingActionButton extendedFloatingActionButton, com.google.android.material.floatingactionbutton.a aVar) {
        this.f28157b = extendedFloatingActionButton;
        this.f28156a = extendedFloatingActionButton.getContext();
        this.f28159d = aVar;
    }

    @Override
    public void a() {
        this.f28159d.b();
    }

    @Override
    public h c() {
        return this.f28161f;
    }

    @Override
    public final void e(Animator.AnimatorListener animatorListener) {
        this.f28158c.remove(animatorListener);
    }

    @Override
    public void f() {
        this.f28159d.b();
    }

    @Override
    public final void h(Animator.AnimatorListener animatorListener) {
        this.f28158c.add(animatorListener);
    }

    @Override
    public final void i(h hVar) {
        this.f28161f = hVar;
    }

    @Override
    public AnimatorSet j() {
        return n(o());
    }

    @Override
    public final List k() {
        return this.f28158c;
    }

    AnimatorSet n(h hVar) {
        ArrayList arrayList = new ArrayList();
        if (hVar.j("opacity")) {
            arrayList.add(hVar.f("opacity", this.f28157b, View.ALPHA));
        }
        if (hVar.j("scale")) {
            arrayList.add(hVar.f("scale", this.f28157b, View.SCALE_Y));
            arrayList.add(hVar.f("scale", this.f28157b, View.SCALE_X));
        }
        if (hVar.j("width")) {
            arrayList.add(hVar.f("width", this.f28157b, ExtendedFloatingActionButton.J));
        }
        if (hVar.j("height")) {
            arrayList.add(hVar.f("height", this.f28157b, ExtendedFloatingActionButton.K));
        }
        if (hVar.j("paddingStart")) {
            arrayList.add(hVar.f("paddingStart", this.f28157b, ExtendedFloatingActionButton.L));
        }
        if (hVar.j("paddingEnd")) {
            arrayList.add(hVar.f("paddingEnd", this.f28157b, ExtendedFloatingActionButton.M));
        }
        if (hVar.j("labelOpacity")) {
            arrayList.add(hVar.f("labelOpacity", this.f28157b, new a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        qa.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    public final h o() {
        h hVar = this.f28161f;
        if (hVar != null) {
            return hVar;
        }
        if (this.f28160e == null) {
            this.f28160e = h.d(this.f28156a, g());
        }
        return (h) i.g(this.f28160e);
    }

    @Override
    public void onAnimationStart(Animator animator) {
        this.f28159d.c(animator);
    }
}
