package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.j0;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;

class r extends LinearLayout {

    final TextInputLayout f29121a;

    private final FrameLayout f29122b;

    private final CheckableImageButton f29123c;

    private ColorStateList f29124d;

    private PorterDuff.Mode f29125e;

    private View.OnLongClickListener f29126f;

    private final CheckableImageButton f29127g;

    private final d f29128h;

    private int f29129i;

    private final LinkedHashSet f29130j;

    private ColorStateList f29131k;

    private PorterDuff.Mode f29132l;

    private int f29133m;

    private ImageView.ScaleType f29134n;

    private View.OnLongClickListener f29135o;

    private CharSequence f29136p;

    private final TextView f29137q;

    private boolean f29138r;

    private EditText f29139s;

    private final AccessibilityManager f29140t;

    private AccessibilityManagerCompat.TouchExplorationStateChangeListener f29141u;

    private final TextWatcher f29142v;

    private final TextInputLayout.e f29143w;

    class a extends com.google.android.material.internal.a0 {
        a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            r.this.o().a(editable);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            r.this.o().b(charSequence, i10, i11, i12);
        }
    }

    class b implements TextInputLayout.e {
        b() {
        }

        @Override
        public void a(TextInputLayout textInputLayout) {
            if (r.this.f29139s == textInputLayout.getEditText()) {
                return;
            }
            if (r.this.f29139s != null) {
                r.this.f29139s.removeTextChangedListener(r.this.f29142v);
                if (r.this.f29139s.getOnFocusChangeListener() == r.this.o().e()) {
                    r.this.f29139s.setOnFocusChangeListener(null);
                }
            }
            r.this.f29139s = textInputLayout.getEditText();
            if (r.this.f29139s != null) {
                r.this.f29139s.addTextChangedListener(r.this.f29142v);
            }
            r.this.o().n(r.this.f29139s);
            r rVar = r.this;
            rVar.m0(rVar.o());
        }
    }

    class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            r.this.h();
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            r.this.R();
        }
    }

    private static class d {

        private final SparseArray f29147a = new SparseArray();

        private final r f29148b;

        private final int f29149c;

        private final int f29150d;

        d(r rVar, j0 j0Var) {
            this.f29148b = rVar;
            this.f29149c = j0Var.n(R$styleable.TextInputLayout_endIconDrawable, 0);
            this.f29150d = j0Var.n(R$styleable.TextInputLayout_passwordToggleDrawable, 0);
        }

        private s b(int i10) {
            if (i10 == -1) {
                return new g(this.f29148b);
            }
            if (i10 == 0) {
                return new v(this.f29148b);
            }
            if (i10 == 1) {
                return new x(this.f29148b, this.f29150d);
            }
            if (i10 == 2) {
                return new f(this.f29148b);
            }
            if (i10 == 3) {
                return new p(this.f29148b);
            }
            throw new IllegalArgumentException("Invalid end icon mode: " + i10);
        }

        s c(int i10) {
            s sVar = (s) this.f29147a.get(i10);
            if (sVar != null) {
                return sVar;
            }
            s sVarB = b(i10);
            this.f29147a.append(i10, sVarB);
            return sVarB;
        }
    }

    r(TextInputLayout textInputLayout, j0 j0Var) {
        super(textInputLayout.getContext());
        this.f29129i = 0;
        this.f29130j = new LinkedHashSet();
        this.f29142v = new a();
        b bVar = new b();
        this.f29143w = bVar;
        this.f29140t = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f29121a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f29122b = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButtonK = k(this, layoutInflaterFrom, R$id.text_input_error_icon);
        this.f29123c = checkableImageButtonK;
        CheckableImageButton checkableImageButtonK2 = k(frameLayout, layoutInflaterFrom, R$id.text_input_end_icon);
        this.f29127g = checkableImageButtonK2;
        this.f29128h = new d(this, j0Var);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f29137q = appCompatTextView;
        E(j0Var);
        D(j0Var);
        F(j0Var);
        frameLayout.addView(checkableImageButtonK2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(checkableImageButtonK);
        textInputLayout.addOnEditTextAttachedListener(bVar);
        addOnAttachStateChangeListener(new c());
    }

    private void B0() {
        this.f29122b.setVisibility((this.f29127g.getVisibility() != 0 || J()) ? 8 : 0);
        setVisibility((I() || J() || ((this.f29136p == null || this.f29138r) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    private void C0() {
        this.f29123c.setVisibility(u() != null && this.f29121a.isErrorEnabled() && this.f29121a.X() ? 0 : 8);
        B0();
        D0();
        if (C()) {
            return;
        }
        this.f29121a.i0();
    }

    private void D(j0 j0Var) {
        if (!j0Var.s(R$styleable.TextInputLayout_passwordToggleEnabled)) {
            if (j0Var.s(R$styleable.TextInputLayout_endIconTint)) {
                this.f29131k = za.c.b(getContext(), j0Var, R$styleable.TextInputLayout_endIconTint);
            }
            if (j0Var.s(R$styleable.TextInputLayout_endIconTintMode)) {
                this.f29132l = com.google.android.material.internal.f0.r(j0Var.k(R$styleable.TextInputLayout_endIconTintMode, -1), null);
            }
        }
        if (j0Var.s(R$styleable.TextInputLayout_endIconMode)) {
            Z(j0Var.k(R$styleable.TextInputLayout_endIconMode, 0));
            if (j0Var.s(R$styleable.TextInputLayout_endIconContentDescription)) {
                V(j0Var.p(R$styleable.TextInputLayout_endIconContentDescription));
            }
            T(j0Var.a(R$styleable.TextInputLayout_endIconCheckable, true));
        } else if (j0Var.s(R$styleable.TextInputLayout_passwordToggleEnabled)) {
            if (j0Var.s(R$styleable.TextInputLayout_passwordToggleTint)) {
                this.f29131k = za.c.b(getContext(), j0Var, R$styleable.TextInputLayout_passwordToggleTint);
            }
            if (j0Var.s(R$styleable.TextInputLayout_passwordToggleTintMode)) {
                this.f29132l = com.google.android.material.internal.f0.r(j0Var.k(R$styleable.TextInputLayout_passwordToggleTintMode, -1), null);
            }
            Z(j0Var.a(R$styleable.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            V(j0Var.p(R$styleable.TextInputLayout_passwordToggleContentDescription));
        }
        Y(j0Var.f(R$styleable.TextInputLayout_endIconMinSize, getResources().getDimensionPixelSize(R$dimen.mtrl_min_touch_target_size)));
        if (j0Var.s(R$styleable.TextInputLayout_endIconScaleType)) {
            c0(t.b(j0Var.k(R$styleable.TextInputLayout_endIconScaleType, -1)));
        }
    }

    private void E(j0 j0Var) {
        if (j0Var.s(R$styleable.TextInputLayout_errorIconTint)) {
            this.f29124d = za.c.b(getContext(), j0Var, R$styleable.TextInputLayout_errorIconTint);
        }
        if (j0Var.s(R$styleable.TextInputLayout_errorIconTintMode)) {
            this.f29125e = com.google.android.material.internal.f0.r(j0Var.k(R$styleable.TextInputLayout_errorIconTintMode, -1), null);
        }
        if (j0Var.s(R$styleable.TextInputLayout_errorIconDrawable)) {
            h0(j0Var.g(R$styleable.TextInputLayout_errorIconDrawable));
        }
        this.f29123c.setContentDescription(getResources().getText(R$string.error_icon_content_description));
        ViewCompat.setImportantForAccessibility(this.f29123c, 2);
        this.f29123c.setClickable(false);
        this.f29123c.setPressable(false);
        this.f29123c.setFocusable(false);
    }

    private void E0() {
        int visibility = this.f29137q.getVisibility();
        int i10 = (this.f29136p == null || this.f29138r) ? 8 : 0;
        if (visibility != i10) {
            o().q(i10 == 0);
        }
        B0();
        this.f29137q.setVisibility(i10);
        this.f29121a.i0();
    }

    private void F(j0 j0Var) {
        this.f29137q.setVisibility(8);
        this.f29137q.setId(R$id.textinput_suffix_text);
        this.f29137q.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        ViewCompat.setAccessibilityLiveRegion(this.f29137q, 1);
        v0(j0Var.n(R$styleable.TextInputLayout_suffixTextAppearance, 0));
        if (j0Var.s(R$styleable.TextInputLayout_suffixTextColor)) {
            w0(j0Var.c(R$styleable.TextInputLayout_suffixTextColor));
        }
        u0(j0Var.p(R$styleable.TextInputLayout_suffixText));
    }

    public void R() {
        AccessibilityManager accessibilityManager;
        AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.f29141u;
        if (touchExplorationStateChangeListener == null || (accessibilityManager = this.f29140t) == null) {
            return;
        }
        AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
    }

    public void h() {
        if (this.f29141u == null || this.f29140t == null || !ViewCompat.isAttachedToWindow(this)) {
            return;
        }
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.f29140t, this.f29141u);
    }

    private CheckableImageButton k(ViewGroup viewGroup, LayoutInflater layoutInflater, int i10) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R$layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i10);
        t.e(checkableImageButton);
        if (za.c.j(getContext())) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    private void l(int i10) {
        Iterator it = this.f29130j.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    public void m0(s sVar) {
        if (this.f29139s == null) {
            return;
        }
        if (sVar.e() != null) {
            this.f29139s.setOnFocusChangeListener(sVar.e());
        }
        if (sVar.g() != null) {
            this.f29127g.setOnFocusChangeListener(sVar.g());
        }
    }

    private int v(s sVar) {
        int i10 = this.f29128h.f29149c;
        return i10 == 0 ? sVar.d() : i10;
    }

    private void x0(s sVar) {
        sVar.s();
        this.f29141u = sVar.h();
        h();
    }

    private void y0(s sVar) {
        R();
        this.f29141u = null;
        sVar.u();
    }

    private void z0(boolean z10) {
        if (!z10 || p() == null) {
            t.a(this.f29121a, this.f29127g, this.f29131k, this.f29132l);
            return;
        }
        Drawable drawableMutate = a1.a.r(p()).mutate();
        a1.a.n(drawableMutate, this.f29121a.getErrorCurrentTextColors());
        this.f29127g.setImageDrawable(drawableMutate);
    }

    int A() {
        return ViewCompat.getPaddingEnd(this) + ViewCompat.getPaddingEnd(this.f29137q) + ((I() || J()) ? this.f29127g.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) this.f29127g.getLayoutParams()) : 0);
    }

    void A0(boolean z10) {
        if (this.f29129i == 1) {
            this.f29127g.performClick();
            if (z10) {
                this.f29127g.jumpDrawablesToCurrentState();
            }
        }
    }

    TextView B() {
        return this.f29137q;
    }

    boolean C() {
        return this.f29129i != 0;
    }

    void D0() {
        if (this.f29121a.f29026d == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f29137q, getContext().getResources().getDimensionPixelSize(R$dimen.material_input_text_to_prefix_suffix_padding), this.f29121a.f29026d.getPaddingTop(), (I() || J()) ? 0 : ViewCompat.getPaddingEnd(this.f29121a.f29026d), this.f29121a.f29026d.getPaddingBottom());
    }

    boolean G() {
        return this.f29127g.isCheckable();
    }

    boolean H() {
        return C() && this.f29127g.isChecked();
    }

    boolean I() {
        return this.f29122b.getVisibility() == 0 && this.f29127g.getVisibility() == 0;
    }

    boolean J() {
        return this.f29123c.getVisibility() == 0;
    }

    boolean K() {
        return this.f29129i == 1;
    }

    void L(boolean z10) {
        this.f29138r = z10;
        E0();
    }

    void M() {
        C0();
        O();
        N();
        if (o().t()) {
            z0(this.f29121a.X());
        }
    }

    void N() {
        t.d(this.f29121a, this.f29127g, this.f29131k);
    }

    void O() {
        t.d(this.f29121a, this.f29123c, this.f29124d);
    }

    void P(boolean z10) {
        boolean z11;
        boolean zIsActivated;
        boolean zIsChecked;
        s sVarO = o();
        boolean z12 = true;
        if (!sVarO.l() || (zIsChecked = this.f29127g.isChecked()) == sVarO.m()) {
            z11 = false;
        } else {
            this.f29127g.setChecked(!zIsChecked);
            z11 = true;
        }
        if (!sVarO.j() || (zIsActivated = this.f29127g.isActivated()) == sVarO.k()) {
            z12 = z11;
        } else {
            S(!zIsActivated);
        }
        if (z10 || z12) {
            N();
        }
    }

    void Q(TextInputLayout.f fVar) {
        this.f29130j.remove(fVar);
    }

    void S(boolean z10) {
        this.f29127g.setActivated(z10);
    }

    void T(boolean z10) {
        this.f29127g.setCheckable(z10);
    }

    void U(int i10) {
        V(i10 != 0 ? getResources().getText(i10) : null);
    }

    void V(CharSequence charSequence) {
        if (n() != charSequence) {
            this.f29127g.setContentDescription(charSequence);
        }
    }

    void W(int i10) {
        X(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    void X(Drawable drawable) {
        this.f29127g.setImageDrawable(drawable);
        if (drawable != null) {
            t.a(this.f29121a, this.f29127g, this.f29131k, this.f29132l);
            N();
        }
    }

    void Y(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i10 != this.f29133m) {
            this.f29133m = i10;
            t.g(this.f29127g, i10);
            t.g(this.f29123c, i10);
        }
    }

    void Z(int i10) {
        if (this.f29129i == i10) {
            return;
        }
        y0(o());
        int i11 = this.f29129i;
        this.f29129i = i10;
        l(i11);
        f0(i10 != 0);
        s sVarO = o();
        W(v(sVarO));
        U(sVarO.c());
        T(sVarO.l());
        if (!sVarO.i(this.f29121a.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + this.f29121a.getBoxBackgroundMode() + " is not supported by the end icon mode " + i10);
        }
        x0(sVarO);
        a0(sVarO.f());
        EditText editText = this.f29139s;
        if (editText != null) {
            sVarO.n(editText);
            m0(sVarO);
        }
        t.a(this.f29121a, this.f29127g, this.f29131k, this.f29132l);
        P(true);
    }

    void a0(View.OnClickListener onClickListener) {
        t.h(this.f29127g, onClickListener, this.f29135o);
    }

    void b0(View.OnLongClickListener onLongClickListener) {
        this.f29135o = onLongClickListener;
        t.i(this.f29127g, onLongClickListener);
    }

    void c0(ImageView.ScaleType scaleType) {
        this.f29134n = scaleType;
        t.j(this.f29127g, scaleType);
        t.j(this.f29123c, scaleType);
    }

    void d0(ColorStateList colorStateList) {
        if (this.f29131k != colorStateList) {
            this.f29131k = colorStateList;
            t.a(this.f29121a, this.f29127g, colorStateList, this.f29132l);
        }
    }

    void e0(PorterDuff.Mode mode) {
        if (this.f29132l != mode) {
            this.f29132l = mode;
            t.a(this.f29121a, this.f29127g, this.f29131k, mode);
        }
    }

    void f0(boolean z10) {
        if (I() != z10) {
            this.f29127g.setVisibility(z10 ? 0 : 8);
            B0();
            D0();
            this.f29121a.i0();
        }
    }

    void g(TextInputLayout.f fVar) {
        this.f29130j.add(fVar);
    }

    void g0(int i10) {
        h0(i10 != 0 ? g.a.b(getContext(), i10) : null);
        O();
    }

    void h0(Drawable drawable) {
        this.f29123c.setImageDrawable(drawable);
        C0();
        t.a(this.f29121a, this.f29123c, this.f29124d, this.f29125e);
    }

    void i() {
        this.f29127g.performClick();
        this.f29127g.jumpDrawablesToCurrentState();
    }

    void i0(View.OnClickListener onClickListener) {
        t.h(this.f29123c, onClickListener, this.f29126f);
    }

    void j() {
        this.f29130j.clear();
    }

    void j0(View.OnLongClickListener onLongClickListener) {
        this.f29126f = onLongClickListener;
        t.i(this.f29123c, onLongClickListener);
    }

    void k0(ColorStateList colorStateList) {
        if (this.f29124d != colorStateList) {
            this.f29124d = colorStateList;
            t.a(this.f29121a, this.f29123c, colorStateList, this.f29125e);
        }
    }

    void l0(PorterDuff.Mode mode) {
        if (this.f29125e != mode) {
            this.f29125e = mode;
            t.a(this.f29121a, this.f29123c, this.f29124d, mode);
        }
    }

    CheckableImageButton m() {
        if (J()) {
            return this.f29123c;
        }
        if (C() && I()) {
            return this.f29127g;
        }
        return null;
    }

    CharSequence n() {
        return this.f29127g.getContentDescription();
    }

    void n0(int i10) {
        o0(i10 != 0 ? getResources().getText(i10) : null);
    }

    s o() {
        return this.f29128h.c(this.f29129i);
    }

    void o0(CharSequence charSequence) {
        this.f29127g.setContentDescription(charSequence);
    }

    Drawable p() {
        return this.f29127g.getDrawable();
    }

    void p0(int i10) {
        q0(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    int q() {
        return this.f29133m;
    }

    void q0(Drawable drawable) {
        this.f29127g.setImageDrawable(drawable);
    }

    int r() {
        return this.f29129i;
    }

    void r0(boolean z10) {
        if (z10 && this.f29129i != 1) {
            Z(1);
        } else {
            if (z10) {
                return;
            }
            Z(0);
        }
    }

    ImageView.ScaleType s() {
        return this.f29134n;
    }

    void s0(ColorStateList colorStateList) {
        this.f29131k = colorStateList;
        t.a(this.f29121a, this.f29127g, colorStateList, this.f29132l);
    }

    CheckableImageButton t() {
        return this.f29127g;
    }

    void t0(PorterDuff.Mode mode) {
        this.f29132l = mode;
        t.a(this.f29121a, this.f29127g, this.f29131k, mode);
    }

    Drawable u() {
        return this.f29123c.getDrawable();
    }

    void u0(CharSequence charSequence) {
        this.f29136p = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f29137q.setText(charSequence);
        E0();
    }

    void v0(int i10) {
        androidx.core.widget.l.p(this.f29137q, i10);
    }

    CharSequence w() {
        return this.f29127g.getContentDescription();
    }

    void w0(ColorStateList colorStateList) {
        this.f29137q.setTextColor(colorStateList);
    }

    Drawable x() {
        return this.f29127g.getDrawable();
    }

    CharSequence y() {
        return this.f29136p;
    }

    ColorStateList z() {
        return this.f29137q.getTextColors();
    }
}
