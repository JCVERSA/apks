package com.google.android.material.card;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import cb.e;
import cb.f;
import cb.i;
import cb.m;
import cb.n;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import ya.j;
import za.c;

class b {
    private static final Drawable A;

    private static final double f27721z = Math.cos(Math.toRadians(45.0d));

    private final MaterialCardView f27722a;

    private final i f27724c;

    private final i f27725d;

    private int f27726e;

    private int f27727f;

    private int f27728g;

    private int f27729h;

    private Drawable f27730i;

    private Drawable f27731j;

    private ColorStateList f27732k;

    private ColorStateList f27733l;

    private n f27734m;

    private ColorStateList f27735n;

    private Drawable f27736o;

    private LayerDrawable f27737p;

    private i f27738q;

    private i f27739r;

    private boolean f27741t;

    private ValueAnimator f27742u;

    private final TimeInterpolator f27743v;

    private final int f27744w;

    private final int f27745x;

    private final Rect f27723b = new Rect();

    private boolean f27740s = false;

    private float f27746y = 0.0f;

    class a extends InsetDrawable {
        a(Drawable drawable, int i10, int i11, int i12, int i13) {
            super(drawable, i10, i11, i12, i13);
        }

        @Override
        public int getMinimumHeight() {
            return -1;
        }

        @Override
        public int getMinimumWidth() {
            return -1;
        }

        @Override
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    static {
        A = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public b(MaterialCardView materialCardView, AttributeSet attributeSet, int i10, int i11) {
        this.f27722a = materialCardView;
        i iVar = new i(materialCardView.getContext(), attributeSet, i10, i11);
        this.f27724c = iVar;
        iVar.S(materialCardView.getContext());
        iVar.j0(-12303292);
        n.b bVarV = iVar.G().v();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R$styleable.CardView, i10, R$style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.CardView_cardCornerRadius)) {
            bVarV.o(typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardCornerRadius, 0.0f));
        }
        this.f27725d = new i();
        Z(bVarV.m());
        this.f27743v = j.g(materialCardView.getContext(), R$attr.motionEasingLinearInterpolator, qa.a.f69577a);
        this.f27744w = j.f(materialCardView.getContext(), R$attr.motionDurationShort2, 300);
        this.f27745x = j.f(materialCardView.getContext(), R$attr.motionDurationShort1, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    private Drawable D(Drawable drawable) {
        int iCeil;
        int iCeil2;
        if (this.f27722a.getUseCompatPadding()) {
            iCeil2 = (int) Math.ceil(f());
            iCeil = (int) Math.ceil(e());
        } else {
            iCeil = 0;
            iCeil2 = 0;
        }
        return new a(drawable, iCeil, iCeil2, iCeil, iCeil2);
    }

    private boolean G() {
        return (this.f27728g & 80) == 80;
    }

    private boolean H() {
        return (this.f27728g & GravityCompat.END) == 8388613;
    }

    public void I(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f27731j.setAlpha((int) (255.0f * fFloatValue));
        this.f27746y = fFloatValue;
    }

    private float c() {
        return Math.max(Math.max(d(this.f27734m.q(), this.f27724c.L()), d(this.f27734m.s(), this.f27724c.M())), Math.max(d(this.f27734m.k(), this.f27724c.v()), d(this.f27734m.i(), this.f27724c.u())));
    }

    private float d(e eVar, float f10) {
        if (eVar instanceof m) {
            return (float) ((1.0d - f27721z) * ((double) f10));
        }
        if (eVar instanceof f) {
            return f10 / 2.0f;
        }
        return 0.0f;
    }

    private boolean d0() {
        return this.f27722a.getPreventCornerOverlap() && !g();
    }

    private float e() {
        return this.f27722a.getMaxCardElevation() + (e0() ? c() : 0.0f);
    }

    private boolean e0() {
        return this.f27722a.getPreventCornerOverlap() && g() && this.f27722a.getUseCompatPadding();
    }

    private float f() {
        return (this.f27722a.getMaxCardElevation() * 1.5f) + (e0() ? c() : 0.0f);
    }

    private boolean f0() {
        if (this.f27722a.isClickable()) {
            return true;
        }
        View view = this.f27722a;
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    private boolean g() {
        return this.f27724c.V();
    }

    private Drawable h() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        i iVarJ = j();
        this.f27738q = iVarJ;
        iVarJ.d0(this.f27732k);
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, this.f27738q);
        return stateListDrawable;
    }

    private Drawable i() {
        if (!ab.b.f266a) {
            return h();
        }
        this.f27739r = j();
        return new RippleDrawable(this.f27732k, null, this.f27739r);
    }

    private i j() {
        return new i(this.f27734m);
    }

    private void j0(Drawable drawable) {
        if (this.f27722a.getForeground() instanceof InsetDrawable) {
            ((InsetDrawable) this.f27722a.getForeground()).setDrawable(drawable);
        } else {
            this.f27722a.setForeground(D(drawable));
        }
    }

    private void l0() {
        Drawable drawable;
        if (ab.b.f266a && (drawable = this.f27736o) != null) {
            ((RippleDrawable) drawable).setColor(this.f27732k);
            return;
        }
        i iVar = this.f27738q;
        if (iVar != null) {
            iVar.d0(this.f27732k);
        }
    }

    private Drawable t() {
        if (this.f27736o == null) {
            this.f27736o = i();
        }
        if (this.f27737p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f27736o, this.f27725d, this.f27731j});
            this.f27737p = layerDrawable;
            layerDrawable.setId(2, R$id.mtrl_card_checked_layer_id);
        }
        return this.f27737p;
    }

    private float v() {
        if (this.f27722a.getPreventCornerOverlap() && this.f27722a.getUseCompatPadding()) {
            return (float) ((1.0d - f27721z) * ((double) this.f27722a.getCardViewRadius()));
        }
        return 0.0f;
    }

    ColorStateList A() {
        return this.f27735n;
    }

    int B() {
        return this.f27729h;
    }

    Rect C() {
        return this.f27723b;
    }

    boolean E() {
        return this.f27740s;
    }

    boolean F() {
        return this.f27741t;
    }

    void J(TypedArray typedArray) {
        ColorStateList colorStateListA = c.a(this.f27722a.getContext(), typedArray, R$styleable.MaterialCardView_strokeColor);
        this.f27735n = colorStateListA;
        if (colorStateListA == null) {
            this.f27735n = ColorStateList.valueOf(-1);
        }
        this.f27729h = typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_strokeWidth, 0);
        boolean z10 = typedArray.getBoolean(R$styleable.MaterialCardView_android_checkable, false);
        this.f27741t = z10;
        this.f27722a.setLongClickable(z10);
        this.f27733l = c.a(this.f27722a.getContext(), typedArray, R$styleable.MaterialCardView_checkedIconTint);
        R(c.e(this.f27722a.getContext(), typedArray, R$styleable.MaterialCardView_checkedIcon));
        U(typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_checkedIconSize, 0));
        T(typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_checkedIconMargin, 0));
        this.f27728g = typedArray.getInteger(R$styleable.MaterialCardView_checkedIconGravity, MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END);
        ColorStateList colorStateListA2 = c.a(this.f27722a.getContext(), typedArray, R$styleable.MaterialCardView_rippleColor);
        this.f27732k = colorStateListA2;
        if (colorStateListA2 == null) {
            this.f27732k = ColorStateList.valueOf(com.google.android.material.color.b.d(this.f27722a, R$attr.colorControlHighlight));
        }
        N(c.a(this.f27722a.getContext(), typedArray, R$styleable.MaterialCardView_cardForegroundColor));
        l0();
        i0();
        m0();
        this.f27722a.setBackgroundInternal(D(this.f27724c));
        Drawable drawableT = f0() ? t() : this.f27725d;
        this.f27730i = drawableT;
        this.f27722a.setForeground(D(drawableT));
    }

    void K(int i10, int i11) {
        int iCeil;
        int iCeil2;
        int i12;
        int i13;
        if (this.f27737p != null) {
            if (this.f27722a.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(f() * 2.0f);
                iCeil2 = (int) Math.ceil(e() * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i14 = H() ? ((i10 - this.f27726e) - this.f27727f) - iCeil2 : this.f27726e;
            int i15 = G() ? this.f27726e : ((i11 - this.f27726e) - this.f27727f) - iCeil;
            int i16 = H() ? this.f27726e : ((i10 - this.f27726e) - this.f27727f) - iCeil2;
            int i17 = G() ? ((i11 - this.f27726e) - this.f27727f) - iCeil : this.f27726e;
            if (ViewCompat.getLayoutDirection(this.f27722a) == 1) {
                i13 = i16;
                i12 = i14;
            } else {
                i12 = i16;
                i13 = i14;
            }
            this.f27737p.setLayerInset(2, i13, i17, i12, i15);
        }
    }

    void L(boolean z10) {
        this.f27740s = z10;
    }

    void M(ColorStateList colorStateList) {
        this.f27724c.d0(colorStateList);
    }

    void N(ColorStateList colorStateList) {
        i iVar = this.f27725d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        iVar.d0(colorStateList);
    }

    void O(boolean z10) {
        this.f27741t = z10;
    }

    public void P(boolean z10) {
        Q(z10, false);
    }

    public void Q(boolean z10, boolean z11) {
        Drawable drawable = this.f27731j;
        if (drawable != null) {
            if (z11) {
                b(z10);
            } else {
                drawable.setAlpha(z10 ? 255 : 0);
                this.f27746y = z10 ? 1.0f : 0.0f;
            }
        }
    }

    void R(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = a1.a.r(drawable).mutate();
            this.f27731j = drawableMutate;
            a1.a.o(drawableMutate, this.f27733l);
            P(this.f27722a.isChecked());
        } else {
            this.f27731j = A;
        }
        LayerDrawable layerDrawable = this.f27737p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R$id.mtrl_card_checked_layer_id, this.f27731j);
        }
    }

    void S(int i10) {
        this.f27728g = i10;
        K(this.f27722a.getMeasuredWidth(), this.f27722a.getMeasuredHeight());
    }

    void T(int i10) {
        this.f27726e = i10;
    }

    void U(int i10) {
        this.f27727f = i10;
    }

    void V(ColorStateList colorStateList) {
        this.f27733l = colorStateList;
        Drawable drawable = this.f27731j;
        if (drawable != null) {
            a1.a.o(drawable, colorStateList);
        }
    }

    void W(float f10) {
        Z(this.f27734m.w(f10));
        this.f27730i.invalidateSelf();
        if (e0() || d0()) {
            h0();
        }
        if (e0()) {
            k0();
        }
    }

    void X(float f10) {
        this.f27724c.e0(f10);
        i iVar = this.f27725d;
        if (iVar != null) {
            iVar.e0(f10);
        }
        i iVar2 = this.f27739r;
        if (iVar2 != null) {
            iVar2.e0(f10);
        }
    }

    void Y(ColorStateList colorStateList) {
        this.f27732k = colorStateList;
        l0();
    }

    void Z(n nVar) {
        this.f27734m = nVar;
        this.f27724c.setShapeAppearanceModel(nVar);
        i iVar = this.f27724c;
        iVar.i0(!iVar.V());
        i iVar2 = this.f27725d;
        if (iVar2 != null) {
            iVar2.setShapeAppearanceModel(nVar);
        }
        i iVar3 = this.f27739r;
        if (iVar3 != null) {
            iVar3.setShapeAppearanceModel(nVar);
        }
        i iVar4 = this.f27738q;
        if (iVar4 != null) {
            iVar4.setShapeAppearanceModel(nVar);
        }
    }

    void a0(ColorStateList colorStateList) {
        if (this.f27735n == colorStateList) {
            return;
        }
        this.f27735n = colorStateList;
        m0();
    }

    public void b(boolean z10) {
        float f10 = z10 ? 1.0f : 0.0f;
        float f11 = z10 ? 1.0f - this.f27746y : this.f27746y;
        ValueAnimator valueAnimator = this.f27742u;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f27742u = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f27746y, f10);
        this.f27742u = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f27720a.I(valueAnimator2);
            }
        });
        this.f27742u.setInterpolator(this.f27743v);
        this.f27742u.setDuration((long) ((z10 ? this.f27744w : this.f27745x) * f11));
        this.f27742u.start();
    }

    void b0(int i10) {
        if (i10 == this.f27729h) {
            return;
        }
        this.f27729h = i10;
        m0();
    }

    void c0(int i10, int i11, int i12, int i13) {
        this.f27723b.set(i10, i11, i12, i13);
        h0();
    }

    void g0() {
        Drawable drawable = this.f27730i;
        Drawable drawableT = f0() ? t() : this.f27725d;
        this.f27730i = drawableT;
        if (drawable != drawableT) {
            j0(drawableT);
        }
    }

    void h0() {
        int iC = (int) (((d0() || e0()) ? c() : 0.0f) - v());
        MaterialCardView materialCardView = this.f27722a;
        Rect rect = this.f27723b;
        materialCardView.d(rect.left + iC, rect.top + iC, rect.right + iC, rect.bottom + iC);
    }

    void i0() {
        this.f27724c.c0(this.f27722a.getCardElevation());
    }

    void k() {
        Drawable drawable = this.f27736o;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i10 = bounds.bottom;
            this.f27736o.setBounds(bounds.left, bounds.top, bounds.right, i10 - 1);
            this.f27736o.setBounds(bounds.left, bounds.top, bounds.right, i10);
        }
    }

    void k0() {
        if (!E()) {
            this.f27722a.setBackgroundInternal(D(this.f27724c));
        }
        this.f27722a.setForeground(D(this.f27730i));
    }

    i l() {
        return this.f27724c;
    }

    ColorStateList m() {
        return this.f27724c.z();
    }

    void m0() {
        this.f27725d.m0(this.f27729h, this.f27735n);
    }

    ColorStateList n() {
        return this.f27725d.z();
    }

    Drawable o() {
        return this.f27731j;
    }

    int p() {
        return this.f27728g;
    }

    int q() {
        return this.f27726e;
    }

    int r() {
        return this.f27727f;
    }

    ColorStateList s() {
        return this.f27733l;
    }

    float u() {
        return this.f27724c.L();
    }

    float w() {
        return this.f27724c.A();
    }

    ColorStateList x() {
        return this.f27732k;
    }

    n y() {
        return this.f27734m;
    }

    int z() {
        ColorStateList colorStateList = this.f27735n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }
}
