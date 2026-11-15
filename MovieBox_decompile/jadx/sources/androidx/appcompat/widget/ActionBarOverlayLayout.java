package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements s, NestedScrollingParent, NestedScrollingParent2, NestedScrollingParent3 {
    static final int[] G = {R$attr.actionBarSize, R.attr.windowContentOverlay};
    private static final WindowInsetsCompat H = new WindowInsetsCompat.Builder().setSystemWindowInsets(z0.c.c(0, 1, 0, 1)).build();
    private static final Rect I = new Rect();
    ViewPropertyAnimator A;
    final AnimatorListenerAdapter B;
    private final Runnable C;
    private final Runnable D;
    private final NestedScrollingParentHelper E;
    private final d F;

    private int f1270a;

    private int f1271b;

    private ContentFrameLayout f1272c;

    ActionBarContainer f1273d;

    private t f1274e;

    private Drawable f1275f;

    private boolean f1276g;

    private boolean f1277h;

    private boolean f1278i;

    boolean f1279j;

    private int f1280k;

    private int f1281l;

    private final Rect f1282m;

    private final Rect f1283n;

    private final Rect f1284o;

    private final Rect f1285p;

    private final Rect f1286q;

    private final Rect f1287r;

    private final Rect f1288s;

    private final Rect f1289t;

    private WindowInsetsCompat f1290u;

    private WindowInsetsCompat f1291v;

    private WindowInsetsCompat f1292w;

    private WindowInsetsCompat f1293x;

    private b f1294y;

    private OverScroller f1295z;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = null;
            actionBarOverlayLayout.f1279j = false;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = null;
            actionBarOverlayLayout.f1279j = false;
        }
    }

    public interface b {
        void a();

        void b(int i10);

        void c();

        void d(boolean z10);

        void e();

        void f();
    }

    public static class c extends ViewGroup.MarginLayoutParams {
        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(int i10, int i11) {
            super(i10, i11);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    private static final class d extends View {
        d(Context context) {
            super(context);
            setWillNotDraw(true);
        }

        @Override
        public int getWindowSystemUiVisibility() {
            return 0;
        }
    }

    public ActionBarOverlayLayout(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        f();
        this.D.run();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    private boolean b(View view, Rect rect, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        c cVar = (c) view.getLayoutParams();
        if (z10) {
            int i10 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
            int i11 = rect.left;
            if (i10 != i11) {
                ((ViewGroup.MarginLayoutParams) cVar).leftMargin = i11;
                z14 = true;
            } else {
                z14 = false;
            }
        } else {
            z14 = false;
        }
        if (z11) {
            int i12 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
            int i13 = rect.top;
            if (i12 != i13) {
                ((ViewGroup.MarginLayoutParams) cVar).topMargin = i13;
                z14 = true;
            }
        }
        if (z13) {
            int i14 = ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
            int i15 = rect.right;
            if (i14 != i15) {
                ((ViewGroup.MarginLayoutParams) cVar).rightMargin = i15;
                z14 = true;
            }
        }
        if (z12) {
            int i16 = ((ViewGroup.MarginLayoutParams) cVar).bottomMargin;
            int i17 = rect.bottom;
            if (i16 != i17) {
                ((ViewGroup.MarginLayoutParams) cVar).bottomMargin = i17;
                return true;
            }
        }
        return z14;
    }

    private boolean c() {
        ViewCompat.computeSystemWindowInsets(this.F, H, this.f1285p);
        return !this.f1285p.equals(I);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private t e(View view) {
        if (view instanceof t) {
            return (t) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void g(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(G);
        this.f1270a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f1275f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f1295z = new OverScroller(context);
    }

    private void h() {
        f();
        postDelayed(this.D, 600L);
    }

    private void i() {
        f();
        postDelayed(this.C, 600L);
    }

    private void k() {
        f();
        this.C.run();
    }

    private boolean l(float f10) {
        this.f1295z.fling(0, 0, 0, (int) f10, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.f1295z.getFinalY() > this.f1273d.getHeight();
    }

    @Override
    public boolean canShowOverflowMenu() {
        j();
        return this.f1274e.canShowOverflowMenu();
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override
    public c generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    @Override
    public void dismissPopups() {
        j();
        this.f1274e.k();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (this.f1275f != null) {
            int bottom = this.f1273d.getVisibility() == 0 ? (int) (this.f1273d.getBottom() + this.f1273d.getTranslationY() + 0.5f) : 0;
            this.f1275f.setBounds(0, bottom, getWidth(), this.f1275f.getIntrinsicHeight() + bottom);
            this.f1275f.draw(canvas);
        }
    }

    void f() {
        removeCallbacks(this.C);
        removeCallbacks(this.D);
        ViewPropertyAnimator viewPropertyAnimator = this.A;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override
    protected boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f1273d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override
    public int getNestedScrollAxes() {
        return this.E.getNestedScrollAxes();
    }

    public CharSequence getTitle() {
        j();
        return this.f1274e.getTitle();
    }

    public boolean hasIcon() {
        j();
        return this.f1274e.f();
    }

    public boolean hasLogo() {
        j();
        return this.f1274e.q();
    }

    @Override
    public boolean hideOverflowMenu() {
        j();
        return this.f1274e.hideOverflowMenu();
    }

    @Override
    public void initFeature(int i10) {
        j();
        if (i10 == 2) {
            this.f1274e.i();
        } else if (i10 == 5) {
            this.f1274e.s();
        } else {
            if (i10 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public boolean isHideOnContentScrollEnabled() {
        return this.f1278i;
    }

    public boolean isInOverlayMode() {
        return this.f1276g;
    }

    @Override
    public boolean isOverflowMenuShowPending() {
        j();
        return this.f1274e.isOverflowMenuShowPending();
    }

    @Override
    public boolean isOverflowMenuShowing() {
        j();
        return this.f1274e.isOverflowMenuShowing();
    }

    void j() {
        if (this.f1272c == null) {
            this.f1272c = (ContentFrameLayout) findViewById(R$id.action_bar_activity_content);
            this.f1273d = (ActionBarContainer) findViewById(R$id.action_bar_container);
            this.f1274e = e(findViewById(R$id.action_bar));
        }
    }

    @Override
    public WindowInsets onApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        j();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, this);
        boolean zB = b(this.f1273d, new Rect(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()), true, true, false, true);
        ViewCompat.computeSystemWindowInsets(this, windowInsetsCompat, this.f1282m);
        Rect rect = this.f1282m;
        WindowInsetsCompat windowInsetsCompatInset = windowInsetsCompat.inset(rect.left, rect.top, rect.right, rect.bottom);
        this.f1290u = windowInsetsCompatInset;
        boolean z10 = true;
        if (!this.f1291v.equals(windowInsetsCompatInset)) {
            this.f1291v = this.f1290u;
            zB = true;
        }
        if (this.f1283n.equals(this.f1282m)) {
            z10 = zB;
        } else {
            this.f1283n.set(this.f1282m);
        }
        if (z10) {
            requestLayout();
        }
        return windowInsetsCompat.consumeDisplayCutout().consumeSystemWindowInsets().consumeStableInsets().toWindowInsets();
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        g(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i15 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin + paddingLeft;
                int i16 = ((ViewGroup.MarginLayoutParams) cVar).topMargin + paddingTop;
                childAt.layout(i15, i16, measuredWidth + i15, measuredHeight + i16);
            }
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int measuredHeight;
        j();
        measureChildWithMargins(this.f1273d, i10, 0, i11, 0);
        c cVar = (c) this.f1273d.getLayoutParams();
        int iMax = Math.max(0, this.f1273d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cVar).leftMargin + ((ViewGroup.MarginLayoutParams) cVar).rightMargin);
        int iMax2 = Math.max(0, this.f1273d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) cVar).topMargin + ((ViewGroup.MarginLayoutParams) cVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1273d.getMeasuredState());
        boolean z10 = (ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z10) {
            measuredHeight = this.f1270a;
            if (this.f1277h && this.f1273d.getTabContainer() != null) {
                measuredHeight += this.f1270a;
            }
        } else {
            measuredHeight = this.f1273d.getVisibility() != 8 ? this.f1273d.getMeasuredHeight() : 0;
        }
        this.f1284o.set(this.f1282m);
        this.f1292w = this.f1290u;
        if (this.f1276g || z10 || !c()) {
            this.f1292w = new WindowInsetsCompat.Builder(this.f1292w).setSystemWindowInsets(z0.c.c(this.f1292w.getSystemWindowInsetLeft(), this.f1292w.getSystemWindowInsetTop() + measuredHeight, this.f1292w.getSystemWindowInsetRight(), this.f1292w.getSystemWindowInsetBottom())).build();
        } else {
            Rect rect = this.f1284o;
            rect.top += measuredHeight;
            rect.bottom = rect.bottom;
            this.f1292w = this.f1292w.inset(0, measuredHeight, 0, 0);
        }
        b(this.f1272c, this.f1284o, true, true, true, true);
        if (!this.f1293x.equals(this.f1292w)) {
            WindowInsetsCompat windowInsetsCompat = this.f1292w;
            this.f1293x = windowInsetsCompat;
            ViewCompat.dispatchApplyWindowInsets(this.f1272c, windowInsetsCompat);
        }
        measureChildWithMargins(this.f1272c, i10, 0, i11, 0);
        c cVar2 = (c) this.f1272c.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f1272c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cVar2).leftMargin + ((ViewGroup.MarginLayoutParams) cVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f1272c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) cVar2).topMargin + ((ViewGroup.MarginLayoutParams) cVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f1272c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i10, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16));
    }

    @Override
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (!this.f1278i || !z10) {
            return false;
        }
        if (l(f11)) {
            a();
        } else {
            k();
        }
        this.f1279j = true;
        return true;
    }

    @Override
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
    }

    @Override
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        onNestedScroll(view, i10, i11, i12, i13, i14);
    }

    @Override
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            onNestedScrollAccepted(view, view2, i10);
        }
    }

    @Override
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        return i11 == 0 && onStartNestedScroll(view, view2, i10);
    }

    @Override
    public void onStopNestedScroll(View view, int i10) {
        if (i10 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i10) {
        super.onWindowSystemUiVisibilityChanged(i10);
        j();
        int i11 = this.f1281l ^ i10;
        this.f1281l = i10;
        boolean z10 = (i10 & 4) == 0;
        boolean z11 = (i10 & 256) != 0;
        b bVar = this.f1294y;
        if (bVar != null) {
            bVar.d(!z11);
            if (z10 || !z11) {
                this.f1294y.a();
            } else {
                this.f1294y.e();
            }
        }
        if ((i11 & 256) == 0 || this.f1294y == null) {
            return;
        }
        ViewCompat.requestApplyInsets(this);
    }

    @Override
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.f1271b = i10;
        b bVar = this.f1294y;
        if (bVar != null) {
            bVar.b(i10);
        }
    }

    public void restoreToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        j();
        this.f1274e.p(sparseArray);
    }

    public void saveToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        j();
        this.f1274e.m(sparseArray);
    }

    public void setActionBarHideOffset(int i10) {
        f();
        this.f1273d.setTranslationY(-Math.max(0, Math.min(i10, this.f1273d.getHeight())));
    }

    public void setActionBarVisibilityCallback(b bVar) {
        this.f1294y = bVar;
        if (getWindowToken() != null) {
            this.f1294y.b(this.f1271b);
            int i10 = this.f1281l;
            if (i10 != 0) {
                onWindowSystemUiVisibilityChanged(i10);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z10) {
        this.f1277h = z10;
    }

    public void setHideOnContentScrollEnabled(boolean z10) {
        if (z10 != this.f1278i) {
            this.f1278i = z10;
            if (z10) {
                return;
            }
            f();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i10) {
        j();
        this.f1274e.setIcon(i10);
    }

    public void setLogo(int i10) {
        j();
        this.f1274e.n(i10);
    }

    @Override
    public void setMenu(Menu menu, androidx.appcompat.view.menu.l.a aVar) {
        j();
        this.f1274e.setMenu(menu, aVar);
    }

    @Override
    public void setMenuPrepared() {
        j();
        this.f1274e.setMenuPrepared();
    }

    public void setOverlayMode(boolean z10) {
        this.f1276g = z10;
    }

    public void setShowingForActionMode(boolean z10) {
    }

    public void setUiOptions(int i10) {
    }

    @Override
    public void setWindowCallback(Window.Callback callback) {
        j();
        this.f1274e.setWindowCallback(callback);
    }

    @Override
    public void setWindowTitle(CharSequence charSequence) {
        j();
        this.f1274e.setWindowTitle(charSequence);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override
    public boolean showOverflowMenu() {
        j();
        return this.f1274e.showOverflowMenu();
    }

    public ActionBarOverlayLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1271b = 0;
        this.f1282m = new Rect();
        this.f1283n = new Rect();
        this.f1284o = new Rect();
        this.f1285p = new Rect();
        this.f1286q = new Rect();
        this.f1287r = new Rect();
        this.f1288s = new Rect();
        this.f1289t = new Rect();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.CONSUMED;
        this.f1290u = windowInsetsCompat;
        this.f1291v = windowInsetsCompat;
        this.f1292w = windowInsetsCompat;
        this.f1293x = windowInsetsCompat;
        this.B = new a();
        this.C = new Runnable() {
            @Override
            public void run() {
                ActionBarOverlayLayout.this.f();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = actionBarOverlayLayout.f1273d.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.B);
            }
        };
        this.D = new Runnable() {
            @Override
            public void run() {
                ActionBarOverlayLayout.this.f();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = actionBarOverlayLayout.f1273d.animate().translationY(-ActionBarOverlayLayout.this.f1273d.getHeight()).setListener(ActionBarOverlayLayout.this.B);
            }
        };
        g(context);
        this.E = new NestedScrollingParentHelper(this);
        d dVar = new d(context);
        this.F = dVar;
        addView(dVar);
    }

    @Override
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    @Override
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 0) {
            onNestedPreScroll(view, i10, i11, iArr);
        }
    }

    @Override
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        if (i14 == 0) {
            onNestedScroll(view, i10, i11, i12, i13);
        }
    }

    @Override
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.E.onNestedScrollAccepted(view, view2, i10);
        this.f1280k = getActionBarHideOffset();
        f();
        b bVar = this.f1294y;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        if ((i10 & 2) == 0 || this.f1273d.getVisibility() != 0) {
            return false;
        }
        return this.f1278i;
    }

    @Override
    public void onStopNestedScroll(View view) {
        if (this.f1278i && !this.f1279j) {
            if (this.f1280k <= this.f1273d.getHeight()) {
                i();
            } else {
                h();
            }
        }
        b bVar = this.f1294y;
        if (bVar != null) {
            bVar.c();
        }
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    @Override
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        int i14 = this.f1280k + i11;
        this.f1280k = i14;
        setActionBarHideOffset(i14);
    }

    public void setIcon(Drawable drawable) {
        j();
        this.f1274e.setIcon(drawable);
    }
}
