package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;

final class u {
    private ColorStateList A;
    private Typeface B;

    private final int f29155a;

    private final int f29156b;

    private final int f29157c;

    private final TimeInterpolator f29158d;

    private final TimeInterpolator f29159e;

    private final TimeInterpolator f29160f;

    private final Context f29161g;

    private final TextInputLayout f29162h;

    private LinearLayout f29163i;

    private int f29164j;

    private FrameLayout f29165k;

    private Animator f29166l;

    private final float f29167m;

    private int f29168n;

    private int f29169o;

    private CharSequence f29170p;

    private boolean f29171q;

    private TextView f29172r;

    private CharSequence f29173s;

    private int f29174t;

    private int f29175u;

    private ColorStateList f29176v;

    private CharSequence f29177w;

    private boolean f29178x;

    private TextView f29179y;

    private int f29180z;

    class a extends AnimatorListenerAdapter {

        final int f29181a;

        final TextView f29182b;

        final int f29183c;

        final TextView f29184d;

        a(int i10, TextView textView, int i11, TextView textView2) {
            this.f29181a = i10;
            this.f29182b = textView;
            this.f29183c = i11;
            this.f29184d = textView2;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            u.this.f29168n = this.f29181a;
            u.this.f29166l = null;
            TextView textView = this.f29182b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f29183c == 1 && u.this.f29172r != null) {
                    u.this.f29172r.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f29184d;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f29184d.setAlpha(1.0f);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f29184d;
            if (textView != null) {
                textView.setVisibility(0);
                this.f29184d.setAlpha(0.0f);
            }
        }
    }

    class b extends View.AccessibilityDelegate {
        b() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            EditText editText = u.this.f29162h.getEditText();
            if (editText != null) {
                accessibilityNodeInfo.setLabeledBy(editText);
            }
        }
    }

    public u(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f29161g = context;
        this.f29162h = textInputLayout;
        this.f29167m = context.getResources().getDimensionPixelSize(R$dimen.design_textinput_caption_translate_y);
        this.f29155a = ya.j.f(context, R$attr.motionDurationShort4, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE);
        this.f29156b = ya.j.f(context, R$attr.motionDurationMedium4, 167);
        this.f29157c = ya.j.f(context, R$attr.motionDurationShort4, 167);
        this.f29158d = ya.j.g(context, R$attr.motionEasingEmphasizedDecelerateInterpolator, qa.a.f69580d);
        int i10 = R$attr.motionEasingEmphasizedDecelerateInterpolator;
        TimeInterpolator timeInterpolator = qa.a.f69577a;
        this.f29159e = ya.j.g(context, i10, timeInterpolator);
        this.f29160f = ya.j.g(context, R$attr.motionEasingLinearInterpolator, timeInterpolator);
    }

    private void D(int i10, int i11) {
        TextView textViewM;
        TextView textViewM2;
        if (i10 == i11) {
            return;
        }
        if (i11 != 0 && (textViewM2 = m(i11)) != null) {
            textViewM2.setVisibility(0);
            textViewM2.setAlpha(1.0f);
        }
        if (i10 != 0 && (textViewM = m(i10)) != null) {
            textViewM.setVisibility(4);
            if (i10 == 1) {
                textViewM.setText((CharSequence) null);
            }
        }
        this.f29168n = i11;
    }

    private void M(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void O(ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean P(TextView textView, CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f29162h) && this.f29162h.isEnabled() && !(this.f29169o == this.f29168n && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void S(int i10, int i11, boolean z10) {
        if (i10 == i11) {
            return;
        }
        if (z10) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f29166l = animatorSet;
            ArrayList arrayList = new ArrayList();
            i(arrayList, this.f29178x, this.f29179y, 2, i10, i11);
            i(arrayList, this.f29171q, this.f29172r, 1, i10, i11);
            qa.b.a(animatorSet, arrayList);
            animatorSet.addListener(new a(i11, m(i10), i10, m(i11)));
            animatorSet.start();
        } else {
            D(i10, i11);
        }
        this.f29162h.j0();
        this.f29162h.o0(z10);
        this.f29162h.u0();
    }

    private boolean g() {
        return (this.f29163i == null || this.f29162h.getEditText() == null) ? false : true;
    }

    private void i(List list, boolean z10, TextView textView, int i10, int i11, int i12) {
        if (textView == null || !z10) {
            return;
        }
        if (i10 == i12 || i10 == i11) {
            ObjectAnimator objectAnimatorJ = j(textView, i12 == i10);
            if (i10 == i12 && i11 != 0) {
                objectAnimatorJ.setStartDelay(this.f29157c);
            }
            list.add(objectAnimatorJ);
            if (i12 != i10 || i11 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorK = k(textView);
            objectAnimatorK.setStartDelay(this.f29157c);
            list.add(objectAnimatorK);
        }
    }

    private ObjectAnimator j(TextView textView, boolean z10) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z10 ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(z10 ? this.f29156b : this.f29157c);
        objectAnimatorOfFloat.setInterpolator(z10 ? this.f29159e : this.f29160f);
        return objectAnimatorOfFloat;
    }

    private ObjectAnimator k(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f29167m, 0.0f);
        objectAnimatorOfFloat.setDuration(this.f29155a);
        objectAnimatorOfFloat.setInterpolator(this.f29158d);
        return objectAnimatorOfFloat;
    }

    private TextView m(int i10) {
        if (i10 == 1) {
            return this.f29172r;
        }
        if (i10 != 2) {
            return null;
        }
        return this.f29179y;
    }

    private int v(boolean z10, int i10, int i11) {
        return z10 ? this.f29161g.getResources().getDimensionPixelSize(i10) : i11;
    }

    private boolean y(int i10) {
        return (i10 != 1 || this.f29172r == null || TextUtils.isEmpty(this.f29170p)) ? false : true;
    }

    boolean A() {
        return this.f29171q;
    }

    boolean B() {
        return this.f29178x;
    }

    void C(TextView textView, int i10) {
        FrameLayout frameLayout;
        if (this.f29163i == null) {
            return;
        }
        if (!z(i10) || (frameLayout = this.f29165k) == null) {
            this.f29163i.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i11 = this.f29164j - 1;
        this.f29164j = i11;
        O(this.f29163i, i11);
    }

    void E(int i10) {
        this.f29174t = i10;
        TextView textView = this.f29172r;
        if (textView != null) {
            ViewCompat.setAccessibilityLiveRegion(textView, i10);
        }
    }

    void F(CharSequence charSequence) {
        this.f29173s = charSequence;
        TextView textView = this.f29172r;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    void G(boolean z10) {
        if (this.f29171q == z10) {
            return;
        }
        h();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f29161g);
            this.f29172r = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_error);
            this.f29172r.setTextAlignment(5);
            Typeface typeface = this.B;
            if (typeface != null) {
                this.f29172r.setTypeface(typeface);
            }
            H(this.f29175u);
            I(this.f29176v);
            F(this.f29173s);
            E(this.f29174t);
            this.f29172r.setVisibility(4);
            e(this.f29172r, 0);
        } else {
            w();
            C(this.f29172r, 0);
            this.f29172r = null;
            this.f29162h.j0();
            this.f29162h.u0();
        }
        this.f29171q = z10;
    }

    void H(int i10) {
        this.f29175u = i10;
        TextView textView = this.f29172r;
        if (textView != null) {
            this.f29162h.W(textView, i10);
        }
    }

    void I(ColorStateList colorStateList) {
        this.f29176v = colorStateList;
        TextView textView = this.f29172r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void J(int i10) {
        this.f29180z = i10;
        TextView textView = this.f29179y;
        if (textView != null) {
            androidx.core.widget.l.p(textView, i10);
        }
    }

    void K(boolean z10) {
        if (this.f29178x == z10) {
            return;
        }
        h();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f29161g);
            this.f29179y = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_helper_text);
            this.f29179y.setTextAlignment(5);
            Typeface typeface = this.B;
            if (typeface != null) {
                this.f29179y.setTypeface(typeface);
            }
            this.f29179y.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f29179y, 1);
            J(this.f29180z);
            L(this.A);
            e(this.f29179y, 1);
            this.f29179y.setAccessibilityDelegate(new b());
        } else {
            x();
            C(this.f29179y, 1);
            this.f29179y = null;
            this.f29162h.j0();
            this.f29162h.u0();
        }
        this.f29178x = z10;
    }

    void L(ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f29179y;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void N(Typeface typeface) {
        if (typeface != this.B) {
            this.B = typeface;
            M(this.f29172r, typeface);
            M(this.f29179y, typeface);
        }
    }

    void Q(CharSequence charSequence) {
        h();
        this.f29170p = charSequence;
        this.f29172r.setText(charSequence);
        int i10 = this.f29168n;
        if (i10 != 1) {
            this.f29169o = 1;
        }
        S(i10, this.f29169o, P(this.f29172r, charSequence));
    }

    void R(CharSequence charSequence) {
        h();
        this.f29177w = charSequence;
        this.f29179y.setText(charSequence);
        int i10 = this.f29168n;
        if (i10 != 2) {
            this.f29169o = 2;
        }
        S(i10, this.f29169o, P(this.f29179y, charSequence));
    }

    void e(TextView textView, int i10) {
        if (this.f29163i == null && this.f29165k == null) {
            LinearLayout linearLayout = new LinearLayout(this.f29161g);
            this.f29163i = linearLayout;
            linearLayout.setOrientation(0);
            this.f29162h.addView(this.f29163i, -1, -2);
            this.f29165k = new FrameLayout(this.f29161g);
            this.f29163i.addView(this.f29165k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f29162h.getEditText() != null) {
                f();
            }
        }
        if (z(i10)) {
            this.f29165k.setVisibility(0);
            this.f29165k.addView(textView);
        } else {
            this.f29163i.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f29163i.setVisibility(0);
        this.f29164j++;
    }

    void f() {
        if (g()) {
            EditText editText = this.f29162h.getEditText();
            boolean zJ = za.c.j(this.f29161g);
            ViewCompat.setPaddingRelative(this.f29163i, v(zJ, R$dimen.material_helper_text_font_1_3_padding_horizontal, ViewCompat.getPaddingStart(editText)), v(zJ, R$dimen.material_helper_text_font_1_3_padding_top, this.f29161g.getResources().getDimensionPixelSize(R$dimen.material_helper_text_default_padding_top)), v(zJ, R$dimen.material_helper_text_font_1_3_padding_horizontal, ViewCompat.getPaddingEnd(editText)), 0);
        }
    }

    void h() {
        Animator animator = this.f29166l;
        if (animator != null) {
            animator.cancel();
        }
    }

    boolean l() {
        return y(this.f29169o);
    }

    int n() {
        return this.f29174t;
    }

    CharSequence o() {
        return this.f29173s;
    }

    CharSequence p() {
        return this.f29170p;
    }

    int q() {
        TextView textView = this.f29172r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    ColorStateList r() {
        TextView textView = this.f29172r;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    CharSequence s() {
        return this.f29177w;
    }

    View t() {
        return this.f29179y;
    }

    int u() {
        TextView textView = this.f29179y;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    void w() {
        this.f29170p = null;
        h();
        if (this.f29168n == 1) {
            if (!this.f29178x || TextUtils.isEmpty(this.f29177w)) {
                this.f29169o = 0;
            } else {
                this.f29169o = 2;
            }
        }
        S(this.f29168n, this.f29169o, P(this.f29172r, ""));
    }

    void x() {
        h();
        int i10 = this.f29168n;
        if (i10 == 2) {
            this.f29169o = 0;
        }
        S(i10, this.f29169o, P(this.f29179y, ""));
    }

    boolean z(int i10) {
        return i10 == 0 || i10 == 1;
    }
}
