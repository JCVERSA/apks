package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.collection.y0;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import java.util.ArrayList;
import java.util.List;

public abstract class a extends AccessibilityDelegateCompat {

    private static final Rect f8207k = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    private static final FocusStrategy.a f8208l = new C0066a();

    private static final FocusStrategy.b f8209m = new b();

    private final AccessibilityManager f8214e;

    private final View f8215f;

    private c f8216g;

    private final Rect f8210a = new Rect();

    private final Rect f8211b = new Rect();

    private final Rect f8212c = new Rect();

    private final int[] f8213d = new int[2];

    int f8217h = Integer.MIN_VALUE;

    int f8218i = Integer.MIN_VALUE;

    private int f8219j = Integer.MIN_VALUE;

    class C0066a implements FocusStrategy.a {
        C0066a() {
        }

        @Override
        public void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
            accessibilityNodeInfoCompat.getBoundsInParent(rect);
        }
    }

    class b implements FocusStrategy.b {
        b() {
        }

        @Override
        public AccessibilityNodeInfoCompat a(y0 y0Var, int i10) {
            return (AccessibilityNodeInfoCompat) y0Var.q(i10);
        }

        @Override
        public int b(y0 y0Var) {
            return y0Var.p();
        }
    }

    private class c extends AccessibilityNodeProviderCompat {
        c() {
        }

        @Override
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i10) {
            return AccessibilityNodeInfoCompat.obtain(a.this.w(i10));
        }

        @Override
        public AccessibilityNodeInfoCompat findFocus(int i10) {
            int i11 = i10 == 2 ? a.this.f8217h : a.this.f8218i;
            if (i11 == Integer.MIN_VALUE) {
                return null;
            }
            return createAccessibilityNodeInfo(i11);
        }

        @Override
        public boolean performAction(int i10, int i11, Bundle bundle) {
            return a.this.E(i10, i11, bundle);
        }
    }

    public a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f8215f = view;
        this.f8214e = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (ViewCompat.getImportantForAccessibility(view) == 0) {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
    }

    private boolean F(int i10, int i11, Bundle bundle) {
        if (i11 == 1) {
            return I(i10);
        }
        if (i11 == 2) {
            return b(i10);
        }
        if (i11 != 64) {
            return i11 != 128 ? y(i10, i11, bundle) : a(i10);
        }
        return H(i10);
    }

    private boolean G(int i10, Bundle bundle) {
        return ViewCompat.performAccessibilityAction(this.f8215f, i10, bundle);
    }

    private boolean H(int i10) {
        int i11;
        if (!this.f8214e.isEnabled() || !this.f8214e.isTouchExplorationEnabled() || (i11 = this.f8217h) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            a(i11);
        }
        this.f8217h = i10;
        this.f8215f.invalidate();
        J(i10, 32768);
        return true;
    }

    private void K(int i10) {
        int i11 = this.f8219j;
        if (i11 == i10) {
            return;
        }
        this.f8219j = i10;
        J(i10, 128);
        J(i11, 256);
    }

    private boolean a(int i10) {
        if (this.f8217h != i10) {
            return false;
        }
        this.f8217h = Integer.MIN_VALUE;
        this.f8215f.invalidate();
        J(i10, 65536);
        return true;
    }

    private boolean c() {
        int i10 = this.f8218i;
        return i10 != Integer.MIN_VALUE && y(i10, 16, null);
    }

    private AccessibilityEvent d(int i10, int i11) {
        return i10 != -1 ? e(i10, i11) : f(i11);
    }

    private AccessibilityEvent e(int i10, int i11) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i11);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatW = w(i10);
        accessibilityEventObtain.getText().add(accessibilityNodeInfoCompatW.getText());
        accessibilityEventObtain.setContentDescription(accessibilityNodeInfoCompatW.getContentDescription());
        accessibilityEventObtain.setScrollable(accessibilityNodeInfoCompatW.isScrollable());
        accessibilityEventObtain.setPassword(accessibilityNodeInfoCompatW.isPassword());
        accessibilityEventObtain.setEnabled(accessibilityNodeInfoCompatW.isEnabled());
        accessibilityEventObtain.setChecked(accessibilityNodeInfoCompatW.isChecked());
        A(i10, accessibilityEventObtain);
        if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain.setClassName(accessibilityNodeInfoCompatW.getClassName());
        AccessibilityRecordCompat.setSource(accessibilityEventObtain, this.f8215f, i10);
        accessibilityEventObtain.setPackageName(this.f8215f.getContext().getPackageName());
        return accessibilityEventObtain;
    }

    private AccessibilityEvent f(int i10) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i10);
        this.f8215f.onInitializeAccessibilityEvent(accessibilityEventObtain);
        return accessibilityEventObtain;
    }

    private AccessibilityNodeInfoCompat g(int i10) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain();
        accessibilityNodeInfoCompatObtain.setEnabled(true);
        accessibilityNodeInfoCompatObtain.setFocusable(true);
        accessibilityNodeInfoCompatObtain.setClassName("android.view.View");
        Rect rect = f8207k;
        accessibilityNodeInfoCompatObtain.setBoundsInParent(rect);
        accessibilityNodeInfoCompatObtain.setBoundsInScreen(rect);
        accessibilityNodeInfoCompatObtain.setParent(this.f8215f);
        C(i10, accessibilityNodeInfoCompatObtain);
        if (accessibilityNodeInfoCompatObtain.getText() == null && accessibilityNodeInfoCompatObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompatObtain.getBoundsInParent(this.f8211b);
        if (this.f8211b.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoCompatObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompatObtain.setPackageName(this.f8215f.getContext().getPackageName());
        accessibilityNodeInfoCompatObtain.setSource(this.f8215f, i10);
        if (this.f8217h == i10) {
            accessibilityNodeInfoCompatObtain.setAccessibilityFocused(true);
            accessibilityNodeInfoCompatObtain.addAction(128);
        } else {
            accessibilityNodeInfoCompatObtain.setAccessibilityFocused(false);
            accessibilityNodeInfoCompatObtain.addAction(64);
        }
        boolean z10 = this.f8218i == i10;
        if (z10) {
            accessibilityNodeInfoCompatObtain.addAction(2);
        } else if (accessibilityNodeInfoCompatObtain.isFocusable()) {
            accessibilityNodeInfoCompatObtain.addAction(1);
        }
        accessibilityNodeInfoCompatObtain.setFocused(z10);
        this.f8215f.getLocationOnScreen(this.f8213d);
        accessibilityNodeInfoCompatObtain.getBoundsInScreen(this.f8210a);
        if (this.f8210a.equals(rect)) {
            accessibilityNodeInfoCompatObtain.getBoundsInParent(this.f8210a);
            if (accessibilityNodeInfoCompatObtain.mParentVirtualDescendantId != -1) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain2 = AccessibilityNodeInfoCompat.obtain();
                for (int i11 = accessibilityNodeInfoCompatObtain.mParentVirtualDescendantId; i11 != -1; i11 = accessibilityNodeInfoCompatObtain2.mParentVirtualDescendantId) {
                    accessibilityNodeInfoCompatObtain2.setParent(this.f8215f, -1);
                    accessibilityNodeInfoCompatObtain2.setBoundsInParent(f8207k);
                    C(i11, accessibilityNodeInfoCompatObtain2);
                    accessibilityNodeInfoCompatObtain2.getBoundsInParent(this.f8211b);
                    Rect rect2 = this.f8210a;
                    Rect rect3 = this.f8211b;
                    rect2.offset(rect3.left, rect3.top);
                }
                accessibilityNodeInfoCompatObtain2.recycle();
            }
            this.f8210a.offset(this.f8213d[0] - this.f8215f.getScrollX(), this.f8213d[1] - this.f8215f.getScrollY());
        }
        if (this.f8215f.getLocalVisibleRect(this.f8212c)) {
            this.f8212c.offset(this.f8213d[0] - this.f8215f.getScrollX(), this.f8213d[1] - this.f8215f.getScrollY());
            if (this.f8210a.intersect(this.f8212c)) {
                accessibilityNodeInfoCompatObtain.setBoundsInScreen(this.f8210a);
                if (t(this.f8210a)) {
                    accessibilityNodeInfoCompatObtain.setVisibleToUser(true);
                }
            }
        }
        return accessibilityNodeInfoCompatObtain;
    }

    private AccessibilityNodeInfoCompat h() {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(this.f8215f);
        ViewCompat.onInitializeAccessibilityNodeInfo(this.f8215f, accessibilityNodeInfoCompatObtain);
        ArrayList arrayList = new ArrayList();
        p(arrayList);
        if (accessibilityNodeInfoCompatObtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            accessibilityNodeInfoCompatObtain.addChild(this.f8215f, ((Integer) arrayList.get(i10)).intValue());
        }
        return accessibilityNodeInfoCompatObtain;
    }

    private y0 l() {
        ArrayList arrayList = new ArrayList();
        p(arrayList);
        y0 y0Var = new y0();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            y0Var.l(((Integer) arrayList.get(i10)).intValue(), g(((Integer) arrayList.get(i10)).intValue()));
        }
        return y0Var;
    }

    private void m(int i10, Rect rect) {
        w(i10).getBoundsInParent(rect);
    }

    private static Rect q(View view, int i10, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i10 == 17) {
            rect.set(width, 0, width, height);
        } else if (i10 == 33) {
            rect.set(0, height, width, height);
        } else if (i10 == 66) {
            rect.set(-1, 0, -1, height);
        } else {
            if (i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            rect.set(0, -1, width, -1);
        }
        return rect;
    }

    private boolean t(Rect rect) {
        if (rect == null || rect.isEmpty() || this.f8215f.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.f8215f.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private static int u(int i10) {
        if (i10 == 19) {
            return 33;
        }
        if (i10 != 21) {
            return i10 != 22 ? 130 : 66;
        }
        return 17;
    }

    private boolean v(int i10, Rect rect) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        y0 y0VarL = l();
        int i11 = this.f8218i;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = i11 == Integer.MIN_VALUE ? null : (AccessibilityNodeInfoCompat) y0VarL.g(i11);
        if (i10 == 1 || i10 == 2) {
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.d(y0VarL, f8209m, f8208l, accessibilityNodeInfoCompat2, i10, ViewCompat.getLayoutDirection(this.f8215f) == 1, false);
        } else {
            if (i10 != 17 && i10 != 33 && i10 != 66 && i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i12 = this.f8218i;
            if (i12 != Integer.MIN_VALUE) {
                m(i12, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                q(this.f8215f, i10, rect2);
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.c(y0VarL, f8209m, f8208l, accessibilityNodeInfoCompat2, rect2, i10);
        }
        return I(accessibilityNodeInfoCompat != null ? y0VarL.k(y0VarL.j(accessibilityNodeInfoCompat)) : Integer.MIN_VALUE);
    }

    protected abstract void C(int i10, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    boolean E(int i10, int i11, Bundle bundle) {
        return i10 != -1 ? F(i10, i11, bundle) : G(i11, bundle);
    }

    public final boolean I(int i10) {
        int i11;
        if ((!this.f8215f.isFocused() && !this.f8215f.requestFocus()) || (i11 = this.f8218i) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            b(i11);
        }
        if (i10 == Integer.MIN_VALUE) {
            return false;
        }
        this.f8218i = i10;
        D(i10, true);
        J(i10, 8);
        return true;
    }

    public final boolean J(int i10, int i11) {
        ViewParent parent;
        if (i10 == Integer.MIN_VALUE || !this.f8214e.isEnabled() || (parent = this.f8215f.getParent()) == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(this.f8215f, d(i10, i11));
    }

    public final boolean b(int i10) {
        if (this.f8218i != i10) {
            return false;
        }
        this.f8218i = Integer.MIN_VALUE;
        D(i10, false);
        J(i10, 8);
        return true;
    }

    @Override
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.f8216g == null) {
            this.f8216g = new c();
        }
        return this.f8216g;
    }

    public final boolean i(MotionEvent motionEvent) {
        if (!this.f8214e.isEnabled() || !this.f8214e.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iO = o(motionEvent.getX(), motionEvent.getY());
            K(iO);
            return iO != Integer.MIN_VALUE;
        }
        if (action != 10 || this.f8219j == Integer.MIN_VALUE) {
            return false;
        }
        K(Integer.MIN_VALUE);
        return true;
    }

    public final boolean j(KeyEvent keyEvent) {
        int i10 = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61) {
            if (keyEvent.hasNoModifiers()) {
                return v(2, null);
            }
            if (keyEvent.hasModifiers(1)) {
                return v(1, null);
            }
            return false;
        }
        if (keyCode != 66) {
            switch (keyCode) {
                case 19:
                case 20:
                case 21:
                case 22:
                    if (!keyEvent.hasNoModifiers()) {
                        return false;
                    }
                    int iU = u(keyCode);
                    int repeatCount = keyEvent.getRepeatCount() + 1;
                    boolean z10 = false;
                    while (i10 < repeatCount && v(iU, null)) {
                        i10++;
                        z10 = true;
                    }
                    return z10;
                case 23:
                    break;
                default:
                    return false;
            }
        }
        if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        c();
        return true;
    }

    public final int k() {
        return this.f8217h;
    }

    public final int n() {
        return this.f8218i;
    }

    protected abstract int o(float f10, float f11);

    @Override
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        z(accessibilityEvent);
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        B(accessibilityNodeInfoCompat);
    }

    protected abstract void p(List list);

    public final void r(int i10) {
        s(i10, 0);
    }

    public final void s(int i10, int i11) {
        ViewParent parent;
        if (i10 == Integer.MIN_VALUE || !this.f8214e.isEnabled() || (parent = this.f8215f.getParent()) == null) {
            return;
        }
        AccessibilityEvent accessibilityEventD = d(i10, 2048);
        AccessibilityEventCompat.setContentChangeTypes(accessibilityEventD, i11);
        parent.requestSendAccessibilityEvent(this.f8215f, accessibilityEventD);
    }

    AccessibilityNodeInfoCompat w(int i10) {
        return i10 == -1 ? h() : g(i10);
    }

    public final void x(boolean z10, int i10, Rect rect) {
        int i11 = this.f8218i;
        if (i11 != Integer.MIN_VALUE) {
            b(i11);
        }
        if (z10) {
            v(i10, rect);
        }
    }

    protected abstract boolean y(int i10, int i11, Bundle bundle);

    protected void B(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    protected void z(AccessibilityEvent accessibilityEvent) {
    }

    protected void A(int i10, AccessibilityEvent accessibilityEvent) {
    }

    protected void D(int i10, boolean z10) {
    }
}
