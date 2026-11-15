package androidx.slidingpanelayout.widget;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import androidx.transition.s;
import androidx.window.layout.r;
import androidx.window.layout.w;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class SlidingPaneLayout extends ViewGroup {
    public static final int LOCK_MODE_LOCKED = 3;
    public static final int LOCK_MODE_LOCKED_CLOSED = 2;
    public static final int LOCK_MODE_LOCKED_OPEN = 1;
    public static final int LOCK_MODE_UNLOCKED = 0;

    private static boolean f14518y;

    private int f14519a;

    private int f14520b;

    private Drawable f14521c;

    private Drawable f14522d;

    private boolean f14523e;

    View f14524f;

    float f14525g;

    private float f14526h;

    int f14527i;

    boolean f14528j;

    private int f14529k;

    private float f14530l;

    private float f14531m;

    private final List f14532n;

    private e f14533o;

    final ViewDragHelper f14534p;

    boolean f14535q;

    private boolean f14536r;

    private final Rect f14537s;

    final ArrayList f14538t;

    private int f14539u;

    r f14540v;

    private FoldingFeatureObserver.a f14541w;

    private FoldingFeatureObserver f14542x;

    private class DisableLayerRunnable implements Runnable {
        final View mChildView;

        DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        @Override
        public void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                this.mChildView.setLayerType(0, null);
                SlidingPaneLayout.this.h(this.mChildView);
            }
            SlidingPaneLayout.this.f14538t.remove(this);
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        boolean f14543a;

        int f14544b;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f14543a ? 1 : 0);
            parcel.writeInt(this.f14544b);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f14543a = parcel.readInt() != 0;
            this.f14544b = parcel.readInt();
        }
    }

    class a implements FoldingFeatureObserver.a {
        a() {
        }

        @Override
        public void a(r rVar) {
            SlidingPaneLayout.this.f14540v = rVar;
            androidx.transition.b bVar = new androidx.transition.b();
            bVar.X(300L);
            bVar.Z(PathInterpolatorCompat.create(0.2f, 0.0f, 0.0f, 1.0f));
            s.a(SlidingPaneLayout.this, bVar);
            SlidingPaneLayout.this.requestLayout();
        }
    }

    class b extends AccessibilityDelegateCompat {

        private final Rect f14546a = new Rect();

        b() {
        }

        private void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f14546a;
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }

        public boolean b(View view) {
            return SlidingPaneLayout.this.i(view);
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.slidingpanelayout.widget.SlidingPaneLayout");
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
            a(accessibilityNodeInfoCompat, accessibilityNodeInfoCompatObtain);
            accessibilityNodeInfoCompatObtain.recycle();
            accessibilityNodeInfoCompat.setClassName("androidx.slidingpanelayout.widget.SlidingPaneLayout");
            accessibilityNodeInfoCompat.setSource(view);
            Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i10);
                if (!b(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.setImportantForAccessibility(childAt, 1);
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (b(view)) {
                return false;
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    private class c extends ViewDragHelper.b {
        c() {
        }

        private boolean a() {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.f14528j || slidingPaneLayout.getLockMode() == 3) {
                return false;
            }
            if (SlidingPaneLayout.this.isOpen() && SlidingPaneLayout.this.getLockMode() == 1) {
                return false;
            }
            return SlidingPaneLayout.this.isOpen() || SlidingPaneLayout.this.getLockMode() != 2;
        }

        @Override
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            d dVar = (d) SlidingPaneLayout.this.f14524f.getLayoutParams();
            if (SlidingPaneLayout.this.j()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) dVar).rightMargin) + SlidingPaneLayout.this.f14524f.getWidth());
                return Math.max(Math.min(i10, width), width - SlidingPaneLayout.this.f14527i);
            }
            int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin;
            return Math.min(Math.max(i10, paddingLeft), SlidingPaneLayout.this.f14527i + paddingLeft);
        }

        @Override
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        @Override
        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.f14527i;
        }

        @Override
        public void onEdgeDragStarted(int i10, int i11) {
            if (a()) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                slidingPaneLayout.f14534p.captureChildView(slidingPaneLayout.f14524f, i11);
            }
        }

        @Override
        public void onEdgeTouched(int i10, int i11) {
            if (a()) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                slidingPaneLayout.f14534p.captureChildView(slidingPaneLayout.f14524f, i11);
            }
        }

        @Override
        public void onViewCaptured(View view, int i10) {
            SlidingPaneLayout.this.o();
        }

        @Override
        public void onViewDragStateChanged(int i10) {
            if (SlidingPaneLayout.this.f14534p.getViewDragState() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.f14525g != 1.0f) {
                    slidingPaneLayout.c(slidingPaneLayout.f14524f);
                    SlidingPaneLayout.this.f14535q = true;
                } else {
                    slidingPaneLayout.r(slidingPaneLayout.f14524f);
                    SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                    slidingPaneLayout2.b(slidingPaneLayout2.f14524f);
                    SlidingPaneLayout.this.f14535q = false;
                }
            }
        }

        @Override
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            SlidingPaneLayout.this.l(i10);
            SlidingPaneLayout.this.invalidate();
        }

        @Override
        public void onViewReleased(View view, float f10, float f11) {
            int paddingLeft;
            d dVar = (d) view.getLayoutParams();
            if (SlidingPaneLayout.this.j()) {
                int paddingRight = SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) dVar).rightMargin;
                if (f10 < 0.0f || (f10 == 0.0f && SlidingPaneLayout.this.f14525g > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.f14527i;
                }
                paddingLeft = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.f14524f.getWidth();
            } else {
                paddingLeft = ((ViewGroup.MarginLayoutParams) dVar).leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f10 > 0.0f || (f10 == 0.0f && SlidingPaneLayout.this.f14525g > 0.5f)) {
                    paddingLeft += SlidingPaneLayout.this.f14527i;
                }
            }
            SlidingPaneLayout.this.f14534p.settleCapturedViewAt(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        @Override
        public boolean tryCaptureView(View view, int i10) {
            if (a()) {
                return ((d) view.getLayoutParams()).f14551b;
            }
            return false;
        }
    }

    public interface e {
        void a(View view);

        void b(View view);

        void c(View view, float f10);
    }

    private static class f extends FrameLayout {
        f(View view) {
            super(view.getContext());
            addView(view);
        }

        @Override
        public boolean onGenericMotionEvent(MotionEvent motionEvent) {
            return true;
        }

        @Override
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return true;
        }
    }

    static {
        f14518y = Build.VERSION.SDK_INT >= 29;
    }

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean a(int i10) {
        if (!this.f14523e) {
            this.f14535q = false;
        }
        if (!this.f14536r && !p(1.0f, i10)) {
            return false;
        }
        this.f14535q = false;
        return true;
    }

    private static Activity e(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    private static Rect f(r rVar, View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i10 = iArr[0];
        Rect rect = new Rect(i10, iArr[1], view.getWidth() + i10, iArr[1] + view.getWidth());
        Rect rect2 = new Rect(rVar.getBounds());
        boolean zIntersect = rect2.intersect(rect);
        if ((rect2.width() == 0 && rect2.height() == 0) || !zIntersect) {
            return null;
        }
        rect2.offset(-iArr[0], -iArr[1]);
        return rect2;
    }

    private static int g(View view) {
        return view instanceof f ? ViewCompat.getMinimumWidth(((f) view).getChildAt(0)) : ViewCompat.getMinimumWidth(view);
    }

    private z0.c getSystemGestureInsets() {
        WindowInsetsCompat rootWindowInsets;
        if (!f14518y || (rootWindowInsets = ViewCompat.getRootWindowInsets(this)) == null) {
            return null;
        }
        return rootWindowInsets.getSystemGestureInsets();
    }

    private static int k(View view, int i10, int i11) {
        d dVar = (d) view.getLayoutParams();
        return (((ViewGroup.MarginLayoutParams) dVar).width != 0 || dVar.f14550a <= 0.0f) ? View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824) : ViewGroup.getChildMeasureSpec(i10, i11, ((ViewGroup.MarginLayoutParams) dVar).height);
    }

    private boolean m(int i10) {
        if (!this.f14523e) {
            this.f14535q = true;
        }
        if (!this.f14536r && !p(0.0f, i10)) {
            return false;
        }
        this.f14535q = true;
        return true;
    }

    private void n(float f10) {
        boolean zJ = j();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != this.f14524f) {
                float f11 = 1.0f - this.f14526h;
                int i11 = this.f14529k;
                this.f14526h = f10;
                int i12 = ((int) (f11 * i11)) - ((int) ((1.0f - f10) * i11));
                if (zJ) {
                    i12 = -i12;
                }
                childAt.offsetLeftAndRight(i12);
            }
        }
    }

    private ArrayList q() {
        Rect rectF;
        r rVar = this.f14540v;
        if (rVar == null || !rVar.isSeparating() || this.f14540v.getBounds().left == 0 || this.f14540v.getBounds().top != 0 || (rectF = f(this.f14540v, this)) == null) {
            return null;
        }
        Rect rect = new Rect(getPaddingLeft(), getPaddingTop(), Math.max(getPaddingLeft(), rectF.left), getHeight() - getPaddingBottom());
        int width = getWidth() - getPaddingRight();
        return new ArrayList(Arrays.asList(rect, new Rect(Math.min(width, rectF.right), getPaddingTop(), width, getHeight() - getPaddingBottom())));
    }

    private static boolean s(View view) {
        return view.isOpaque();
    }

    private void setFoldingFeatureObserver(FoldingFeatureObserver foldingFeatureObserver) {
        this.f14542x = foldingFeatureObserver;
        foldingFeatureObserver.f(this.f14541w);
    }

    public void addPanelSlideListener(@NonNull e eVar) {
        this.f14532n.add(eVar);
    }

    @Override
    public void addView(@NonNull View view, int i10, @Nullable ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() == 1) {
            super.addView(new f(view), i10, layoutParams);
        } else {
            super.addView(view, i10, layoutParams);
        }
    }

    void b(View view) {
        Iterator it = this.f14532n.iterator();
        while (it.hasNext()) {
            ((e) it.next()).b(view);
        }
        sendAccessibilityEvent(32);
    }

    void c(View view) {
        Iterator it = this.f14532n.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a(view);
        }
        sendAccessibilityEvent(32);
    }

    @Deprecated
    public boolean canSlide() {
        return this.f14523e;
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof d) && super.checkLayoutParams(layoutParams);
    }

    public void close() {
        closePane();
    }

    public boolean closePane() {
        return a(0);
    }

    @Override
    public void computeScroll() {
        if (this.f14534p.continueSettling(true)) {
            if (this.f14523e) {
                ViewCompat.postInvalidateOnAnimation(this);
            } else {
                this.f14534p.abort();
            }
        }
    }

    void d(View view) {
        Iterator it = this.f14532n.iterator();
        while (it.hasNext()) {
            ((e) it.next()).c(view, this.f14525g);
        }
    }

    @Override
    public void draw(Canvas canvas) {
        int i10;
        int right;
        super.draw(canvas);
        Drawable drawable = j() ? this.f14522d : this.f14521c;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (j()) {
            right = childAt.getRight();
            i10 = intrinsicWidth + right;
        } else {
            int left = childAt.getLeft();
            int i11 = left - intrinsicWidth;
            i10 = left;
            right = i11;
        }
        drawable.setBounds(right, top, i10, bottom);
        drawable.draw(canvas);
    }

    @Override
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        if (j() ^ isOpen()) {
            this.f14534p.setEdgeTrackingEnabled(1);
            z0.c systemGestureInsets = getSystemGestureInsets();
            if (systemGestureInsets != null) {
                ViewDragHelper viewDragHelper = this.f14534p;
                viewDragHelper.setEdgeSize(Math.max(viewDragHelper.getDefaultEdgeSize(), systemGestureInsets.f76465a));
            }
        } else {
            this.f14534p.setEdgeTrackingEnabled(2);
            z0.c systemGestureInsets2 = getSystemGestureInsets();
            if (systemGestureInsets2 != null) {
                ViewDragHelper viewDragHelper2 = this.f14534p;
                viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets2.f76467c));
            }
        }
        d dVar = (d) view.getLayoutParams();
        int iSave = canvas.save();
        if (this.f14523e && !dVar.f14551b && this.f14524f != null) {
            canvas.getClipBounds(this.f14537s);
            if (j()) {
                Rect rect = this.f14537s;
                rect.left = Math.max(rect.left, this.f14524f.getRight());
            } else {
                Rect rect2 = this.f14537s;
                rect2.right = Math.min(rect2.right, this.f14524f.getLeft());
            }
            canvas.clipRect(this.f14537s);
        }
        boolean zDrawChild = super.drawChild(canvas, view, j10);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new d();
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new d((ViewGroup.MarginLayoutParams) layoutParams) : new d(layoutParams);
    }

    @Deprecated
    public int getCoveredFadeColor() {
        return this.f14520b;
    }

    public final int getLockMode() {
        return this.f14539u;
    }

    public int getParallaxDistance() {
        return this.f14529k;
    }

    @Deprecated
    public int getSliderFadeColor() {
        return this.f14519a;
    }

    void h(View view) {
        ViewCompat.setLayerPaint(view, ((d) view.getLayoutParams()).f14553d);
    }

    boolean i(View view) {
        if (view == null) {
            return false;
        }
        return this.f14523e && ((d) view.getLayoutParams()).f14552c && this.f14525g > 0.0f;
    }

    public boolean isOpen() {
        return !this.f14523e || this.f14525g == 0.0f;
    }

    public boolean isSlideable() {
        return this.f14523e;
    }

    boolean j() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    void l(int i10) {
        if (this.f14524f == null) {
            this.f14525g = 0.0f;
            return;
        }
        boolean zJ = j();
        d dVar = (d) this.f14524f.getLayoutParams();
        int width = this.f14524f.getWidth();
        if (zJ) {
            i10 = (getWidth() - i10) - width;
        }
        float paddingRight = (i10 - ((zJ ? getPaddingRight() : getPaddingLeft()) + (zJ ? ((ViewGroup.MarginLayoutParams) dVar).rightMargin : ((ViewGroup.MarginLayoutParams) dVar).leftMargin))) / this.f14527i;
        this.f14525g = paddingRight;
        if (this.f14529k != 0) {
            n(paddingRight);
        }
        d(this.f14524f);
    }

    void o() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    @Override
    protected void onAttachedToWindow() {
        Activity activityE;
        super.onAttachedToWindow();
        this.f14536r = true;
        if (this.f14542x == null || (activityE = e(getContext())) == null) {
            return;
        }
        this.f14542x.e(activityE);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f14536r = true;
        FoldingFeatureObserver foldingFeatureObserver = this.f14542x;
        if (foldingFeatureObserver != null) {
            foldingFeatureObserver.g();
        }
        int size = this.f14538t.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((DisableLayerRunnable) this.f14538t.get(i10)).run();
        }
        this.f14538t.clear();
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.f14523e && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.f14535q = this.f14534p.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.f14523e || (this.f14528j && actionMasked != 0)) {
            this.f14534p.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.f14534p.cancel();
            return false;
        }
        if (actionMasked == 0) {
            this.f14528j = false;
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.f14530l = x10;
            this.f14531m = y10;
            if (this.f14534p.isViewUnder(this.f14524f, (int) x10, (int) y10) && i(this.f14524f)) {
                z10 = true;
            }
            return this.f14534p.shouldInterceptTouchEvent(motionEvent) || z10;
        }
        if (actionMasked == 2) {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            float fAbs = Math.abs(x11 - this.f14530l);
            float fAbs2 = Math.abs(y11 - this.f14531m);
            if (fAbs > this.f14534p.getTouchSlop() && fAbs2 > fAbs) {
                this.f14534p.cancel();
                this.f14528j = true;
                return false;
            }
        }
        z10 = false;
        if (this.f14534p.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean zJ = j();
        int i19 = i12 - i10;
        int paddingRight = zJ ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = zJ ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f14536r) {
            this.f14525g = (this.f14523e && this.f14535q) ? 0.0f : 1.0f;
        }
        int i20 = paddingRight;
        int i21 = 0;
        while (i21 < childCount) {
            View childAt = getChildAt(i21);
            if (childAt.getVisibility() == 8) {
                i14 = i20;
            } else {
                d dVar = (d) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (dVar.f14551b) {
                    int i22 = i19 - paddingLeft;
                    int iMin = (Math.min(paddingRight, i22) - i20) - (((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    this.f14527i = iMin;
                    int i23 = zJ ? ((ViewGroup.MarginLayoutParams) dVar).rightMargin : ((ViewGroup.MarginLayoutParams) dVar).leftMargin;
                    dVar.f14552c = ((i20 + i23) + iMin) + (measuredWidth / 2) > i22;
                    int i24 = (int) (iMin * this.f14525g);
                    this.f14525g = i24 / iMin;
                    i14 = i20 + i23 + i24;
                    i15 = 0;
                } else if (!this.f14523e || (i16 = this.f14529k) == 0) {
                    i14 = paddingRight;
                    i15 = 0;
                } else {
                    i15 = (int) ((1.0f - this.f14525g) * i16);
                    i14 = paddingRight;
                }
                if (zJ) {
                    i18 = (i19 - i14) + i15;
                    i17 = i18 - measuredWidth;
                } else {
                    i17 = i14 - i15;
                    i18 = i17 + measuredWidth;
                }
                childAt.layout(i17, paddingTop, i18, childAt.getMeasuredHeight() + paddingTop);
                r rVar = this.f14540v;
                paddingRight += childAt.getWidth() + Math.abs((rVar != null && rVar.getOrientation() == r.b.f15027c && this.f14540v.isSeparating()) ? this.f14540v.getBounds().width() : 0);
            }
            i21++;
            i20 = i14;
        }
        if (this.f14536r) {
            if (this.f14523e && this.f14529k != 0) {
                n(this.f14525g);
            }
            r(this.f14524f);
        }
        this.f14536r = false;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0086 A[PHI: r15
      0x0086: PHI (r15v5 float) = (r15v1 float), (r15v6 float) binds: [B:19:0x007d, B:21:0x0082] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:25:0x0096 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0098  */
    /* JADX WARN: Code duplicated, block: B:27:0x009a  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:35:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ea  */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v12 */
    @Override
    protected void onMeasure(int i10, int i11) {
        int paddingTop;
        int iMin;
        int i12;
        int iMax;
        int iMakeMeasureSpec;
        int iMax2;
        int i13;
        int iMakeMeasureSpec2;
        int measuredHeight;
        boolean z10;
        int i14;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        ?? r10 = 0;
        if (mode2 != Integer.MIN_VALUE) {
            iMin = mode2 != 1073741824 ? 0 : (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = iMin;
        } else {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            iMin = 0;
        }
        int iMax3 = Math.max((size - getPaddingLeft()) - getPaddingRight(), 0);
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.f14524f = null;
        int i15 = 0;
        boolean z11 = false;
        int i16 = iMax3;
        float f10 = 0.0f;
        while (true) {
            i12 = 8;
            if (i15 >= childCount) {
                break;
            }
            View childAt = getChildAt(i15);
            d dVar = (d) childAt.getLayoutParams();
            int i17 = size;
            if (childAt.getVisibility() == 8) {
                dVar.f14552c = r10;
            } else {
                float f11 = dVar.f14550a;
                if (f11 > 0.0f) {
                    f10 += f11;
                    if (((ViewGroup.MarginLayoutParams) dVar).width != 0) {
                        iMax2 = Math.max(iMax3 - (((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin), (int) r10);
                        i13 = ((ViewGroup.MarginLayoutParams) dVar).width;
                        if (i13 == -2) {
                            if (mode == 0) {
                                i14 = mode;
                            } else {
                                i14 = Integer.MIN_VALUE;
                            }
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, i14);
                        } else if (i13 == -1) {
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, mode);
                        } else {
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                        }
                        childAt.measure(iMakeMeasureSpec2, ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) dVar).height));
                        int measuredWidth = childAt.getMeasuredWidth();
                        measuredHeight = childAt.getMeasuredHeight();
                        if (measuredHeight > iMin) {
                            if (mode2 == Integer.MIN_VALUE) {
                                iMin = Math.min(measuredHeight, paddingTop);
                            } else if (mode2 == 0) {
                                iMin = measuredHeight;
                            }
                        }
                        i16 -= measuredWidth;
                        if (i15 != 0) {
                            if (i16 < 0) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            dVar.f14551b = z10;
                            z11 |= z10;
                            if (z10) {
                                this.f14524f = childAt;
                            }
                        }
                    }
                } else {
                    iMax2 = Math.max(iMax3 - (((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin), (int) r10);
                    i13 = ((ViewGroup.MarginLayoutParams) dVar).width;
                    if (i13 == -2) {
                        if (mode == 0) {
                            i14 = mode;
                        } else {
                            i14 = Integer.MIN_VALUE;
                        }
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, i14);
                    } else if (i13 == -1) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, mode);
                    } else {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                    }
                    childAt.measure(iMakeMeasureSpec2, ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) dVar).height));
                    int measuredWidth2 = childAt.getMeasuredWidth();
                    measuredHeight = childAt.getMeasuredHeight();
                    if (measuredHeight > iMin) {
                        if (mode2 == Integer.MIN_VALUE) {
                            iMin = Math.min(measuredHeight, paddingTop);
                        } else if (mode2 == 0) {
                            iMin = measuredHeight;
                        }
                    }
                    i16 -= measuredWidth2;
                    if (i15 != 0) {
                        if (i16 < 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        dVar.f14551b = z10;
                        z11 |= z10;
                        if (z10) {
                            this.f14524f = childAt;
                        }
                    }
                }
            }
            i15++;
            size = i17;
            r10 = 0;
        }
        int i18 = size;
        int i19 = i16;
        if (z11 || f10 > 0.0f) {
            int i20 = 0;
            while (i20 < childCount) {
                View childAt2 = getChildAt(i20);
                if (childAt2.getVisibility() != i12) {
                    d dVar2 = (d) childAt2.getLayoutParams();
                    int measuredWidth3 = (((ViewGroup.MarginLayoutParams) dVar2).width != 0 || dVar2.f14550a <= 0.0f) ? childAt2.getMeasuredWidth() : 0;
                    if (z11) {
                        iMax = iMax3 - (((ViewGroup.MarginLayoutParams) dVar2).leftMargin + ((ViewGroup.MarginLayoutParams) dVar2).rightMargin);
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    } else if (dVar2.f14550a > 0.0f) {
                        iMax = measuredWidth3 + ((int) ((dVar2.f14550a * Math.max(0, i19)) / f10));
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    } else {
                        iMax = measuredWidth3;
                        iMakeMeasureSpec = 0;
                    }
                    int iK = k(childAt2, i11, getPaddingTop() + getPaddingBottom());
                    if (measuredWidth3 != iMax) {
                        childAt2.measure(iMakeMeasureSpec, iK);
                        int measuredHeight2 = childAt2.getMeasuredHeight();
                        if (measuredHeight2 > iMin) {
                            if (mode2 == Integer.MIN_VALUE) {
                                measuredHeight2 = Math.min(measuredHeight2, paddingTop);
                            } else if (mode2 == 0) {
                            }
                            iMin = measuredHeight2;
                        }
                    }
                }
                i20++;
                i12 = 8;
            }
        }
        ArrayList arrayListQ = q();
        if (arrayListQ != null && !z11) {
            for (int i21 = 0; i21 < childCount; i21++) {
                View childAt3 = getChildAt(i21);
                if (childAt3.getVisibility() != 8) {
                    Rect rect = (Rect) arrayListQ.get(i21);
                    d dVar3 = (d) childAt3.getLayoutParams();
                    int i22 = ((ViewGroup.MarginLayoutParams) dVar3).leftMargin + ((ViewGroup.MarginLayoutParams) dVar3).rightMargin;
                    int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(childAt3.getMeasuredHeight(), 1073741824);
                    childAt3.measure(View.MeasureSpec.makeMeasureSpec(rect.width(), Integer.MIN_VALUE), iMakeMeasureSpec3);
                    if ((childAt3.getMeasuredWidthAndState() & 16777216) == 1 || (g(childAt3) != 0 && rect.width() < g(childAt3))) {
                        childAt3.measure(View.MeasureSpec.makeMeasureSpec(iMax3 - i22, 1073741824), iMakeMeasureSpec3);
                        if (i21 != 0) {
                            dVar3.f14551b = true;
                            this.f14524f = childAt3;
                            z11 = true;
                        }
                    } else {
                        childAt3.measure(View.MeasureSpec.makeMeasureSpec(rect.width(), 1073741824), iMakeMeasureSpec3);
                    }
                }
            }
        }
        setMeasuredDimension(i18, iMin + getPaddingTop() + getPaddingBottom());
        this.f14523e = z11;
        if (this.f14534p.getViewDragState() == 0 || z11) {
            return;
        }
        this.f14534p.abort();
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f14543a) {
            openPane();
        } else {
            closePane();
        }
        this.f14535q = savedState.f14543a;
        setLockMode(savedState.f14544b);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f14543a = isSlideable() ? isOpen() : this.f14535q;
        savedState.f14544b = this.f14539u;
        return savedState;
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12) {
            this.f14536r = true;
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f14523e) {
            return super.onTouchEvent(motionEvent);
        }
        this.f14534p.processTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.f14530l = x10;
            this.f14531m = y10;
        } else if (actionMasked == 1 && i(this.f14524f)) {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            float f10 = x11 - this.f14530l;
            float f11 = y11 - this.f14531m;
            int touchSlop = this.f14534p.getTouchSlop();
            if ((f10 * f10) + (f11 * f11) < touchSlop * touchSlop && this.f14534p.isViewUnder(this.f14524f, (int) x11, (int) y11)) {
                a(0);
            }
        }
        return true;
    }

    public void open() {
        openPane();
    }

    public boolean openPane() {
        return m(0);
    }

    boolean p(float f10, int i10) {
        int paddingLeft;
        if (!this.f14523e) {
            return false;
        }
        boolean zJ = j();
        d dVar = (d) this.f14524f.getLayoutParams();
        if (zJ) {
            paddingLeft = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) dVar).rightMargin) + (f10 * this.f14527i)) + this.f14524f.getWidth()));
        } else {
            paddingLeft = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + (f10 * this.f14527i));
        }
        ViewDragHelper viewDragHelper = this.f14534p;
        View view = this.f14524f;
        if (!viewDragHelper.smoothSlideViewTo(view, paddingLeft, view.getTop())) {
            return false;
        }
        o();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    void r(View view) {
        int left;
        int right;
        int top;
        int bottom;
        View childAt;
        View view2 = view;
        boolean zJ = j();
        int width = zJ ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = zJ ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !s(view)) {
            left = 0;
            right = 0;
            top = 0;
            bottom = 0;
        } else {
            left = view.getLeft();
            right = view.getRight();
            top = view.getTop();
            bottom = view.getBottom();
        }
        int childCount = getChildCount();
        int i10 = 0;
        while (i10 < childCount && (childAt = getChildAt(i10)) != view2) {
            if (childAt.getVisibility() != 8) {
                childAt.setVisibility((Math.max(zJ ? paddingLeft : width, childAt.getLeft()) < left || Math.max(paddingTop, childAt.getTop()) < top || Math.min(zJ ? width : paddingLeft, childAt.getRight()) > right || Math.min(height, childAt.getBottom()) > bottom) ? 0 : 4);
            }
            i10++;
            view2 = view;
            zJ = zJ;
        }
    }

    public void removePanelSlideListener(@NonNull e eVar) {
        this.f14532n.remove(eVar);
    }

    @Override
    public void removeView(@NonNull View view) {
        if (view.getParent() instanceof f) {
            super.removeView((View) view.getParent());
        } else {
            super.removeView(view);
        }
    }

    @Override
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f14523e) {
            return;
        }
        this.f14535q = view == this.f14524f;
    }

    @Deprecated
    public void setCoveredFadeColor(int i10) {
        this.f14520b = i10;
    }

    public final void setLockMode(int i10) {
        this.f14539u = i10;
    }

    @Deprecated
    public void setPanelSlideListener(@Nullable e eVar) {
        e eVar2 = this.f14533o;
        if (eVar2 != null) {
            removePanelSlideListener(eVar2);
        }
        if (eVar != null) {
            addPanelSlideListener(eVar);
        }
        this.f14533o = eVar;
    }

    public void setParallaxDistance(int i10) {
        this.f14529k = i10;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.f14521c = drawable;
    }

    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.f14522d = drawable;
    }

    @Deprecated
    public void setShadowResource(int i10) {
        setShadowDrawableLeft(getResources().getDrawable(i10));
    }

    public void setShadowResourceLeft(int i10) {
        setShadowDrawableLeft(androidx.core.content.b.getDrawable(getContext(), i10));
    }

    public void setShadowResourceRight(int i10) {
        setShadowDrawableRight(androidx.core.content.b.getDrawable(getContext(), i10));
    }

    @Deprecated
    public void setSliderFadeColor(int i10) {
        this.f14519a = i10;
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    public static class d extends ViewGroup.MarginLayoutParams {

        private static final int[] f14549e = {R.attr.layout_weight};

        public float f14550a;

        boolean f14551b;

        boolean f14552c;

        Paint f14553d;

        public d() {
            super(-1, -1);
            this.f14550a = 0.0f;
        }

        public d(int i10, int i11) {
            super(i10, i11);
            this.f14550a = 0.0f;
        }

        public d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f14550a = 0.0f;
        }

        public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f14550a = 0.0f;
        }

        public d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f14550a = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f14549e);
            this.f14550a = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f14519a = 0;
        this.f14525g = 1.0f;
        this.f14532n = new CopyOnWriteArrayList();
        this.f14536r = true;
        this.f14537s = new Rect();
        this.f14538t = new ArrayList();
        this.f14541w = new a();
        float f10 = context.getResources().getDisplayMetrics().density;
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new b());
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, 0.5f, new c());
        this.f14534p = viewDragHelperCreate;
        viewDragHelperCreate.setMinVelocity(f10 * 400.0f);
        setFoldingFeatureObserver(new FoldingFeatureObserver(w.a(context), androidx.core.content.b.getMainExecutor(context)));
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }
}
