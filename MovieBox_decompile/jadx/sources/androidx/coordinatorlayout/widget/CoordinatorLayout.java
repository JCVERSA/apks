package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.R$attr;
import androidx.coordinatorlayout.R$style;
import androidx.coordinatorlayout.R$styleable;
import androidx.core.util.h;
import androidx.core.view.GravityCompat;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.card.MaterialCardView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {

    static final String f7571u;

    static final Class[] f7572v;

    static final ThreadLocal f7573w;

    static final Comparator f7574x;

    private static final androidx.core.util.f f7575y;

    private final List f7576a;

    private final androidx.coordinatorlayout.widget.b f7577b;

    private final List f7578c;

    private final List f7579d;

    private Paint f7580e;

    private final int[] f7581f;

    private final int[] f7582g;

    private boolean f7583h;

    private boolean f7584i;

    private int[] f7585j;

    private View f7586k;

    private View f7587l;

    private g f7588m;

    private boolean f7589n;

    private WindowInsetsCompat f7590o;

    private boolean f7591p;

    private Drawable f7592q;

    ViewGroup.OnHierarchyChangeListener f7593r;

    private OnApplyWindowInsetsListener f7594s;

    private final NestedScrollingParentHelper f7595t;

    static class ViewElevationComparator implements Comparator<View> {
        ViewElevationComparator() {
        }

        @Override
        public int compare(View view, View view2) {
            float z10 = ViewCompat.getZ(view);
            float z11 = ViewCompat.getZ(view2);
            if (z10 > z11) {
                return -1;
            }
            return z10 < z11 ? 1 : 0;
        }
    }

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return CoordinatorLayout.this.J(windowInsetsCompat);
        }
    }

    public interface b {
        c getBehavior();
    }

    public static abstract class c {
        public c() {
        }

        public boolean A(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
            if (i11 == 0) {
                return z(coordinatorLayout, view, view2, view3, i10);
            }
            return false;
        }

        public void C(CoordinatorLayout coordinatorLayout, View view, View view2, int i10) {
            if (i10 == 0) {
                B(coordinatorLayout, view, view2);
            }
        }

        public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view) {
            return d(coordinatorLayout, view) > 0.0f;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            return false;
        }

        public int c(CoordinatorLayout coordinatorLayout, View view) {
            return ViewCompat.MEASURED_STATE_MASK;
        }

        public float d(CoordinatorLayout coordinatorLayout, View view) {
            return 0.0f;
        }

        public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public boolean l(CoordinatorLayout coordinatorLayout, View view, int i10) {
            return false;
        }

        public boolean m(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
            return false;
        }

        public boolean n(CoordinatorLayout coordinatorLayout, View view, View view2, float f10, float f11, boolean z10) {
            return false;
        }

        public boolean o(CoordinatorLayout coordinatorLayout, View view, View view2, float f10, float f11) {
            return false;
        }

        public void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr, int i12) {
            if (i12 == 0) {
                p(coordinatorLayout, view, view2, i10, i11, iArr);
            }
        }

        public void s(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14) {
            if (i14 == 0) {
                r(coordinatorLayout, view, view2, i10, i11, i12, i13);
            }
        }

        public void t(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            iArr[0] = iArr[0] + i12;
            iArr[1] = iArr[1] + i13;
            s(coordinatorLayout, view, view2, i10, i11, i12, i13, i14);
        }

        public void v(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
            if (i11 == 0) {
                u(coordinatorLayout, view, view2, view3, i10);
            }
        }

        public boolean w(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z10) {
            return false;
        }

        public Parcelable y(CoordinatorLayout coordinatorLayout, View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean z(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10) {
            return false;
        }

        public c(Context context, AttributeSet attributeSet) {
        }

        public void j() {
        }

        public void g(f fVar) {
        }

        public void B(CoordinatorLayout coordinatorLayout, View view, View view2) {
        }

        public WindowInsetsCompat f(CoordinatorLayout coordinatorLayout, View view, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        public void i(CoordinatorLayout coordinatorLayout, View view, View view2) {
        }

        public void x(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        }

        public void u(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10) {
        }

        public void p(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr) {
        }

        public void r(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13) {
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface d {
        Class value();
    }

    private class e implements ViewGroup.OnHierarchyChangeListener {
        e() {
        }

        @Override
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f7593r;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.w(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f7593r;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    class g implements ViewTreeObserver.OnPreDrawListener {
        g() {
        }

        @Override
        public boolean onPreDraw() {
            CoordinatorLayout.this.w(0);
            return true;
        }
    }

    static {
        Package r10 = CoordinatorLayout.class.getPackage();
        f7571u = r10 != null ? r10.getName() : null;
        f7574x = new ViewElevationComparator();
        f7572v = new Class[]{Context.class, AttributeSet.class};
        f7573w = new ThreadLocal();
        f7575y = new h(12);
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    private static void B(Rect rect) {
        rect.setEmpty();
        f7575y.release(rect);
    }

    private void D(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            c cVarF = ((f) childAt.getLayoutParams()).f();
            if (cVarF != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z10) {
                    cVarF.k(this, childAt, motionEventObtain);
                } else {
                    cVarF.D(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            ((f) getChildAt(i11).getLayoutParams()).m();
        }
        this.f7586k = null;
        this.f7583h = false;
    }

    private static int E(int i10) {
        if (i10 == 0) {
            return 17;
        }
        return i10;
    }

    private static int F(int i10) {
        if ((i10 & 7) == 0) {
            i10 |= GravityCompat.START;
        }
        return (i10 & 112) == 0 ? i10 | 48 : i10;
    }

    private static int G(int i10) {
        return i10 == 0 ? MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END : i10;
    }

    private void H(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        int i11 = fVar.f7606i;
        if (i11 != i10) {
            ViewCompat.offsetLeftAndRight(view, i10 - i11);
            fVar.f7606i = i10;
        }
    }

    private void I(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        int i11 = fVar.f7607j;
        if (i11 != i10) {
            ViewCompat.offsetTopAndBottom(view, i10 - i11);
            fVar.f7607j = i10;
        }
    }

    private void K() {
        if (!ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.setOnApplyWindowInsetsListener(this, null);
            return;
        }
        if (this.f7594s == null) {
            this.f7594s = new a();
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, this.f7594s);
        setSystemUiVisibility(1280);
    }

    private static Rect a() {
        Rect rect = (Rect) f7575y.acquire();
        return rect == null ? new Rect() : rect;
    }

    private static int c(int i10, int i11, int i12) {
        if (i10 < i11) {
            return i11;
        }
        return i10 > i12 ? i12 : i10;
    }

    private void d(f fVar, Rect rect, int i10, int i11) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i10) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i11) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        rect.set(iMax, iMax2, i10 + iMax, i11 + iMax2);
    }

    private WindowInsetsCompat e(WindowInsetsCompat windowInsetsCompat) {
        c cVarF;
        if (windowInsetsCompat.isConsumed()) {
            return windowInsetsCompat;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (ViewCompat.getFitsSystemWindows(childAt) && (cVarF = ((f) childAt.getLayoutParams()).f()) != null) {
                windowInsetsCompat = cVarF.f(this, childAt, windowInsetsCompat);
                if (windowInsetsCompat.isConsumed()) {
                    break;
                }
            }
        }
        return windowInsetsCompat;
    }

    private void l(View view, int i10, Rect rect, Rect rect2, f fVar, int i11, int i12) {
        int iWidth;
        int iHeight;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(E(fVar.f7600c), i10);
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(F(fVar.f7601d), i10);
        int i13 = absoluteGravity & 7;
        int i14 = absoluteGravity & 112;
        int i15 = absoluteGravity2 & 7;
        int i16 = absoluteGravity2 & 112;
        if (i15 != 1) {
            iWidth = i15 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i16 != 16) {
            iHeight = i16 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i13 == 1) {
            iWidth -= i11 / 2;
        } else if (i13 != 5) {
            iWidth -= i11;
        }
        if (i14 == 16) {
            iHeight -= i12 / 2;
        } else if (i14 != 80) {
            iHeight -= i12;
        }
        rect2.set(iWidth, iHeight, i11 + iWidth, i12 + iHeight);
    }

    private int m(int i10) {
        int[] iArr = this.f7585j;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i10);
            return 0;
        }
        if (i10 >= 0 && i10 < iArr.length) {
            return iArr[i10];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i10 + " out of range for " + this);
        return 0;
    }

    private void p(List list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i10 = childCount - 1; i10 >= 0; i10--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i10) : i10));
        }
        Comparator comparator = f7574x;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private boolean q(View view) {
        return this.f7577b.j(view);
    }

    private void r(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        Rect rectA = a();
        rectA.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        if (this.f7590o != null && ViewCompat.getFitsSystemWindows(this) && !ViewCompat.getFitsSystemWindows(view)) {
            rectA.left += this.f7590o.getSystemWindowInsetLeft();
            rectA.top += this.f7590o.getSystemWindowInsetTop();
            rectA.right -= this.f7590o.getSystemWindowInsetRight();
            rectA.bottom -= this.f7590o.getSystemWindowInsetBottom();
        }
        Rect rectA2 = a();
        GravityCompat.apply(F(fVar.f7600c), view.getMeasuredWidth(), view.getMeasuredHeight(), rectA, rectA2, i10);
        view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
        B(rectA);
        B(rectA2);
    }

    private void s(View view, View view2, int i10) {
        Rect rectA = a();
        Rect rectA2 = a();
        try {
            j(view2, rectA);
            k(view, i10, rectA, rectA2);
            view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
        } finally {
            B(rectA);
            B(rectA2);
        }
    }

    private void t(View view, int i10, int i11) {
        int i12;
        f fVar = (f) view.getLayoutParams();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(G(fVar.f7600c), i11);
        int i13 = absoluteGravity & 7;
        int i14 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i11 == 1) {
            i10 = width - i10;
        }
        int iM = m(i10) - measuredWidth;
        if (i13 == 1) {
            iM += measuredWidth / 2;
        } else if (i13 == 5) {
            iM += measuredWidth;
        }
        if (i14 != 16) {
            i12 = i14 != 80 ? 0 : measuredHeight;
        } else {
            i12 = measuredHeight / 2;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(iM, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(i12, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    private void u(View view, Rect rect, int i10) {
        boolean z10;
        boolean z11;
        int width;
        int i11;
        int i12;
        int i13;
        int height;
        int i14;
        int i15;
        int i16;
        if (ViewCompat.isLaidOut(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            f fVar = (f) view.getLayoutParams();
            c cVarF = fVar.f();
            Rect rectA = a();
            Rect rectA2 = a();
            rectA2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (cVarF == null || !cVarF.b(this, view, rectA)) {
                rectA.set(rectA2);
            } else if (!rectA2.contains(rectA)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectA.toShortString() + " | Bounds:" + rectA2.toShortString());
            }
            B(rectA2);
            if (rectA.isEmpty()) {
                B(rectA);
                return;
            }
            int absoluteGravity = GravityCompat.getAbsoluteGravity(fVar.f7605h, i10);
            boolean z12 = true;
            if ((absoluteGravity & 48) != 48 || (i15 = (rectA.top - ((ViewGroup.MarginLayoutParams) fVar).topMargin) - fVar.f7607j) >= (i16 = rect.top)) {
                z10 = false;
            } else {
                I(view, i16 - i15);
                z10 = true;
            }
            if ((absoluteGravity & 80) == 80 && (height = ((getHeight() - rectA.bottom) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) + fVar.f7607j) < (i14 = rect.bottom)) {
                I(view, height - i14);
                z10 = true;
            }
            if (!z10) {
                I(view, 0);
            }
            if ((absoluteGravity & 3) != 3 || (i12 = (rectA.left - ((ViewGroup.MarginLayoutParams) fVar).leftMargin) - fVar.f7606i) >= (i13 = rect.left)) {
                z11 = false;
            } else {
                H(view, i13 - i12);
                z11 = true;
            }
            if ((absoluteGravity & 5) != 5 || (width = ((getWidth() - rectA.right) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin) + fVar.f7606i) >= (i11 = rect.right)) {
                z12 = z11;
            } else {
                H(view, width - i11);
            }
            if (!z12) {
                H(view, 0);
            }
            B(rectA);
        }
    }

    static c x(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            String str2 = f7571u;
            if (!TextUtils.isEmpty(str2)) {
                str = str2 + '.' + str;
            }
        }
        try {
            ThreadLocal threadLocal = f7573w;
            Map map = (Map) threadLocal.get();
            if (map == null) {
                map = new HashMap();
                threadLocal.set(map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(f7572v);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (c) constructor.newInstance(context, attributeSet);
        } catch (Exception e10) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e10);
        }
    }

    private boolean y(MotionEvent motionEvent, int i10) {
        int actionMasked = motionEvent.getActionMasked();
        List list = this.f7578c;
        p(list);
        int size = list.size();
        MotionEvent motionEventObtain = null;
        boolean zK = false;
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            View view = (View) list.get(i11);
            f fVar = (f) view.getLayoutParams();
            c cVarF = fVar.f();
            if (!(zK || z10) || actionMasked == 0) {
                if (!zK && cVarF != null) {
                    if (i10 == 0) {
                        zK = cVarF.k(this, view, motionEvent);
                    } else if (i10 == 1) {
                        zK = cVarF.D(this, view, motionEvent);
                    }
                    if (zK) {
                        this.f7586k = view;
                    }
                }
                boolean zC = fVar.c();
                boolean zI = fVar.i(this, view);
                z10 = zI && !zC;
                if (zI && !z10) {
                    break;
                }
            } else if (cVarF != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i10 == 0) {
                    cVarF.k(this, view, motionEventObtain);
                } else if (i10 == 1) {
                    cVarF.D(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zK;
    }

    private void z() {
        this.f7576a.clear();
        this.f7577b.c();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            f fVarO = o(childAt);
            fVarO.d(this, childAt);
            this.f7577b.b(childAt);
            for (int i11 = 0; i11 < childCount; i11++) {
                if (i11 != i10) {
                    View childAt2 = getChildAt(i11);
                    if (fVarO.b(this, childAt, childAt2)) {
                        if (!this.f7577b.d(childAt2)) {
                            this.f7577b.b(childAt2);
                        }
                        this.f7577b.a(childAt2, childAt);
                    }
                }
            }
        }
        this.f7576a.addAll(this.f7577b.i());
        Collections.reverse(this.f7576a);
    }

    void A(View view, Rect rect) {
        ((f) view.getLayoutParams()).q(rect);
    }

    void C() {
        if (this.f7584i && this.f7588m != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f7588m);
        }
        this.f7589n = false;
    }

    final WindowInsetsCompat J(WindowInsetsCompat windowInsetsCompat) {
        if (androidx.core.util.d.a(this.f7590o, windowInsetsCompat)) {
            return windowInsetsCompat;
        }
        this.f7590o = windowInsetsCompat;
        boolean z10 = false;
        boolean z11 = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
        this.f7591p = z11;
        if (!z11 && getBackground() == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        WindowInsetsCompat windowInsetsCompatE = e(windowInsetsCompat);
        requestLayout();
        return windowInsetsCompatE;
    }

    void b() {
        if (this.f7584i) {
            if (this.f7588m == null) {
                this.f7588m = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f7588m);
        }
        this.f7589n = true;
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(@NonNull View view) {
        List listG = this.f7577b.g(view);
        if (listG == null || listG.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < listG.size(); i10++) {
            View view2 = (View) listG.get(i10);
            c cVarF = ((f) view2.getLayoutParams()).f();
            if (cVarF != null) {
                cVarF.h(this, view2, view);
            }
        }
    }

    public boolean doViewsOverlap(@NonNull View view, @NonNull View view2) {
        boolean z10 = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect rectA = a();
        i(view, view.getParent() != this, rectA);
        Rect rectA2 = a();
        i(view2, view2.getParent() != this, rectA2);
        try {
            if (rectA.left <= rectA2.right && rectA.top <= rectA2.bottom && rectA.right >= rectA2.left && rectA.bottom >= rectA2.top) {
                z10 = true;
            }
            return z10;
        } finally {
            B(rectA);
            B(rectA2);
        }
    }

    @Override
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        f fVar = (f) view.getLayoutParams();
        c cVar = fVar.f7598a;
        if (cVar != null) {
            float fD = cVar.d(this, view);
            if (fD > 0.0f) {
                if (this.f7580e == null) {
                    this.f7580e = new Paint();
                }
                this.f7580e.setColor(fVar.f7598a.c(this, view));
                this.f7580e.setAlpha(c(Math.round(fD * 255.0f), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f7580e);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j10);
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f7592q;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    void f() {
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            if (q(getChildAt(i10))) {
                z10 = true;
                break;
            }
        }
        if (z10 != this.f7589n) {
            if (z10) {
                b();
            } else {
                C();
            }
        }
    }

    @Override
    public f generateDefaultLayoutParams() {
        return new f(-2, -2);
    }

    @NonNull
    public List<View> getDependencies(@NonNull View view) {
        List listH = this.f7577b.h(view);
        this.f7579d.clear();
        if (listH != null) {
            this.f7579d.addAll(listH);
        }
        return this.f7579d;
    }

    final List<View> getDependencySortedChildren() {
        z();
        return Collections.unmodifiableList(this.f7576a);
    }

    @NonNull
    public List<View> getDependents(@NonNull View view) {
        List listG = this.f7577b.g(view);
        this.f7579d.clear();
        if (listG != null) {
            this.f7579d.addAll(listG);
        }
        return this.f7579d;
    }

    public final WindowInsetsCompat getLastWindowInsets() {
        return this.f7590o;
    }

    @Override
    public int getNestedScrollAxes() {
        return this.f7595t.getNestedScrollAxes();
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.f7592q;
    }

    @Override
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    void i(View view, boolean z10, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z10) {
            j(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public boolean isPointInChildBounds(@NonNull View view, int i10, int i11) {
        Rect rectA = a();
        j(view, rectA);
        try {
            return rectA.contains(i10, i11);
        } finally {
            B(rectA);
        }
    }

    void j(View view, Rect rect) {
        androidx.coordinatorlayout.widget.c.a(this, view, rect);
    }

    void k(View view, int i10, Rect rect, Rect rect2) {
        f fVar = (f) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        l(view, i10, rect, rect2, fVar, measuredWidth, measuredHeight);
        d(fVar, rect2, measuredWidth, measuredHeight);
    }

    void n(View view, Rect rect) {
        rect.set(((f) view.getLayoutParams()).h());
    }

    /* JADX WARN: Multi-variable type inference failed */
    f o(View view) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.f7599b) {
            if (view instanceof b) {
                c behavior = ((b) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                fVar.o(behavior);
                fVar.f7599b = true;
            } else {
                d dVar = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    dVar = (d) superclass.getAnnotation(d.class);
                    if (dVar != null) {
                        break;
                    }
                }
                if (dVar != null) {
                    try {
                        fVar.o((c) dVar.value().getDeclaredConstructor(null).newInstance(null));
                    } catch (Exception e10) {
                        Log.e("CoordinatorLayout", "Default behavior class " + dVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e10);
                    }
                }
                fVar.f7599b = true;
            }
        }
        return fVar;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        D(false);
        if (this.f7589n) {
            if (this.f7588m == null) {
                this.f7588m = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f7588m);
        }
        if (this.f7590o == null && ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.requestApplyInsets(this);
        }
        this.f7584i = true;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        D(false);
        if (this.f7589n && this.f7588m != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f7588m);
        }
        View view = this.f7587l;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f7584i = false;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f7591p || this.f7592q == null) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.f7590o;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f7592q.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f7592q.draw(canvas);
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            D(true);
        }
        boolean zY = y(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            D(true);
        }
        return zY;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        c cVarF;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f7576a.size();
        for (int i14 = 0; i14 < size; i14++) {
            View view = (View) this.f7576a.get(i14);
            if (view.getVisibility() != 8 && ((cVarF = ((f) view.getLayoutParams()).f()) == null || !cVarF.l(this, view, layoutDirection))) {
                onLayoutChild(view, layoutDirection);
            }
        }
    }

    public void onLayoutChild(@NonNull View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        if (fVar.a()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        View view2 = fVar.f7608k;
        if (view2 != null) {
            s(view, view2, i10);
            return;
        }
        int i11 = fVar.f7602e;
        if (i11 >= 0) {
            t(view, i11, i10);
        } else {
            r(view, i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:46:0x011f  */
    @Override
    protected void onMeasure(int i10, int i11) {
        int i12;
        int iMax;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        c cVarF;
        f fVar;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        z();
        f();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        boolean z10 = layoutDirection == 1;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        int i19 = paddingLeft + paddingRight;
        int i20 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z11 = this.f7590o != null && ViewCompat.getFitsSystemWindows(this);
        int size3 = this.f7576a.size();
        int i21 = suggestedMinimumWidth;
        int i22 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i23 = 0;
        while (i23 < size3) {
            View view = (View) this.f7576a.get(i23);
            if (view.getVisibility() == 8) {
                i17 = i23;
                i14 = size3;
                i15 = paddingLeft;
            } else {
                f fVar2 = (f) view.getLayoutParams();
                int i24 = fVar2.f7602e;
                if (i24 < 0 || mode == 0) {
                    i12 = iCombineMeasuredStates;
                } else {
                    int iM = m(i24);
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(G(fVar2.f7600c), layoutDirection) & 7;
                    i12 = iCombineMeasuredStates;
                    if ((absoluteGravity == 3 && !z10) || (absoluteGravity == 5 && z10)) {
                        iMax = Math.max(0, (size - paddingRight) - iM);
                    } else if ((absoluteGravity == 5 && !z10) || (absoluteGravity == 3 && z10)) {
                        iMax = Math.max(0, iM - paddingLeft);
                    }
                    if (z11 || ViewCompat.getFitsSystemWindows(view)) {
                        iMakeMeasureSpec = i10;
                        iMakeMeasureSpec2 = i11;
                    } else {
                        int systemWindowInsetLeft = this.f7590o.getSystemWindowInsetLeft() + this.f7590o.getSystemWindowInsetRight();
                        int systemWindowInsetTop = this.f7590o.getSystemWindowInsetTop() + this.f7590o.getSystemWindowInsetBottom();
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - systemWindowInsetLeft, mode);
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - systemWindowInsetTop, mode2);
                    }
                    cVarF = fVar2.f();
                    if (cVarF != null) {
                        fVar = fVar2;
                        i16 = i12;
                        i17 = i23;
                        i13 = i22;
                        i15 = paddingLeft;
                        i18 = i21;
                        i14 = size3;
                        if (!cVarF.m(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                        }
                        f fVar3 = fVar;
                        int iMax2 = Math.max(i18, i19 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar3).leftMargin + ((ViewGroup.MarginLayoutParams) fVar3).rightMargin);
                        int iMax3 = Math.max(i13, i20 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar3).topMargin + ((ViewGroup.MarginLayoutParams) fVar3).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(i16, view.getMeasuredState());
                        i21 = iMax2;
                        i22 = iMax3;
                    } else {
                        fVar = fVar2;
                        i13 = i22;
                        i14 = size3;
                        i15 = paddingLeft;
                        i16 = i12;
                        i17 = i23;
                        i18 = i21;
                    }
                    onMeasureChild(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                    f fVar4 = fVar;
                    int iMax4 = Math.max(i18, i19 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar4).leftMargin + ((ViewGroup.MarginLayoutParams) fVar4).rightMargin);
                    int iMax5 = Math.max(i13, i20 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar4).topMargin + ((ViewGroup.MarginLayoutParams) fVar4).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i16, view.getMeasuredState());
                    i21 = iMax4;
                    i22 = iMax5;
                }
                iMax = 0;
                if (z11) {
                    iMakeMeasureSpec = i10;
                    iMakeMeasureSpec2 = i11;
                } else {
                    iMakeMeasureSpec = i10;
                    iMakeMeasureSpec2 = i11;
                }
                cVarF = fVar2.f();
                if (cVarF != null) {
                    fVar = fVar2;
                    i16 = i12;
                    i17 = i23;
                    i13 = i22;
                    i15 = paddingLeft;
                    i18 = i21;
                    i14 = size3;
                    if (!cVarF.m(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                    }
                    f fVar5 = fVar;
                    int iMax6 = Math.max(i18, i19 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar5).leftMargin + ((ViewGroup.MarginLayoutParams) fVar5).rightMargin);
                    int iMax7 = Math.max(i13, i20 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar5).topMargin + ((ViewGroup.MarginLayoutParams) fVar5).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i16, view.getMeasuredState());
                    i21 = iMax6;
                    i22 = iMax7;
                } else {
                    fVar = fVar2;
                    i13 = i22;
                    i14 = size3;
                    i15 = paddingLeft;
                    i16 = i12;
                    i17 = i23;
                    i18 = i21;
                }
                onMeasureChild(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                f fVar6 = fVar;
                int iMax8 = Math.max(i18, i19 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar6).leftMargin + ((ViewGroup.MarginLayoutParams) fVar6).rightMargin);
                int iMax9 = Math.max(i13, i20 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar6).topMargin + ((ViewGroup.MarginLayoutParams) fVar6).bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(i16, view.getMeasuredState());
                i21 = iMax8;
                i22 = iMax9;
            }
            i23 = i17 + 1;
            paddingLeft = i15;
            size3 = i14;
        }
        int i25 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(i21, i10, (-16777216) & i25), View.resolveSizeAndState(i22, i11, i25 << 16));
    }

    public void onMeasureChild(View view, int i10, int i11, int i12, int i13) {
        measureChildWithMargins(view, i10, i11, i12, i13);
    }

    @Override
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        c cVarF;
        int childCount = getChildCount();
        boolean zN = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(0) && (cVarF = fVar.f()) != null) {
                    zN |= cVarF.n(this, childAt, view, f10, f11, z10);
                }
            }
        }
        if (zN) {
            w(1);
        }
        return zN;
    }

    @Override
    public boolean onNestedPreFling(View view, float f10, float f11) {
        c cVarF;
        int childCount = getChildCount();
        boolean zO = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(0) && (cVarF = fVar.f()) != null) {
                    zO |= cVarF.o(this, childAt, view, f10, f11);
                }
            }
        }
        return zO;
    }

    @Override
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        onNestedPreScroll(view, i10, i11, iArr, 0);
    }

    @Override
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        onNestedScroll(view, i10, i11, i12, i13, 0);
    }

    @Override
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        onNestedScrollAccepted(view, view2, i10, 0);
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.behaviorStates;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id2 = childAt.getId();
            c cVarF = o(childAt).f();
            if (id2 != -1 && cVarF != null && (parcelable2 = sparseArray.get(id2)) != null) {
                cVarF.x(this, childAt, parcelable2);
            }
        }
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableY;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id2 = childAt.getId();
            c cVarF = ((f) childAt.getLayoutParams()).f();
            if (id2 != -1 && cVarF != null && (parcelableY = cVarF.y(this, childAt)) != null) {
                sparseArray.append(id2, parcelableY);
            }
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    @Override
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return onStartNestedScroll(view, view2, i10, 0);
    }

    @Override
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:15:0x0037 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0039  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015 A[PHI: r3
      0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0024, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zY;
        boolean zD;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f7586k == null) {
            zY = y(motionEvent, 1);
            if (!zY) {
                zD = false;
            }
            motionEventObtain = null;
            if (this.f7586k == null) {
                zD |= super.onTouchEvent(motionEvent);
            } else if (zY) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                D(false);
            }
            return zD;
        }
        zY = false;
        c cVarF = ((f) this.f7586k.getLayoutParams()).f();
        if (cVarF != null) {
            zD = cVarF.D(this, this.f7586k, motionEvent);
        } else {
            zD = false;
        }
        motionEventObtain = null;
        if (this.f7586k == null) {
            zD |= super.onTouchEvent(motionEvent);
        } else if (zY) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked != 1) {
            D(false);
        } else {
            D(false);
        }
        return zD;
    }

    @Override
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        c cVarF = ((f) view.getLayoutParams()).f();
        if (cVarF == null || !cVarF.w(this, view, rect, z10)) {
            return super.requestChildRectangleOnScreen(view, rect, z10);
        }
        return true;
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        if (!z10 || this.f7583h) {
            return;
        }
        D(false);
        this.f7583h = true;
    }

    @Override
    public void setFitsSystemWindows(boolean z10) {
        super.setFitsSystemWindows(z10);
        K();
    }

    @Override
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f7593r = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f7592q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f7592q = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f7592q.setState(getDrawableState());
                }
                a1.a.m(this.f7592q, ViewCompat.getLayoutDirection(this));
                this.f7592q.setVisible(getVisibility() == 0, false);
                this.f7592q.setCallback(this);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarBackgroundColor(int i10) {
        setStatusBarBackground(new ColorDrawable(i10));
    }

    public void setStatusBarBackgroundResource(int i10) {
        setStatusBarBackground(i10 != 0 ? androidx.core.content.b.getDrawable(getContext(), i10) : null);
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f7592q;
        if (drawable == null || drawable.isVisible() == z10) {
            return;
        }
        this.f7592q.setVisible(z10, false);
    }

    void v(View view, int i10) {
        c cVarF;
        f fVar = (f) view.getLayoutParams();
        if (fVar.f7608k != null) {
            Rect rectA = a();
            Rect rectA2 = a();
            Rect rectA3 = a();
            j(fVar.f7608k, rectA);
            i(view, false, rectA2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            l(view, i10, rectA, rectA3, fVar, measuredWidth, measuredHeight);
            boolean z10 = (rectA3.left == rectA2.left && rectA3.top == rectA2.top) ? false : true;
            d(fVar, rectA3, measuredWidth, measuredHeight);
            int i11 = rectA3.left - rectA2.left;
            int i12 = rectA3.top - rectA2.top;
            if (i11 != 0) {
                ViewCompat.offsetLeftAndRight(view, i11);
            }
            if (i12 != 0) {
                ViewCompat.offsetTopAndBottom(view, i12);
            }
            if (z10 && (cVarF = fVar.f()) != null) {
                cVarF.h(this, view, fVar.f7608k);
            }
            B(rectA);
            B(rectA2);
            B(rectA3);
        }
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f7592q;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00ca  */
    final void w(int i10) {
        int i11;
        c cVarF;
        boolean zH;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f7576a.size();
        Rect rectA = a();
        Rect rectA2 = a();
        Rect rectA3 = a();
        for (int i12 = 0; i12 < size; i12++) {
            View view = (View) this.f7576a.get(i12);
            f fVar = (f) view.getLayoutParams();
            if (i10 != 0 || view.getVisibility() != 8) {
                for (int i13 = 0; i13 < i12; i13++) {
                    if (fVar.f7609l == ((View) this.f7576a.get(i13))) {
                        v(view, layoutDirection);
                    }
                }
                i(view, true, rectA2);
                if (fVar.f7604g != 0 && !rectA2.isEmpty()) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(fVar.f7604g, layoutDirection);
                    int i14 = absoluteGravity & 112;
                    if (i14 == 48) {
                        rectA.top = Math.max(rectA.top, rectA2.bottom);
                    } else if (i14 == 80) {
                        rectA.bottom = Math.max(rectA.bottom, getHeight() - rectA2.top);
                    }
                    int i15 = absoluteGravity & 7;
                    if (i15 == 3) {
                        rectA.left = Math.max(rectA.left, rectA2.right);
                    } else if (i15 == 5) {
                        rectA.right = Math.max(rectA.right, getWidth() - rectA2.left);
                    }
                }
                if (fVar.f7605h != 0 && view.getVisibility() == 0) {
                    u(view, rectA, layoutDirection);
                }
                if (i10 != 2) {
                    n(view, rectA3);
                    if (!rectA3.equals(rectA2)) {
                        A(view, rectA2);
                        for (i11 = i12 + 1; i11 < size; i11++) {
                            View view2 = (View) this.f7576a.get(i11);
                            f fVar2 = (f) view2.getLayoutParams();
                            cVarF = fVar2.f();
                            if (cVarF == null && cVarF.e(this, view2, view)) {
                                if (i10 == 0 && fVar2.g()) {
                                    fVar2.k();
                                } else {
                                    if (i10 != 2) {
                                        zH = cVarF.h(this, view2, view);
                                    } else {
                                        cVarF.i(this, view2, view);
                                        zH = true;
                                    }
                                    if (i10 == 1) {
                                        fVar2.p(zH);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    while (i11 < size) {
                        View view3 = (View) this.f7576a.get(i11);
                        f fVar3 = (f) view3.getLayoutParams();
                        cVarF = fVar3.f();
                        if (cVarF == null) {
                        }
                    }
                }
            }
        }
        B(rectA);
        B(rectA2);
        B(rectA3);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.coordinatorLayoutStyle);
    }

    @Override
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        c cVarF;
        int childCount = getChildCount();
        boolean z10 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(i12) && (cVarF = fVar.f()) != null) {
                    int[] iArr2 = this.f7581f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVarF.q(this, childAt, view, i10, i11, iArr2, i12);
                    int[] iArr3 = this.f7581f;
                    iMax = i10 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.f7581f;
                    iMax2 = i11 > 0 ? Math.max(iMax2, iArr4[1]) : Math.min(iMax2, iArr4[1]);
                    z10 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z10) {
            w(1);
        }
    }

    @Override
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        onNestedScroll(view, i10, i11, i12, i13, 0, this.f7582g);
    }

    @Override
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        c cVarF;
        this.f7595t.onNestedScrollAccepted(view, view2, i10, i11);
        this.f7587l = view2;
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.j(i11) && (cVarF = fVar.f()) != null) {
                cVarF.v(this, childAt, view, view2, i10, i11);
            }
        }
    }

    @Override
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                c cVarF = fVar.f();
                if (cVarF != null) {
                    boolean zA = cVarF.A(this, childAt, view, view2, i10, i11);
                    z10 |= zA;
                    fVar.r(i11, zA);
                } else {
                    fVar.r(i11, false);
                }
            }
        }
        return z10;
    }

    @Override
    public void onStopNestedScroll(View view, int i10) {
        this.f7595t.onStopNestedScroll(view, i10);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.j(i10)) {
                c cVarF = fVar.f();
                if (cVarF != null) {
                    cVarF.C(this, childAt, view, i10);
                }
                fVar.l(i10);
                fVar.k();
            }
        }
        this.f7587l = null;
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i10);
        this.f7576a = new ArrayList();
        this.f7577b = new androidx.coordinatorlayout.widget.b();
        this.f7578c = new ArrayList();
        this.f7579d = new ArrayList();
        this.f7581f = new int[2];
        this.f7582g = new int[2];
        this.f7595t = new NestedScrollingParentHelper(this);
        if (i10 == 0) {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, 0, R$style.Widget_Support_CoordinatorLayout);
        } else {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, i10, 0);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            if (i10 == 0) {
                saveAttributeDataForStyleable(context, R$styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, 0, R$style.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, R$styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
            }
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f7585j = resources.getIntArray(resourceId);
            float f10 = resources.getDisplayMetrics().density;
            int length = this.f7585j.length;
            for (int i11 = 0; i11 < length; i11++) {
                int[] iArr = this.f7585j;
                iArr[i11] = (int) (iArr[i11] * f10);
            }
        }
        this.f7592q = typedArrayObtainStyledAttributes.getDrawable(R$styleable.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        K();
        super.setOnHierarchyChangeListener(new e());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    @Override
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    @Override
    public void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
        c cVarF;
        boolean z10;
        int iMin;
        int childCount = getChildCount();
        boolean z11 = false;
        int iMax = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(i14) && (cVarF = fVar.f()) != null) {
                    int[] iArr2 = this.f7581f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVarF.t(this, childAt, view, i10, i11, i12, i13, i14, iArr2);
                    int[] iArr3 = this.f7581f;
                    iMax = i12 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    if (i13 > 0) {
                        z10 = true;
                        iMin = Math.max(i15, this.f7581f[1]);
                    } else {
                        z10 = true;
                        iMin = Math.min(i15, this.f7581f[1]);
                    }
                    i15 = iMin;
                    z11 = z10;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + i15;
        if (z11) {
            w(1);
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        SparseArray<Parcelable> behaviorStates;

        static class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i10 = parcel.readInt();
            int[] iArr = new int[i10];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.behaviorStates = new SparseArray<>(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                this.behaviorStates.append(iArr[i11], parcelableArray[i11]);
            }
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            SparseArray<Parcelable> sparseArray = this.behaviorStates;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i11 = 0; i11 < size; i11++) {
                iArr[i11] = this.behaviorStates.keyAt(i11);
                parcelableArr[i11] = this.behaviorStates.valueAt(i11);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i10);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class f extends ViewGroup.MarginLayoutParams {

        c f7598a;

        boolean f7599b;

        public int f7600c;

        public int f7601d;

        public int f7602e;

        int f7603f;

        public int f7604g;

        public int f7605h;

        int f7606i;

        int f7607j;

        View f7608k;

        View f7609l;

        private boolean f7610m;

        private boolean f7611n;

        private boolean f7612o;

        private boolean f7613p;

        final Rect f7614q;

        Object f7615r;

        public f(int i10, int i11) {
            super(i10, i11);
            this.f7599b = false;
            this.f7600c = 0;
            this.f7601d = 0;
            this.f7602e = -1;
            this.f7603f = -1;
            this.f7604g = 0;
            this.f7605h = 0;
            this.f7614q = new Rect();
        }

        private void n(View view, CoordinatorLayout coordinatorLayout) {
            View viewFindViewById = coordinatorLayout.findViewById(this.f7603f);
            this.f7608k = viewFindViewById;
            if (viewFindViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f7609l = null;
                    this.f7608k = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f7603f) + " to anchor view " + view);
            }
            if (viewFindViewById == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.f7609l = null;
                this.f7608k = null;
                return;
            }
            for (ViewParent parent = viewFindViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (!coordinatorLayout.isInEditMode()) {
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    this.f7609l = null;
                    this.f7608k = null;
                    return;
                }
                if (parent instanceof View) {
                    viewFindViewById = parent;
                }
            }
            this.f7609l = viewFindViewById;
        }

        private boolean s(View view, int i10) {
            int absoluteGravity = GravityCompat.getAbsoluteGravity(((f) view.getLayoutParams()).f7604g, i10);
            return absoluteGravity != 0 && (GravityCompat.getAbsoluteGravity(this.f7605h, i10) & absoluteGravity) == absoluteGravity;
        }

        private boolean t(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f7608k.getId() != this.f7603f) {
                return false;
            }
            View view2 = this.f7608k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.f7609l = null;
                    this.f7608k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
            this.f7609l = view2;
            return true;
        }

        boolean a() {
            return this.f7608k == null && this.f7603f != -1;
        }

        boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            c cVar;
            return view2 == this.f7609l || s(view2, ViewCompat.getLayoutDirection(coordinatorLayout)) || ((cVar = this.f7598a) != null && cVar.e(coordinatorLayout, view, view2));
        }

        boolean c() {
            if (this.f7598a == null) {
                this.f7610m = false;
            }
            return this.f7610m;
        }

        View d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f7603f == -1) {
                this.f7609l = null;
                this.f7608k = null;
                return null;
            }
            if (this.f7608k == null || !t(view, coordinatorLayout)) {
                n(view, coordinatorLayout);
            }
            return this.f7608k;
        }

        public int e() {
            return this.f7603f;
        }

        public c f() {
            return this.f7598a;
        }

        boolean g() {
            return this.f7613p;
        }

        Rect h() {
            return this.f7614q;
        }

        boolean i(CoordinatorLayout coordinatorLayout, View view) {
            boolean z10 = this.f7610m;
            if (z10) {
                return true;
            }
            c cVar = this.f7598a;
            boolean zA = (cVar != null ? cVar.a(coordinatorLayout, view) : false) | z10;
            this.f7610m = zA;
            return zA;
        }

        boolean j(int i10) {
            if (i10 == 0) {
                return this.f7611n;
            }
            if (i10 != 1) {
                return false;
            }
            return this.f7612o;
        }

        void k() {
            this.f7613p = false;
        }

        void l(int i10) {
            r(i10, false);
        }

        void m() {
            this.f7610m = false;
        }

        public void o(c cVar) {
            c cVar2 = this.f7598a;
            if (cVar2 != cVar) {
                if (cVar2 != null) {
                    cVar2.j();
                }
                this.f7598a = cVar;
                this.f7615r = null;
                this.f7599b = true;
                if (cVar != null) {
                    cVar.g(this);
                }
            }
        }

        void p(boolean z10) {
            this.f7613p = z10;
        }

        void q(Rect rect) {
            this.f7614q.set(rect);
        }

        void r(int i10, boolean z10) {
            if (i10 == 0) {
                this.f7611n = z10;
            } else {
                if (i10 != 1) {
                    return;
                }
                this.f7612o = z10;
            }
        }

        f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7599b = false;
            this.f7600c = 0;
            this.f7601d = 0;
            this.f7602e = -1;
            this.f7603f = -1;
            this.f7604g = 0;
            this.f7605h = 0;
            this.f7614q = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout_Layout);
            this.f7600c = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f7603f = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f7601d = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f7602e = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f7604g = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f7605h = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.CoordinatorLayout_Layout_layout_behavior);
            this.f7599b = zHasValue;
            if (zHasValue) {
                this.f7598a = CoordinatorLayout.x(context, attributeSet, typedArrayObtainStyledAttributes.getString(R$styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            typedArrayObtainStyledAttributes.recycle();
            c cVar = this.f7598a;
            if (cVar != null) {
                cVar.g(this);
            }
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.f7599b = false;
            this.f7600c = 0;
            this.f7601d = 0;
            this.f7602e = -1;
            this.f7603f = -1;
            this.f7604g = 0;
            this.f7605h = 0;
            this.f7614q = new Rect();
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f7599b = false;
            this.f7600c = 0;
            this.f7601d = 0;
            this.f7602e = -1;
            this.f7603f = -1;
            this.f7604g = 0;
            this.f7605h = 0;
            this.f7614q = new Rect();
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7599b = false;
            this.f7600c = 0;
            this.f7601d = 0;
            this.f7602e = -1;
            this.f7603f = -1;
            this.f7604g = 0;
            this.f7605h = 0;
            this.f7614q = new Rect();
        }
    }
}
