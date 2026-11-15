package androidx.drawerlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import androidx.drawerlayout.R$attr;
import androidx.drawerlayout.R$dimen;
import androidx.drawerlayout.R$styleable;
import java.util.ArrayList;
import java.util.List;

public class DrawerLayout extends ViewGroup {
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;
    static final boolean N;
    private static final boolean O;
    private static boolean P = false;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private CharSequence A;
    private Object B;
    private boolean C;
    private Drawable D;
    private Drawable E;
    private Drawable F;
    private Drawable G;
    private final ArrayList H;
    private Rect I;
    private Matrix J;
    private final AccessibilityViewCommand K;

    private final d f8630a;

    private float f8631b;

    private int f8632c;

    private int f8633d;

    private float f8634e;

    private Paint f8635f;

    private final ViewDragHelper f8636g;

    private final ViewDragHelper f8637h;

    private final ViewDragCallback f8638i;

    private final ViewDragCallback f8639j;

    private int f8640k;

    private boolean f8641l;

    private boolean f8642m;

    private int f8643n;

    private int f8644o;

    private int f8645p;

    private int f8646q;

    private boolean f8647r;

    private e f8648s;

    private List f8649t;

    private float f8650u;

    private float f8651v;

    private Drawable f8652w;

    private Drawable f8653x;

    private Drawable f8654y;

    private CharSequence f8655z;
    private static final int[] L = {R.attr.colorPrimaryDark};
    static final int[] M = {R.attr.layout_gravity};

    private class ViewDragCallback extends ViewDragHelper.b {

        private final int f8656a;

        private ViewDragHelper f8657b;

        private final Runnable f8658c = new Runnable() {
            @Override
            public void run() {
                ViewDragCallback.this.b();
            }
        };

        ViewDragCallback(int i10) {
            this.f8656a = i10;
        }

        private void a() {
            View viewH = DrawerLayout.this.h(this.f8656a == 3 ? 5 : 3);
            if (viewH != null) {
                DrawerLayout.this.closeDrawer(viewH);
            }
        }

        void b() {
            View viewH;
            int width;
            int edgeSize = this.f8657b.getEdgeSize();
            boolean z10 = this.f8656a == 3;
            if (z10) {
                viewH = DrawerLayout.this.h(3);
                width = (viewH != null ? -viewH.getWidth() : 0) + edgeSize;
            } else {
                viewH = DrawerLayout.this.h(5);
                width = DrawerLayout.this.getWidth() - edgeSize;
            }
            if (viewH != null) {
                if (((!z10 || viewH.getLeft() >= width) && (z10 || viewH.getLeft() <= width)) || DrawerLayout.this.getDrawerLockMode(viewH) != 0) {
                    return;
                }
                f fVar = (f) viewH.getLayoutParams();
                this.f8657b.smoothSlideViewTo(viewH, width, viewH.getTop());
                fVar.f8666c = true;
                DrawerLayout.this.invalidate();
                a();
                DrawerLayout.this.a();
            }
        }

        public void c() {
            DrawerLayout.this.removeCallbacks(this.f8658c);
        }

        @Override
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            if (DrawerLayout.this.b(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i10, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i10, width));
        }

        @Override
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        public void d(ViewDragHelper viewDragHelper) {
            this.f8657b = viewDragHelper;
        }

        @Override
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.t(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override
        public void onEdgeDragStarted(int i10, int i11) {
            View viewH = (i10 & 1) == 1 ? DrawerLayout.this.h(3) : DrawerLayout.this.h(5);
            if (viewH == null || DrawerLayout.this.getDrawerLockMode(viewH) != 0) {
                return;
            }
            this.f8657b.captureChildView(viewH, i11);
        }

        @Override
        public boolean onEdgeLock(int i10) {
            return false;
        }

        @Override
        public void onEdgeTouched(int i10, int i11) {
            DrawerLayout.this.postDelayed(this.f8658c, 160L);
        }

        @Override
        public void onViewCaptured(View view, int i10) {
            ((f) view.getLayoutParams()).f8666c = false;
            a();
        }

        @Override
        public void onViewDragStateChanged(int i10) {
            DrawerLayout.this.D(i10, this.f8657b.getCapturedView());
        }

        @Override
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.b(view, 3) ? i10 + width : DrawerLayout.this.getWidth() - i10) / width;
            DrawerLayout.this.A(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override
        public void onViewReleased(View view, float f10, float f11) {
            int i10;
            float fL = DrawerLayout.this.l(view);
            int width = view.getWidth();
            if (DrawerLayout.this.b(view, 3)) {
                i10 = (f10 > 0.0f || (f10 == 0.0f && fL > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f10 < 0.0f || (f10 == 0.0f && fL > 0.5f)) {
                    width2 -= width;
                }
                i10 = width2;
            }
            this.f8657b.settleCapturedViewAt(i10, view.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override
        public boolean tryCaptureView(View view, int i10) {
            return DrawerLayout.this.t(view) && DrawerLayout.this.b(view, this.f8656a) && DrawerLayout.this.getDrawerLockMode(view) == 0;
        }
    }

    class a implements AccessibilityViewCommand {
        a() {
        }

        @Override
        public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
            if (!DrawerLayout.this.isDrawerOpen(view) || DrawerLayout.this.getDrawerLockMode(view) == 2) {
                return false;
            }
            DrawerLayout.this.closeDrawer(view);
            return true;
        }
    }

    class b implements View.OnApplyWindowInsetsListener {
        b() {
        }

        @Override
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    class c extends AccessibilityDelegateCompat {

        private final Rect f8662a = new Rect();

        c() {
        }

        private void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (DrawerLayout.r(childAt)) {
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        private void b(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f8662a;
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
        }

        @Override
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View viewJ = DrawerLayout.this.j();
            if (viewJ == null) {
                return true;
            }
            CharSequence drawerTitle = DrawerLayout.this.getDrawerTitle(DrawerLayout.this.k(viewJ));
            if (drawerTitle == null) {
                return true;
            }
            text.add(drawerTitle);
            return true;
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.N) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
                accessibilityNodeInfoCompat.setSource(view);
                Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
                if (parentForAccessibility instanceof View) {
                    accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
                }
                b(accessibilityNodeInfoCompat, accessibilityNodeInfoCompatObtain);
                accessibilityNodeInfoCompatObtain.recycle();
                a(accessibilityNodeInfoCompat, (ViewGroup) view);
            }
            accessibilityNodeInfoCompat.setClassName("androidx.drawerlayout.widget.DrawerLayout");
            accessibilityNodeInfoCompat.setFocusable(false);
            accessibilityNodeInfoCompat.setFocused(false);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.N || DrawerLayout.r(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    static final class d extends AccessibilityDelegateCompat {
        d() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (DrawerLayout.r(view)) {
                return;
            }
            accessibilityNodeInfoCompat.setParent(null);
        }
    }

    public interface e {
        void a(View view);

        void b(View view);

        void c(int i10);

        void d(View view, float f10);
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        N = true;
        O = true;
        P = i10 >= 29;
    }

    public DrawerLayout(@NonNull Context context) {
        this(context, null);
    }

    private void B(View view) {
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS;
        ViewCompat.removeAccessibilityAction(view, accessibilityActionCompat.getId());
        if (!isDrawerOpen(view) || getDrawerLockMode(view) == 2) {
            return;
        }
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, this.K);
    }

    private void C(View view, boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((z10 || t(childAt)) && !(z10 && childAt == view)) {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, 1);
            }
        }
    }

    private boolean g(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent motionEventM = m(motionEvent, view);
            boolean zDispatchGenericMotionEvent = view.dispatchGenericMotionEvent(motionEventM);
            motionEventM.recycle();
            return zDispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean zDispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return zDispatchGenericMotionEvent2;
    }

    private MotionEvent m(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.J == null) {
                this.J = new Matrix();
            }
            matrix.invert(this.J);
            motionEventObtain.transform(this.J);
        }
        return motionEventObtain;
    }

    static String n(int i10) {
        if ((i10 & 3) == 3) {
            return "LEFT";
        }
        return (i10 & 5) == 5 ? "RIGHT" : Integer.toHexString(i10);
    }

    private static boolean o(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    private boolean p() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((f) getChildAt(i10).getLayoutParams()).f8666c) {
                return true;
            }
        }
        return false;
    }

    private boolean q() {
        return j() != null;
    }

    static boolean r(View view) {
        return (ViewCompat.getImportantForAccessibility(view) == 4 || ViewCompat.getImportantForAccessibility(view) == 2) ? false : true;
    }

    private boolean u(float f10, float f11, View view) {
        if (this.I == null) {
            this.I = new Rect();
        }
        view.getHitRect(this.I);
        return this.I.contains((int) f10, (int) f11);
    }

    private void v(Drawable drawable, int i10) {
        if (drawable == null || !a1.a.h(drawable)) {
            return;
        }
        a1.a.m(drawable, i10);
    }

    private Drawable x() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.D;
            if (drawable != null) {
                v(drawable, layoutDirection);
                return this.D;
            }
        } else {
            Drawable drawable2 = this.E;
            if (drawable2 != null) {
                v(drawable2, layoutDirection);
                return this.E;
            }
        }
        return this.F;
    }

    private Drawable y() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.E;
            if (drawable != null) {
                v(drawable, layoutDirection);
                return this.E;
            }
        } else {
            Drawable drawable2 = this.D;
            if (drawable2 != null) {
                v(drawable2, layoutDirection);
                return this.D;
            }
        }
        return this.G;
    }

    private void z() {
        if (O) {
            return;
        }
        this.f8653x = x();
        this.f8654y = y();
    }

    void A(View view, float f10) {
        f fVar = (f) view.getLayoutParams();
        if (f10 == fVar.f8665b) {
            return;
        }
        fVar.f8665b = f10;
        f(view, f10);
    }

    void D(int i10, View view) {
        int i11;
        int viewDragState = this.f8636g.getViewDragState();
        int viewDragState2 = this.f8637h.getViewDragState();
        if (viewDragState == 1 || viewDragState2 == 1) {
            i11 = 1;
        } else {
            i11 = 2;
            if (viewDragState != 2 && viewDragState2 != 2) {
                i11 = 0;
            }
        }
        if (view != null && i10 == 0) {
            float f10 = ((f) view.getLayoutParams()).f8665b;
            if (f10 == 0.0f) {
                d(view);
            } else if (f10 == 1.0f) {
                e(view);
            }
        }
        if (i11 != this.f8640k) {
            this.f8640k = i11;
            List list = this.f8649t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((e) this.f8649t.get(size)).c(i11);
                }
            }
        }
    }

    void a() {
        if (this.f8647r) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).dispatchTouchEvent(motionEventObtain);
        }
        motionEventObtain.recycle();
        this.f8647r = true;
    }

    public void addDrawerListener(@NonNull e eVar) {
        if (eVar == null) {
            return;
        }
        if (this.f8649t == null) {
            this.f8649t = new ArrayList();
        }
        this.f8649t.add(eVar);
    }

    @Override
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (!t(childAt)) {
                this.H.add(childAt);
            } else if (isDrawerOpen(childAt)) {
                childAt.addFocusables(arrayList, i10, i11);
                z10 = true;
            }
        }
        if (!z10) {
            int size = this.H.size();
            for (int i13 = 0; i13 < size; i13++) {
                View view = (View) this.H.get(i13);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i10, i11);
                }
            }
        }
        this.H.clear();
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (i() != null || t(view)) {
            ViewCompat.setImportantForAccessibility(view, 4);
        } else {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
        if (N) {
            return;
        }
        ViewCompat.setAccessibilityDelegate(view, this.f8630a);
    }

    boolean b(View view, int i10) {
        return (k(view) & i10) == i10;
    }

    void c(boolean z10) {
        int childCount = getChildCount();
        boolean zSmoothSlideViewTo = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            f fVar = (f) childAt.getLayoutParams();
            if (t(childAt) && (!z10 || fVar.f8666c)) {
                zSmoothSlideViewTo |= b(childAt, 3) ? this.f8636g.smoothSlideViewTo(childAt, -childAt.getWidth(), childAt.getTop()) : this.f8637h.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                fVar.f8666c = false;
            }
        }
        this.f8638i.c();
        this.f8639j.c();
        if (zSmoothSlideViewTo) {
            invalidate();
        }
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public void close() {
        closeDrawer(GravityCompat.START);
    }

    public void closeDrawer(@NonNull View view) {
        closeDrawer(view, true);
    }

    public void closeDrawers() {
        c(false);
    }

    @Override
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < childCount; i10++) {
            fMax = Math.max(fMax, ((f) getChildAt(i10).getLayoutParams()).f8665b);
        }
        this.f8634e = fMax;
        boolean zContinueSettling = this.f8636g.continueSettling(true);
        boolean zContinueSettling2 = this.f8637h.continueSettling(true);
        if (zContinueSettling || zContinueSettling2) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    void d(View view) {
        View rootView;
        f fVar = (f) view.getLayoutParams();
        if ((fVar.f8667d & 1) == 1) {
            fVar.f8667d = 0;
            List list = this.f8649t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((e) this.f8649t.get(size)).b(view);
                }
            }
            C(view, false);
            B(view);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    @Override
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f8634e <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        for (int i10 = childCount - 1; i10 >= 0; i10--) {
            View childAt = getChildAt(i10);
            if (u(x10, y10, childAt) && !s(childAt) && g(motionEvent, childAt)) {
                return true;
            }
        }
        return false;
    }

    @Override
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        int height = getHeight();
        boolean zS = s(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i10 = 0;
        if (zS) {
            int childCount = getChildCount();
            int i11 = 0;
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt != view && childAt.getVisibility() == 0 && o(childAt) && t(childAt) && childAt.getHeight() >= height) {
                    if (b(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i11) {
                            i11 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i11, 0, width, getHeight());
            i10 = i11;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j10);
        canvas.restoreToCount(iSave);
        float f10 = this.f8634e;
        if (f10 > 0.0f && zS) {
            int i13 = this.f8633d;
            this.f8635f.setColor((i13 & 16777215) | (((int) ((((-16777216) & i13) >>> 24) * f10)) << 24));
            canvas.drawRect(i10, 0.0f, width, getHeight(), this.f8635f);
        } else if (this.f8653x != null && b(view, 3)) {
            int intrinsicWidth = this.f8653x.getIntrinsicWidth();
            int right2 = view.getRight();
            float fMax = Math.max(0.0f, Math.min(right2 / this.f8636g.getEdgeSize(), 1.0f));
            this.f8653x.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f8653x.setAlpha((int) (fMax * 255.0f));
            this.f8653x.draw(canvas);
        } else if (this.f8654y != null && b(view, 5)) {
            int intrinsicWidth2 = this.f8654y.getIntrinsicWidth();
            int left2 = view.getLeft();
            float fMax2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f8637h.getEdgeSize(), 1.0f));
            this.f8654y.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.f8654y.setAlpha((int) (fMax2 * 255.0f));
            this.f8654y.draw(canvas);
        }
        return zDrawChild;
    }

    void e(View view) {
        f fVar = (f) view.getLayoutParams();
        if ((fVar.f8667d & 1) == 0) {
            fVar.f8667d = 1;
            List list = this.f8649t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((e) this.f8649t.get(size)).a(view);
                }
            }
            C(view, true);
            B(view);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    void f(View view, float f10) {
        List list = this.f8649t;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((e) this.f8649t.get(size)).d(view, f10);
            }
        }
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f(-1, -1);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    public float getDrawerElevation() {
        if (O) {
            return this.f8631b;
        }
        return 0.0f;
    }

    public int getDrawerLockMode(int i10) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (i10 == 3) {
            int i11 = this.f8643n;
            if (i11 != 3) {
                return i11;
            }
            int i12 = layoutDirection == 0 ? this.f8645p : this.f8646q;
            if (i12 != 3) {
                return i12;
            }
            return 0;
        }
        if (i10 == 5) {
            int i13 = this.f8644o;
            if (i13 != 3) {
                return i13;
            }
            int i14 = layoutDirection == 0 ? this.f8646q : this.f8645p;
            if (i14 != 3) {
                return i14;
            }
            return 0;
        }
        if (i10 == 8388611) {
            int i15 = this.f8645p;
            if (i15 != 3) {
                return i15;
            }
            int i16 = layoutDirection == 0 ? this.f8643n : this.f8644o;
            if (i16 != 3) {
                return i16;
            }
            return 0;
        }
        if (i10 != 8388613) {
            return 0;
        }
        int i17 = this.f8646q;
        if (i17 != 3) {
            return i17;
        }
        int i18 = layoutDirection == 0 ? this.f8644o : this.f8643n;
        if (i18 != 3) {
            return i18;
        }
        return 0;
    }

    @Nullable
    public CharSequence getDrawerTitle(int i10) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i10, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.f8655z;
        }
        if (absoluteGravity == 5) {
            return this.A;
        }
        return null;
    }

    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.f8652w;
    }

    View h(int i10) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i10, ViewCompat.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if ((k(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    View i() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((((f) childAt.getLayoutParams()).f8667d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    public boolean isDrawerOpen(@NonNull View view) {
        if (t(view)) {
            return (((f) view.getLayoutParams()).f8667d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isDrawerVisible(@NonNull View view) {
        if (t(view)) {
            return ((f) view.getLayoutParams()).f8665b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isOpen() {
        return isDrawerOpen(GravityCompat.START);
    }

    View j() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (t(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    int k(View view) {
        return GravityCompat.getAbsoluteGravity(((f) view.getLayoutParams()).f8664a, ViewCompat.getLayoutDirection(this));
    }

    float l(View view) {
        return ((f) view.getLayoutParams()).f8665b;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f8642m = true;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f8642m = true;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.C || this.f8652w == null) {
            return;
        }
        Object obj = this.B;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f8652w.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f8652w.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0031  */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        View viewFindTopChildUnder;
        int actionMasked = motionEvent.getActionMasked();
        boolean zShouldInterceptTouchEvent = this.f8636g.shouldInterceptTouchEvent(motionEvent) | this.f8637h.shouldInterceptTouchEvent(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                c(true);
                this.f8647r = false;
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    c(true);
                    this.f8647r = false;
                }
            } else if (this.f8636g.checkTouchSlop(3)) {
                this.f8638i.c();
                this.f8639j.c();
            }
            z10 = false;
        } else {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.f8650u = x10;
            this.f8651v = y10;
            z10 = this.f8634e > 0.0f && (viewFindTopChildUnder = this.f8636g.findTopChildUnder((int) x10, (int) y10)) != null && s(viewFindTopChildUnder);
            this.f8647r = false;
        }
        return zShouldInterceptTouchEvent || z10 || p() || this.f8647r;
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 != 4 || !q()) {
            return super.onKeyDown(i10, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            return super.onKeyUp(i10, keyEvent);
        }
        View viewJ = j();
        if (viewJ != null && getDrawerLockMode(viewJ) == 0) {
            closeDrawers();
        }
        return viewJ != null;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        WindowInsets rootWindowInsets;
        float f10;
        int i14;
        boolean z11 = true;
        this.f8641l = true;
        int i15 = i12 - i10;
        int childCount = getChildCount();
        int i16 = 0;
        while (i16 < childCount) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (s(childAt)) {
                    int i17 = ((ViewGroup.MarginLayoutParams) fVar).leftMargin;
                    childAt.layout(i17, ((ViewGroup.MarginLayoutParams) fVar).topMargin, childAt.getMeasuredWidth() + i17, ((ViewGroup.MarginLayoutParams) fVar).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b(childAt, 3)) {
                        float f11 = measuredWidth;
                        i14 = (-measuredWidth) + ((int) (fVar.f8665b * f11));
                        f10 = (measuredWidth + i14) / f11;
                    } else {
                        float f12 = measuredWidth;
                        int i18 = i15 - ((int) (fVar.f8665b * f12));
                        f10 = (i15 - i18) / f12;
                        i14 = i18;
                    }
                    boolean z12 = f10 != fVar.f8665b ? z11 : false;
                    int i19 = fVar.f8664a & 112;
                    if (i19 == 16) {
                        int i20 = i13 - i11;
                        int i21 = (i20 - measuredHeight) / 2;
                        int i22 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                        if (i21 < i22) {
                            i21 = i22;
                        } else {
                            int i23 = i21 + measuredHeight;
                            int i24 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                            if (i23 > i20 - i24) {
                                i21 = (i20 - i24) - measuredHeight;
                            }
                        }
                        childAt.layout(i14, i21, measuredWidth + i14, measuredHeight + i21);
                    } else if (i19 != 80) {
                        int i25 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                        childAt.layout(i14, i25, measuredWidth + i14, measuredHeight + i25);
                    } else {
                        int i26 = i13 - i11;
                        childAt.layout(i14, (i26 - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i14, i26 - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
                    }
                    if (z12) {
                        A(childAt, f10);
                    }
                    int i27 = fVar.f8665b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i27) {
                        childAt.setVisibility(i27);
                    }
                }
            }
            i16++;
            z11 = true;
        }
        if (P && (rootWindowInsets = getRootWindowInsets()) != null) {
            z0.c systemGestureInsets = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets).getSystemGestureInsets();
            ViewDragHelper viewDragHelper = this.f8636g;
            viewDragHelper.setEdgeSize(Math.max(viewDragHelper.getDefaultEdgeSize(), systemGestureInsets.f76465a));
            ViewDragHelper viewDragHelper2 = this.f8637h;
            viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets.f76467c));
        }
        this.f8641l = false;
        this.f8642m = false;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode == 0) {
                size = 300;
            }
            if (mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        boolean z10 = this.B != null && ViewCompat.getFitsSystemWindows(this);
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int childCount = getChildCount();
        boolean z11 = false;
        boolean z12 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (z10) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(fVar.f8664a, layoutDirection);
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        WindowInsets windowInsetsReplaceSystemWindowInsets = (WindowInsets) this.B;
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsetsReplaceSystemWindowInsets);
                    } else {
                        WindowInsets windowInsetsReplaceSystemWindowInsets2 = (WindowInsets) this.B;
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) fVar).topMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (s(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) fVar).leftMargin) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) fVar).topMargin) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin, 1073741824));
                } else {
                    if (!t(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i12 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (O) {
                        float elevation = ViewCompat.getElevation(childAt);
                        float f10 = this.f8631b;
                        if (elevation != f10) {
                            ViewCompat.setElevation(childAt, f10);
                        }
                    }
                    int iK = k(childAt) & 7;
                    boolean z13 = iK == 3;
                    if ((z13 && z11) || (!z13 && z12)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + n(iK) + " but this DrawerLayout already has a drawer view along that edge");
                    }
                    if (z13) {
                        z11 = true;
                    } else {
                        z12 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i10, this.f8632c + ((ViewGroup.MarginLayoutParams) fVar).leftMargin + ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((ViewGroup.MarginLayoutParams) fVar).width), ViewGroup.getChildMeasureSpec(i11, ((ViewGroup.MarginLayoutParams) fVar).topMargin + ((ViewGroup.MarginLayoutParams) fVar).bottomMargin, ((ViewGroup.MarginLayoutParams) fVar).height));
                }
            }
        }
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View viewH;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i10 = savedState.openDrawerGravity;
        if (i10 != 0 && (viewH = h(i10)) != null) {
            openDrawer(viewH);
        }
        int i11 = savedState.lockModeLeft;
        if (i11 != 3) {
            setDrawerLockMode(i11, 3);
        }
        int i12 = savedState.lockModeRight;
        if (i12 != 3) {
            setDrawerLockMode(i12, 5);
        }
        int i13 = savedState.lockModeStart;
        if (i13 != 3) {
            setDrawerLockMode(i13, GravityCompat.START);
        }
        int i14 = savedState.lockModeEnd;
        if (i14 != 3) {
            setDrawerLockMode(i14, GravityCompat.END);
        }
    }

    @Override
    public void onRtlPropertiesChanged(int i10) {
        z();
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            f fVar = (f) getChildAt(i10).getLayoutParams();
            int i11 = fVar.f8667d;
            boolean z10 = i11 == 1;
            boolean z11 = i11 == 2;
            if (z10 || z11) {
                savedState.openDrawerGravity = fVar.f8664a;
                break;
            }
        }
        savedState.lockModeLeft = this.f8643n;
        savedState.lockModeRight = this.f8644o;
        savedState.lockModeStart = this.f8645p;
        savedState.lockModeEnd = this.f8646q;
        return savedState;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        View viewI;
        this.f8636g.processTouchEvent(motionEvent);
        this.f8637h.processTouchEvent(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.f8650u = x10;
            this.f8651v = y10;
            this.f8647r = false;
        } else if (action == 1) {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            View viewFindTopChildUnder = this.f8636g.findTopChildUnder((int) x11, (int) y11);
            if (viewFindTopChildUnder != null && s(viewFindTopChildUnder)) {
                float f10 = x11 - this.f8650u;
                float f11 = y11 - this.f8651v;
                int touchSlop = this.f8636g.getTouchSlop();
                z10 = (f10 * f10) + (f11 * f11) >= ((float) (touchSlop * touchSlop)) || (viewI = i()) == null || getDrawerLockMode(viewI) == 2;
            }
            c(z10);
        } else if (action == 3) {
            c(true);
            this.f8647r = false;
        }
        return true;
    }

    public void open() {
        openDrawer(GravityCompat.START);
    }

    public void openDrawer(@NonNull View view) {
        openDrawer(view, true);
    }

    public void removeDrawerListener(@NonNull e eVar) {
        List list;
        if (eVar == null || (list = this.f8649t) == null) {
            return;
        }
        list.remove(eVar);
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        if (z10) {
            c(true);
        }
    }

    @Override
    public void requestLayout() {
        if (this.f8641l) {
            return;
        }
        super.requestLayout();
    }

    boolean s(View view) {
        return ((f) view.getLayoutParams()).f8664a == 0;
    }

    public void setChildInsets(Object obj, boolean z10) {
        this.B = obj;
        this.C = z10;
        setWillNotDraw(!z10 && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f10) {
        this.f8631b = f10;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (t(childAt)) {
                ViewCompat.setElevation(childAt, this.f8631b);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(e eVar) {
        e eVar2 = this.f8648s;
        if (eVar2 != null) {
            removeDrawerListener(eVar2);
        }
        if (eVar != null) {
            addDrawerListener(eVar);
        }
        this.f8648s = eVar;
    }

    public void setDrawerLockMode(int i10) {
        setDrawerLockMode(i10, 3);
        setDrawerLockMode(i10, 5);
    }

    public void setDrawerShadow(Drawable drawable, int i10) {
        if (O) {
            return;
        }
        if ((i10 & GravityCompat.START) == 8388611) {
            this.D = drawable;
        } else if ((i10 & GravityCompat.END) == 8388613) {
            this.E = drawable;
        } else if ((i10 & 3) == 3) {
            this.F = drawable;
        } else if ((i10 & 5) != 5) {
            return;
        } else {
            this.G = drawable;
        }
        z();
        invalidate();
    }

    public void setDrawerTitle(int i10, @Nullable CharSequence charSequence) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i10, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.f8655z = charSequence;
        } else if (absoluteGravity == 5) {
            this.A = charSequence;
        }
    }

    public void setScrimColor(int i10) {
        this.f8633d = i10;
        invalidate();
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.f8652w = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i10) {
        this.f8652w = new ColorDrawable(i10);
        invalidate();
    }

    boolean t(View view) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(((f) view.getLayoutParams()).f8664a, ViewCompat.getLayoutDirection(view));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    void w(View view, float f10) {
        float fL = l(view);
        float width = view.getWidth();
        int i10 = ((int) (width * f10)) - ((int) (fL * width));
        if (!b(view, 3)) {
            i10 = -i10;
        }
        view.offsetLeftAndRight(i10);
        A(view, f10);
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.drawerLayoutStyle);
    }

    public void closeDrawer(@NonNull View view, boolean z10) {
        if (!t(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        f fVar = (f) view.getLayoutParams();
        if (this.f8642m) {
            fVar.f8665b = 0.0f;
            fVar.f8667d = 0;
        } else if (z10) {
            fVar.f8667d |= 4;
            if (b(view, 3)) {
                this.f8636g.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
            } else {
                this.f8637h.smoothSlideViewTo(view, getWidth(), view.getTop());
            }
        } else {
            w(view, 0.0f);
            D(0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    public void openDrawer(@NonNull View view, boolean z10) {
        if (!t(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        f fVar = (f) view.getLayoutParams();
        if (this.f8642m) {
            fVar.f8665b = 1.0f;
            fVar.f8667d = 1;
            C(view, true);
            B(view);
        } else if (z10) {
            fVar.f8667d |= 2;
            if (b(view, 3)) {
                this.f8636g.smoothSlideViewTo(view, 0, view.getTop());
            } else {
                this.f8637h.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            w(view, 1.0f);
            D(0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f8630a = new d();
        this.f8633d = -1728053248;
        this.f8635f = new Paint();
        this.f8642m = true;
        this.f8643n = 3;
        this.f8644o = 3;
        this.f8645p = 3;
        this.f8646q = 3;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.K = new a();
        setDescendantFocusability(262144);
        float f10 = getResources().getDisplayMetrics().density;
        this.f8632c = (int) ((64.0f * f10) + 0.5f);
        float f11 = f10 * 400.0f;
        ViewDragCallback viewDragCallback = new ViewDragCallback(3);
        this.f8638i = viewDragCallback;
        ViewDragCallback viewDragCallback2 = new ViewDragCallback(5);
        this.f8639j = viewDragCallback2;
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, 1.0f, viewDragCallback);
        this.f8636g = viewDragHelperCreate;
        viewDragHelperCreate.setEdgeTrackingEnabled(1);
        viewDragHelperCreate.setMinVelocity(f11);
        viewDragCallback.d(viewDragHelperCreate);
        ViewDragHelper viewDragHelperCreate2 = ViewDragHelper.create(this, 1.0f, viewDragCallback2);
        this.f8637h = viewDragHelperCreate2;
        viewDragHelperCreate2.setEdgeTrackingEnabled(2);
        viewDragHelperCreate2.setMinVelocity(f11);
        viewDragCallback2.d(viewDragHelperCreate2);
        setFocusableInTouchMode(true);
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewCompat.setAccessibilityDelegate(this, new c());
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.getFitsSystemWindows(this)) {
            setOnApplyWindowInsetsListener(new b());
            setSystemUiVisibility(1280);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(L);
            try {
                this.f8652w = typedArrayObtainStyledAttributes.getDrawable(0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.DrawerLayout, i10, 0);
        try {
            if (typedArrayObtainStyledAttributes2.hasValue(R$styleable.DrawerLayout_elevation)) {
                this.f8631b = typedArrayObtainStyledAttributes2.getDimension(R$styleable.DrawerLayout_elevation, 0.0f);
            } else {
                this.f8631b = getResources().getDimension(R$dimen.def_drawer_elevation);
            }
            typedArrayObtainStyledAttributes2.recycle();
            this.H = new ArrayList();
        } catch (Throwable th3) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th3;
        }
    }

    public void setDrawerLockMode(int i10, int i11) {
        View viewH;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i11, ViewCompat.getLayoutDirection(this));
        if (i11 == 3) {
            this.f8643n = i10;
        } else if (i11 == 5) {
            this.f8644o = i10;
        } else if (i11 == 8388611) {
            this.f8645p = i10;
        } else if (i11 == 8388613) {
            this.f8646q = i10;
        }
        if (i10 != 0) {
            (absoluteGravity == 3 ? this.f8636g : this.f8637h).cancel();
        }
        if (i10 != 1) {
            if (i10 == 2 && (viewH = h(absoluteGravity)) != null) {
                openDrawer(viewH);
                return;
            }
            return;
        }
        View viewH2 = h(absoluteGravity);
        if (viewH2 != null) {
            closeDrawer(viewH2);
        }
    }

    public void setStatusBarBackground(int i10) {
        this.f8652w = i10 != 0 ? androidx.core.content.b.getDrawable(getContext(), i10) : null;
        invalidate();
    }

    public boolean isDrawerVisible(int i10) {
        View viewH = h(i10);
        if (viewH != null) {
            return isDrawerVisible(viewH);
        }
        return false;
    }

    public static class f extends ViewGroup.MarginLayoutParams {

        public int f8664a;

        float f8665b;

        boolean f8666c;

        int f8667d;

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f8664a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.M);
            this.f8664a = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public f(int i10, int i11) {
            super(i10, i11);
            this.f8664a = 0;
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.f8664a = 0;
            this.f8664a = fVar.f8664a;
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f8664a = 0;
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f8664a = 0;
        }
    }

    public boolean isDrawerOpen(int i10) {
        View viewH = h(i10);
        if (viewH != null) {
            return isDrawerOpen(viewH);
        }
        return false;
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        int openDrawerGravity;

        class a implements Parcelable.ClassLoaderCreator {
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

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.openDrawerGravity = 0;
            this.openDrawerGravity = parcel.readInt();
            this.lockModeLeft = parcel.readInt();
            this.lockModeRight = parcel.readInt();
            this.lockModeStart = parcel.readInt();
            this.lockModeEnd = parcel.readInt();
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.openDrawerGravity);
            parcel.writeInt(this.lockModeLeft);
            parcel.writeInt(this.lockModeRight);
            parcel.writeInt(this.lockModeStart);
            parcel.writeInt(this.lockModeEnd);
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
            this.openDrawerGravity = 0;
        }
    }

    public void setDrawerShadow(int i10, int i11) {
        setDrawerShadow(androidx.core.content.b.getDrawable(getContext(), i10), i11);
    }

    public int getDrawerLockMode(@NonNull View view) {
        if (t(view)) {
            return getDrawerLockMode(((f) view.getLayoutParams()).f8664a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public void setDrawerLockMode(int i10, @NonNull View view) {
        if (t(view)) {
            setDrawerLockMode(i10, ((f) view.getLayoutParams()).f8664a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void closeDrawer(int i10) {
        closeDrawer(i10, true);
    }

    public void closeDrawer(int i10, boolean z10) {
        View viewH = h(i10);
        if (viewH != null) {
            closeDrawer(viewH, z10);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + n(i10));
    }

    public void openDrawer(int i10) {
        openDrawer(i10, true);
    }

    public static abstract class g implements e {
        @Override
        public void a(View view) {
        }

        @Override
        public void b(View view) {
        }

        @Override
        public void c(int i10) {
        }

        @Override
        public void d(View view, float f10) {
        }
    }

    public void openDrawer(int i10, boolean z10) {
        View viewH = h(i10);
        if (viewH != null) {
            openDrawer(viewH, z10);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + n(i10));
    }
}
