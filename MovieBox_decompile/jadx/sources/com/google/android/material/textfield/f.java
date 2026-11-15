package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R$attr;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;

class f extends s {

    private final int f29084e;

    private final int f29085f;

    private final TimeInterpolator f29086g;

    private final TimeInterpolator f29087h;

    private EditText f29088i;

    private final View.OnClickListener f29089j;

    private final View.OnFocusChangeListener f29090k;

    private AnimatorSet f29091l;

    private ValueAnimator f29092m;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            f.this.f29152b.f0(true);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            f.this.f29152b.f0(false);
        }
    }

    f(r rVar) {
        super(rVar);
        this.f29089j = new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f29079a.G(view);
            }
        };
        this.f29090k = new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z10) {
                this.f29080a.H(view, z10);
            }
        };
        this.f29084e = ya.j.f(rVar.getContext(), R$attr.motionDurationShort3, 100);
        this.f29085f = ya.j.f(rVar.getContext(), R$attr.motionDurationShort3, 150);
        this.f29086g = ya.j.g(rVar.getContext(), R$attr.motionEasingLinearInterpolator, qa.a.f69577a);
        this.f29087h = ya.j.g(rVar.getContext(), R$attr.motionEasingEmphasizedInterpolator, qa.a.f69580d);
    }

    private void A(boolean z10) {
        boolean z11 = this.f29152b.I() == z10;
        if (z10 && !this.f29091l.isRunning()) {
            this.f29092m.cancel();
            this.f29091l.start();
            if (z11) {
                this.f29091l.end();
                return;
            }
            return;
        }
        if (z10) {
            return;
        }
        this.f29091l.cancel();
        this.f29092m.start();
        if (z11) {
            this.f29092m.end();
        }
    }

    private ValueAnimator B(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f29086g);
        valueAnimatorOfFloat.setDuration(this.f29084e);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f29081a.E(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private ValueAnimator C() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.f29087h);
        valueAnimatorOfFloat.setDuration(this.f29085f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f29083a.F(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void D() {
        ValueAnimator valueAnimatorC = C();
        ValueAnimator valueAnimatorB = B(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f29091l = animatorSet;
        animatorSet.playTogether(valueAnimatorC, valueAnimatorB);
        this.f29091l.addListener(new a());
        ValueAnimator valueAnimatorB2 = B(1.0f, 0.0f);
        this.f29092m = valueAnimatorB2;
        valueAnimatorB2.addListener(new b());
    }

    public void E(ValueAnimator valueAnimator) {
        this.f29154d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void F(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f29154d.setScaleX(fFloatValue);
        this.f29154d.setScaleY(fFloatValue);
    }

    public void G(View view) {
        EditText editText = this.f29088i;
        if (editText == null) {
            return;
        }
        Editable text = editText.getText();
        if (text != null) {
            text.clear();
        }
        r();
    }

    public void H(View view, boolean z10) {
        A(J());
    }

    public void I() {
        A(true);
    }

    private boolean J() {
        EditText editText = this.f29088i;
        return editText != null && (editText.hasFocus() || this.f29154d.hasFocus()) && this.f29088i.getText().length() > 0;
    }

    @Override
    void a(Editable editable) {
        if (this.f29152b.y() != null) {
            return;
        }
        A(J());
    }

    @Override
    int c() {
        return R$string.clear_text_end_icon_content_description;
    }

    @Override
    int d() {
        return R$drawable.mtrl_ic_cancel;
    }

    @Override
    View.OnFocusChangeListener e() {
        return this.f29090k;
    }

    @Override
    View.OnClickListener f() {
        return this.f29089j;
    }

    @Override
    View.OnFocusChangeListener g() {
        return this.f29090k;
    }

    @Override
    public void n(EditText editText) {
        this.f29088i = editText;
        this.f29151a.setEndIconVisible(J());
    }

    @Override
    void q(boolean z10) {
        if (this.f29152b.y() == null) {
            return;
        }
        A(z10);
    }

    @Override
    void s() {
        D();
    }

    @Override
    void u() {
        EditText editText = this.f29088i;
        if (editText != null) {
            editText.post(new Runnable() {
                @Override
                public final void run() {
                    this.f29082a.I();
                }
            });
        }
    }
}
