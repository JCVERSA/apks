package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;

class p extends s {

    private static final boolean f29105s = true;

    private final int f29106e;

    private final int f29107f;

    private final TimeInterpolator f29108g;

    private AutoCompleteTextView f29109h;

    private final View.OnClickListener f29110i;

    private final View.OnFocusChangeListener f29111j;

    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener f29112k;

    private boolean f29113l;

    private boolean f29114m;

    private boolean f29115n;

    private long f29116o;

    private AccessibilityManager f29117p;

    private ValueAnimator f29118q;

    private ValueAnimator f29119r;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            p.this.r();
            p.this.f29119r.start();
        }
    }

    p(r rVar) {
        super(rVar);
        this.f29110i = new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f29101a.J(view);
            }
        };
        this.f29111j = new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z10) {
                this.f29102a.K(view, z10);
            }
        };
        this.f29112k = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() {
            @Override
            public final void onTouchExplorationStateChanged(boolean z10) {
                this.f29103a.L(z10);
            }
        };
        this.f29116o = Long.MAX_VALUE;
        this.f29107f = ya.j.f(rVar.getContext(), R$attr.motionDurationShort3, 67);
        this.f29106e = ya.j.f(rVar.getContext(), R$attr.motionDurationShort3, 50);
        this.f29108g = ya.j.g(rVar.getContext(), R$attr.motionEasingLinearInterpolator, qa.a.f69577a);
    }

    private static AutoCompleteTextView D(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private ValueAnimator E(int i10, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f29108g);
        valueAnimatorOfFloat.setDuration(i10);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f29098a.I(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void F() {
        this.f29119r = E(this.f29107f, 0.0f, 1.0f);
        ValueAnimator valueAnimatorE = E(this.f29106e, 1.0f, 0.0f);
        this.f29118q = valueAnimatorE;
        valueAnimatorE.addListener(new a());
    }

    private boolean G() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f29116o;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    public void H() {
        boolean zIsPopupShowing = this.f29109h.isPopupShowing();
        O(zIsPopupShowing);
        this.f29114m = zIsPopupShowing;
    }

    public void I(ValueAnimator valueAnimator) {
        this.f29154d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void J(View view) {
        Q();
    }

    public void K(View view, boolean z10) {
        this.f29113l = z10;
        r();
        if (z10) {
            return;
        }
        O(false);
        this.f29114m = false;
    }

    public void L(boolean z10) {
        AutoCompleteTextView autoCompleteTextView = this.f29109h;
        if (autoCompleteTextView == null || q.a(autoCompleteTextView)) {
            return;
        }
        ViewCompat.setImportantForAccessibility(this.f29154d, z10 ? 2 : 1);
    }

    public boolean M(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (G()) {
                this.f29114m = false;
            }
            Q();
            R();
        }
        return false;
    }

    public void N() {
        R();
        O(false);
    }

    private void O(boolean z10) {
        if (this.f29115n != z10) {
            this.f29115n = z10;
            this.f29119r.cancel();
            this.f29118q.start();
        }
    }

    private void P() {
        this.f29109h.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f29099a.M(view, motionEvent);
            }
        });
        if (f29105s) {
            this.f29109h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() {
                @Override
                public final void onDismiss() {
                    this.f29100a.N();
                }
            });
        }
        this.f29109h.setThreshold(0);
    }

    private void Q() {
        if (this.f29109h == null) {
            return;
        }
        if (G()) {
            this.f29114m = false;
        }
        if (this.f29114m) {
            this.f29114m = false;
            return;
        }
        if (f29105s) {
            O(!this.f29115n);
        } else {
            this.f29115n = !this.f29115n;
            r();
        }
        if (!this.f29115n) {
            this.f29109h.dismissDropDown();
        } else {
            this.f29109h.requestFocus();
            this.f29109h.showDropDown();
        }
    }

    private void R() {
        this.f29114m = true;
        this.f29116o = System.currentTimeMillis();
    }

    @Override
    public void a(Editable editable) {
        if (this.f29117p.isTouchExplorationEnabled() && q.a(this.f29109h) && !this.f29154d.hasFocus()) {
            this.f29109h.dismissDropDown();
        }
        this.f29109h.post(new Runnable() {
            @Override
            public final void run() {
                this.f29104a.H();
            }
        });
    }

    @Override
    int c() {
        return R$string.exposed_dropdown_menu_content_description;
    }

    @Override
    int d() {
        return f29105s ? R$drawable.mtrl_dropdown_arrow : R$drawable.mtrl_ic_arrow_drop_down;
    }

    @Override
    View.OnFocusChangeListener e() {
        return this.f29111j;
    }

    @Override
    View.OnClickListener f() {
        return this.f29110i;
    }

    @Override
    public AccessibilityManagerCompat.TouchExplorationStateChangeListener h() {
        return this.f29112k;
    }

    @Override
    boolean i(int i10) {
        return i10 != 0;
    }

    @Override
    boolean j() {
        return true;
    }

    @Override
    boolean k() {
        return this.f29113l;
    }

    @Override
    boolean l() {
        return true;
    }

    @Override
    boolean m() {
        return this.f29115n;
    }

    @Override
    public void n(EditText editText) {
        this.f29109h = D(editText);
        P();
        this.f29151a.setErrorIconDrawable((Drawable) null);
        if (!q.a(editText) && this.f29117p.isTouchExplorationEnabled()) {
            ViewCompat.setImportantForAccessibility(this.f29154d, 2);
        }
        this.f29151a.setEndIconVisible(true);
    }

    @Override
    public void o(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (!q.a(this.f29109h)) {
            accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.isShowingHintText()) {
            accessibilityNodeInfoCompat.setHintText(null);
        }
    }

    @Override
    public void p(View view, AccessibilityEvent accessibilityEvent) {
        if (!this.f29117p.isEnabled() || q.a(this.f29109h)) {
            return;
        }
        boolean z10 = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f29115n && !this.f29109h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z10) {
            Q();
            R();
        }
    }

    @Override
    void s() {
        F();
        this.f29117p = (AccessibilityManager) this.f29153c.getSystemService("accessibility");
    }

    @Override
    boolean t() {
        return true;
    }

    @Override
    void u() {
        AutoCompleteTextView autoCompleteTextView = this.f29109h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            if (f29105s) {
                this.f29109h.setOnDismissListener(null);
            }
        }
    }
}
