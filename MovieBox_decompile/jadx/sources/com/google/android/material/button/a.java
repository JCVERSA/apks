package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.core.view.ViewCompat;
import cb.i;
import cb.n;
import cb.q;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import com.google.android.material.color.b;
import com.google.android.material.internal.f0;
import za.c;

class a {

    private static final boolean f27690u = true;

    private static final boolean f27691v = false;

    private final MaterialButton f27692a;

    private n f27693b;

    private int f27694c;

    private int f27695d;

    private int f27696e;

    private int f27697f;

    private int f27698g;

    private int f27699h;

    private PorterDuff.Mode f27700i;

    private ColorStateList f27701j;

    private ColorStateList f27702k;

    private ColorStateList f27703l;

    private Drawable f27704m;

    private boolean f27708q;

    private LayerDrawable f27710s;

    private int f27711t;

    private boolean f27705n = false;

    private boolean f27706o = false;

    private boolean f27707p = false;

    private boolean f27709r = true;

    a(MaterialButton materialButton, n nVar) {
        this.f27692a = materialButton;
        this.f27693b = nVar;
    }

    private void G(int i10, int i11) {
        int paddingStart = ViewCompat.getPaddingStart(this.f27692a);
        int paddingTop = this.f27692a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f27692a);
        int paddingBottom = this.f27692a.getPaddingBottom();
        int i12 = this.f27696e;
        int i13 = this.f27697f;
        this.f27697f = i11;
        this.f27696e = i10;
        if (!this.f27706o) {
            H();
        }
        ViewCompat.setPaddingRelative(this.f27692a, paddingStart, (paddingTop + i10) - i12, paddingEnd, (paddingBottom + i11) - i13);
    }

    private void H() {
        this.f27692a.setInternalBackground(a());
        i iVarF = f();
        if (iVarF != null) {
            iVarF.c0(this.f27711t);
            iVarF.setState(this.f27692a.getDrawableState());
        }
    }

    private void I(n nVar) {
        if (f27691v && !this.f27706o) {
            int paddingStart = ViewCompat.getPaddingStart(this.f27692a);
            int paddingTop = this.f27692a.getPaddingTop();
            int paddingEnd = ViewCompat.getPaddingEnd(this.f27692a);
            int paddingBottom = this.f27692a.getPaddingBottom();
            H();
            ViewCompat.setPaddingRelative(this.f27692a, paddingStart, paddingTop, paddingEnd, paddingBottom);
            return;
        }
        if (f() != null) {
            f().setShapeAppearanceModel(nVar);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(nVar);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(nVar);
        }
    }

    private void J() {
        i iVarF = f();
        i iVarN = n();
        if (iVarF != null) {
            iVarF.m0(this.f27699h, this.f27702k);
            if (iVarN != null) {
                iVarN.l0(this.f27699h, this.f27705n ? b.d(this.f27692a, R$attr.colorSurface) : 0);
            }
        }
    }

    private InsetDrawable K(Drawable drawable) {
        return new InsetDrawable(drawable, this.f27694c, this.f27696e, this.f27695d, this.f27697f);
    }

    private Drawable a() {
        i iVar = new i(this.f27693b);
        iVar.S(this.f27692a.getContext());
        a1.a.o(iVar, this.f27701j);
        PorterDuff.Mode mode = this.f27700i;
        if (mode != null) {
            a1.a.p(iVar, mode);
        }
        iVar.m0(this.f27699h, this.f27702k);
        i iVar2 = new i(this.f27693b);
        iVar2.setTint(0);
        iVar2.l0(this.f27699h, this.f27705n ? b.d(this.f27692a, R$attr.colorSurface) : 0);
        if (f27690u) {
            i iVar3 = new i(this.f27693b);
            this.f27704m = iVar3;
            a1.a.n(iVar3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(ab.b.d(this.f27703l), K(new LayerDrawable(new Drawable[]{iVar2, iVar})), this.f27704m);
            this.f27710s = rippleDrawable;
            return rippleDrawable;
        }
        ab.a aVar = new ab.a(this.f27693b);
        this.f27704m = aVar;
        a1.a.o(aVar, ab.b.d(this.f27703l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{iVar2, iVar, this.f27704m});
        this.f27710s = layerDrawable;
        return K(layerDrawable);
    }

    private i g(boolean z10) {
        LayerDrawable layerDrawable = this.f27710s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f27690u ? (i) ((LayerDrawable) ((InsetDrawable) this.f27710s.getDrawable(0)).getDrawable()).getDrawable(!z10 ? 1 : 0) : (i) this.f27710s.getDrawable(!z10 ? 1 : 0);
    }

    private i n() {
        return g(true);
    }

    void A(boolean z10) {
        this.f27705n = z10;
        J();
    }

    void B(ColorStateList colorStateList) {
        if (this.f27702k != colorStateList) {
            this.f27702k = colorStateList;
            J();
        }
    }

    void C(int i10) {
        if (this.f27699h != i10) {
            this.f27699h = i10;
            J();
        }
    }

    void D(ColorStateList colorStateList) {
        if (this.f27701j != colorStateList) {
            this.f27701j = colorStateList;
            if (f() != null) {
                a1.a.o(f(), this.f27701j);
            }
        }
    }

    void E(PorterDuff.Mode mode) {
        if (this.f27700i != mode) {
            this.f27700i = mode;
            if (f() == null || this.f27700i == null) {
                return;
            }
            a1.a.p(f(), this.f27700i);
        }
    }

    void F(boolean z10) {
        this.f27709r = z10;
    }

    int b() {
        return this.f27698g;
    }

    public int c() {
        return this.f27697f;
    }

    public int d() {
        return this.f27696e;
    }

    public q e() {
        LayerDrawable layerDrawable = this.f27710s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f27710s.getNumberOfLayers() > 2 ? (q) this.f27710s.getDrawable(2) : (q) this.f27710s.getDrawable(1);
    }

    i f() {
        return g(false);
    }

    ColorStateList h() {
        return this.f27703l;
    }

    n i() {
        return this.f27693b;
    }

    ColorStateList j() {
        return this.f27702k;
    }

    int k() {
        return this.f27699h;
    }

    ColorStateList l() {
        return this.f27701j;
    }

    PorterDuff.Mode m() {
        return this.f27700i;
    }

    boolean o() {
        return this.f27706o;
    }

    boolean p() {
        return this.f27708q;
    }

    boolean q() {
        return this.f27709r;
    }

    void r(TypedArray typedArray) {
        this.f27694c = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetLeft, 0);
        this.f27695d = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetRight, 0);
        this.f27696e = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetTop, 0);
        this.f27697f = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(R$styleable.MaterialButton_cornerRadius)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_cornerRadius, -1);
            this.f27698g = dimensionPixelSize;
            z(this.f27693b.w(dimensionPixelSize));
            this.f27707p = true;
        }
        this.f27699h = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_strokeWidth, 0);
        this.f27700i = f0.r(typedArray.getInt(R$styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f27701j = c.a(this.f27692a.getContext(), typedArray, R$styleable.MaterialButton_backgroundTint);
        this.f27702k = c.a(this.f27692a.getContext(), typedArray, R$styleable.MaterialButton_strokeColor);
        this.f27703l = c.a(this.f27692a.getContext(), typedArray, R$styleable.MaterialButton_rippleColor);
        this.f27708q = typedArray.getBoolean(R$styleable.MaterialButton_android_checkable, false);
        this.f27711t = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_elevation, 0);
        this.f27709r = typedArray.getBoolean(R$styleable.MaterialButton_toggleCheckedStateOnClick, true);
        int paddingStart = ViewCompat.getPaddingStart(this.f27692a);
        int paddingTop = this.f27692a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f27692a);
        int paddingBottom = this.f27692a.getPaddingBottom();
        if (typedArray.hasValue(R$styleable.MaterialButton_android_background)) {
            t();
        } else {
            H();
        }
        ViewCompat.setPaddingRelative(this.f27692a, paddingStart + this.f27694c, paddingTop + this.f27696e, paddingEnd + this.f27695d, paddingBottom + this.f27697f);
    }

    void s(int i10) {
        if (f() != null) {
            f().setTint(i10);
        }
    }

    void t() {
        this.f27706o = true;
        this.f27692a.setSupportBackgroundTintList(this.f27701j);
        this.f27692a.setSupportBackgroundTintMode(this.f27700i);
    }

    void u(boolean z10) {
        this.f27708q = z10;
    }

    void v(int i10) {
        if (this.f27707p && this.f27698g == i10) {
            return;
        }
        this.f27698g = i10;
        this.f27707p = true;
        z(this.f27693b.w(i10));
    }

    public void w(int i10) {
        G(this.f27696e, i10);
    }

    public void x(int i10) {
        G(i10, this.f27697f);
    }

    void y(ColorStateList colorStateList) {
        if (this.f27703l != colorStateList) {
            this.f27703l = colorStateList;
            boolean z10 = f27690u;
            if (z10 && (this.f27692a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f27692a.getBackground()).setColor(ab.b.d(colorStateList));
            } else {
                if (z10 || !(this.f27692a.getBackground() instanceof ab.a)) {
                    return;
                }
                ((ab.a) this.f27692a.getBackground()).setTintList(ab.b.d(colorStateList));
            }
        }
    }

    void z(n nVar) {
        this.f27693b = nVar;
        I(nVar);
    }
}
