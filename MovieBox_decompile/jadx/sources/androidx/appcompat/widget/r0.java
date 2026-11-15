package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;

class r0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    private static r0 f1791k;

    private static r0 f1792l;

    private final View f1793a;

    private final CharSequence f1794b;

    private final int f1795c;

    private final Runnable f1796d = new Runnable() {
        @Override
        public final void run() {
            this.f1789a.e();
        }
    };

    private final Runnable f1797e = new Runnable() {
        @Override
        public final void run() {
            this.f1790a.d();
        }
    };

    private int f1798f;

    private int f1799g;

    private s0 f1800h;

    private boolean f1801i;

    private boolean f1802j;

    private r0(View view, CharSequence charSequence) {
        this.f1793a = view;
        this.f1794b = charSequence;
        this.f1795c = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        c();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    private void b() {
        this.f1793a.removeCallbacks(this.f1796d);
    }

    private void c() {
        this.f1802j = true;
    }

    public void e() {
        i(false);
    }

    private void f() {
        this.f1793a.postDelayed(this.f1796d, ViewConfiguration.getLongPressTimeout());
    }

    private static void g(r0 r0Var) {
        r0 r0Var2 = f1791k;
        if (r0Var2 != null) {
            r0Var2.b();
        }
        f1791k = r0Var;
        if (r0Var != null) {
            r0Var.f();
        }
    }

    public static void h(View view, CharSequence charSequence) {
        r0 r0Var = f1791k;
        if (r0Var != null && r0Var.f1793a == view) {
            g(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new r0(view, charSequence);
            return;
        }
        r0 r0Var2 = f1792l;
        if (r0Var2 != null && r0Var2.f1793a == view) {
            r0Var2.d();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    private boolean j(MotionEvent motionEvent) {
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        if (!this.f1802j && Math.abs(x10 - this.f1798f) <= this.f1795c && Math.abs(y10 - this.f1799g) <= this.f1795c) {
            return false;
        }
        this.f1798f = x10;
        this.f1799g = y10;
        this.f1802j = false;
        return true;
    }

    void d() {
        if (f1792l == this) {
            f1792l = null;
            s0 s0Var = this.f1800h;
            if (s0Var != null) {
                s0Var.c();
                this.f1800h = null;
                c();
                this.f1793a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f1791k == this) {
            g(null);
        }
        this.f1793a.removeCallbacks(this.f1797e);
    }

    void i(boolean z10) {
        long longPressTimeout;
        long j10;
        long j11;
        if (this.f1793a.isAttachedToWindow()) {
            g(null);
            r0 r0Var = f1792l;
            if (r0Var != null) {
                r0Var.d();
            }
            f1792l = this;
            this.f1801i = z10;
            s0 s0Var = new s0(this.f1793a.getContext());
            this.f1800h = s0Var;
            s0Var.e(this.f1793a, this.f1798f, this.f1799g, this.f1801i, this.f1794b);
            this.f1793a.addOnAttachStateChangeListener(this);
            if (this.f1801i) {
                j11 = 2500;
            } else {
                if ((ViewCompat.getWindowSystemUiVisibility(this.f1793a) & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j10 = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j10 = MBInterstitialActivity.WEB_LOAD_TIME;
                }
                j11 = j10 - longPressTimeout;
            }
            this.f1793a.removeCallbacks(this.f1797e);
            this.f1793a.postDelayed(this.f1797e, j11);
        }
    }

    @Override
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1800h != null && this.f1801i) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1793a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                c();
                d();
            }
        } else if (this.f1793a.isEnabled() && this.f1800h == null && j(motionEvent)) {
            g(this);
        }
        return false;
    }

    @Override
    public boolean onLongClick(View view) {
        this.f1798f = view.getWidth() / 2;
        this.f1799g = view.getHeight() / 2;
        i(true);
        return true;
    }

    @Override
    public void onViewDetachedFromWindow(View view) {
        d();
    }

    @Override
    public void onViewAttachedToWindow(View view) {
    }
}
