package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;

class y extends LinearLayout {

    private final TextInputLayout f29191a;

    private final TextView f29192b;

    private CharSequence f29193c;

    private final CheckableImageButton f29194d;

    private ColorStateList f29195e;

    private PorterDuff.Mode f29196f;

    private int f29197g;

    private ImageView.ScaleType f29198h;

    private View.OnLongClickListener f29199i;

    private boolean f29200j;

    y(TextInputLayout textInputLayout, j0 j0Var) {
        super(textInputLayout.getContext());
        this.f29191a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R$layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f29194d = checkableImageButton;
        t.e(checkableImageButton);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f29192b = appCompatTextView;
        j(j0Var);
        i(j0Var);
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    private void D() {
        int i10 = (this.f29193c == null || this.f29200j) ? 8 : 0;
        setVisibility((this.f29194d.getVisibility() == 0 || i10 == 0) ? 0 : 8);
        this.f29192b.setVisibility(i10);
        this.f29191a.i0();
    }

    private void i(j0 j0Var) {
        this.f29192b.setVisibility(8);
        this.f29192b.setId(R$id.textinput_prefix_text);
        this.f29192b.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(this.f29192b, 1);
        p(j0Var.n(R$styleable.TextInputLayout_prefixTextAppearance, 0));
        if (j0Var.s(R$styleable.TextInputLayout_prefixTextColor)) {
            q(j0Var.c(R$styleable.TextInputLayout_prefixTextColor));
        }
        o(j0Var.p(R$styleable.TextInputLayout_prefixText));
    }

    private void j(j0 j0Var) {
        if (za.c.j(getContext())) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) this.f29194d.getLayoutParams(), 0);
        }
        v(null);
        w(null);
        if (j0Var.s(R$styleable.TextInputLayout_startIconTint)) {
            this.f29195e = za.c.b(getContext(), j0Var, R$styleable.TextInputLayout_startIconTint);
        }
        if (j0Var.s(R$styleable.TextInputLayout_startIconTintMode)) {
            this.f29196f = com.google.android.material.internal.f0.r(j0Var.k(R$styleable.TextInputLayout_startIconTintMode, -1), null);
        }
        if (j0Var.s(R$styleable.TextInputLayout_startIconDrawable)) {
            t(j0Var.g(R$styleable.TextInputLayout_startIconDrawable));
            if (j0Var.s(R$styleable.TextInputLayout_startIconContentDescription)) {
                s(j0Var.p(R$styleable.TextInputLayout_startIconContentDescription));
            }
            r(j0Var.a(R$styleable.TextInputLayout_startIconCheckable, true));
        }
        u(j0Var.f(R$styleable.TextInputLayout_startIconMinSize, getResources().getDimensionPixelSize(R$dimen.mtrl_min_touch_target_size)));
        if (j0Var.s(R$styleable.TextInputLayout_startIconScaleType)) {
            x(t.b(j0Var.k(R$styleable.TextInputLayout_startIconScaleType, -1)));
        }
    }

    void A(boolean z10) {
        if (l() != z10) {
            this.f29194d.setVisibility(z10 ? 0 : 8);
            C();
            D();
        }
    }

    void B(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.f29192b.getVisibility() != 0) {
            accessibilityNodeInfoCompat.setTraversalAfter(this.f29194d);
        } else {
            accessibilityNodeInfoCompat.setLabelFor(this.f29192b);
            accessibilityNodeInfoCompat.setTraversalAfter(this.f29192b);
        }
    }

    void C() {
        EditText editText = this.f29191a.f29026d;
        if (editText == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f29192b, l() ? 0 : ViewCompat.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R$dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    CharSequence a() {
        return this.f29193c;
    }

    ColorStateList b() {
        return this.f29192b.getTextColors();
    }

    int c() {
        return ViewCompat.getPaddingStart(this) + ViewCompat.getPaddingStart(this.f29192b) + (l() ? this.f29194d.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) this.f29194d.getLayoutParams()) : 0);
    }

    TextView d() {
        return this.f29192b;
    }

    CharSequence e() {
        return this.f29194d.getContentDescription();
    }

    Drawable f() {
        return this.f29194d.getDrawable();
    }

    int g() {
        return this.f29197g;
    }

    ImageView.ScaleType h() {
        return this.f29198h;
    }

    boolean k() {
        return this.f29194d.isCheckable();
    }

    boolean l() {
        return this.f29194d.getVisibility() == 0;
    }

    void m(boolean z10) {
        this.f29200j = z10;
        D();
    }

    void n() {
        t.d(this.f29191a, this.f29194d, this.f29195e);
    }

    void o(CharSequence charSequence) {
        this.f29193c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f29192b.setText(charSequence);
        D();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        C();
    }

    void p(int i10) {
        androidx.core.widget.l.p(this.f29192b, i10);
    }

    void q(ColorStateList colorStateList) {
        this.f29192b.setTextColor(colorStateList);
    }

    void r(boolean z10) {
        this.f29194d.setCheckable(z10);
    }

    void s(CharSequence charSequence) {
        if (e() != charSequence) {
            this.f29194d.setContentDescription(charSequence);
        }
    }

    void t(Drawable drawable) {
        this.f29194d.setImageDrawable(drawable);
        if (drawable != null) {
            t.a(this.f29191a, this.f29194d, this.f29195e, this.f29196f);
            A(true);
            n();
        } else {
            A(false);
            v(null);
            w(null);
            s(null);
        }
    }

    void u(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i10 != this.f29197g) {
            this.f29197g = i10;
            t.g(this.f29194d, i10);
        }
    }

    void v(View.OnClickListener onClickListener) {
        t.h(this.f29194d, onClickListener, this.f29199i);
    }

    void w(View.OnLongClickListener onLongClickListener) {
        this.f29199i = onLongClickListener;
        t.i(this.f29194d, onLongClickListener);
    }

    void x(ImageView.ScaleType scaleType) {
        this.f29198h = scaleType;
        t.j(this.f29194d, scaleType);
    }

    void y(ColorStateList colorStateList) {
        if (this.f29195e != colorStateList) {
            this.f29195e = colorStateList;
            t.a(this.f29191a, this.f29194d, colorStateList, this.f29196f);
        }
    }

    void z(PorterDuff.Mode mode) {
        if (this.f29196f != mode) {
            this.f29196f = mode;
            t.a(this.f29191a, this.f29194d, this.f29195e, mode);
        }
    }
}
