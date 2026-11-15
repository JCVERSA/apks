package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;

public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingParent3, NestedScrollingParent2, NestedScrollingChild3, NestedScrollingChild2, NestedScrollingParent, NestedScrollingChild {
    public static final int DEFAULT = 1;
    public static final int DEFAULT_SLINGSHOT_DISTANCE = -1;
    public static final int LARGE = 0;
    private static final String P = "SwipeRefreshLayout";
    private static final int[] Q = {R.attr.enabled};
    int A;
    int B;
    androidx.swiperefreshlayout.widget.b C;
    private Animation D;
    private Animation E;
    private Animation F;
    private Animation G;
    private Animation H;
    boolean I;
    private int J;
    boolean K;
    private boolean L;
    private Animation.AnimationListener M;
    private final Animation N;
    private final Animation O;

    private View f14579a;

    j f14580b;

    boolean f14581c;

    private int f14582d;

    private float f14583e;

    private float f14584f;

    private final NestedScrollingParentHelper f14585g;

    private final NestedScrollingChildHelper f14586h;

    private final int[] f14587i;

    private final int[] f14588j;

    private final int[] f14589k;

    private boolean f14590l;

    private int f14591m;

    int f14592n;

    private float f14593o;

    private float f14594p;

    private boolean f14595q;

    private int f14596r;

    boolean f14597s;

    private boolean f14598t;

    private final DecelerateInterpolator f14599u;

    androidx.swiperefreshlayout.widget.a f14600v;

    private int f14601w;

    protected int f14602x;

    float f14603y;

    protected int f14604z;

    class b extends Animation {
        b() {
        }

        @Override
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(f10);
        }
    }

    class c extends Animation {
        c() {
        }

        @Override
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(1.0f - f10);
        }
    }

    class d extends Animation {

        final int f14609a;

        final int f14610b;

        d(int i10, int i11) {
            this.f14609a = i10;
            this.f14610b = i11;
        }

        @Override
        public void applyTransformation(float f10, Transformation transformation) {
            androidx.swiperefreshlayout.widget.b bVar = SwipeRefreshLayout.this.C;
            int i10 = this.f14609a;
            bVar.setAlpha((int) (i10 + ((this.f14610b - i10) * f10)));
        }
    }

    class f extends Animation {
        f() {
        }

        @Override
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            int iAbs = !swipeRefreshLayout.K ? swipeRefreshLayout.A - Math.abs(swipeRefreshLayout.f14604z) : swipeRefreshLayout.A;
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            int i10 = swipeRefreshLayout2.f14602x;
            SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((i10 + ((int) ((iAbs - i10) * f10))) - swipeRefreshLayout2.f14600v.getTop());
            SwipeRefreshLayout.this.C.e(1.0f - f10);
        }
    }

    class g extends Animation {
        g() {
        }

        @Override
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout.this.h(f10);
        }
    }

    class h extends Animation {
        h() {
        }

        @Override
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            float f11 = swipeRefreshLayout.f14603y;
            swipeRefreshLayout.setAnimationProgress(f11 + ((-f11) * f10));
            SwipeRefreshLayout.this.h(f10);
        }
    }

    public interface i {
    }

    public interface j {
        void a();
    }

    public SwipeRefreshLayout(@NonNull Context context) {
        this(context, null);
    }

    private void a(int i10, Animation.AnimationListener animationListener) {
        this.f14602x = i10;
        this.N.reset();
        this.N.setDuration(200L);
        this.N.setInterpolator(this.f14599u);
        if (animationListener != null) {
            this.f14600v.b(animationListener);
        }
        this.f14600v.clearAnimation();
        this.f14600v.startAnimation(this.N);
    }

    private void b(int i10, Animation.AnimationListener animationListener) {
        if (this.f14597s) {
            q(i10, animationListener);
            return;
        }
        this.f14602x = i10;
        this.O.reset();
        this.O.setDuration(200L);
        this.O.setInterpolator(this.f14599u);
        if (animationListener != null) {
            this.f14600v.b(animationListener);
        }
        this.f14600v.clearAnimation();
        this.f14600v.startAnimation(this.O);
    }

    private void c() {
        this.f14600v = new androidx.swiperefreshlayout.widget.a(getContext());
        androidx.swiperefreshlayout.widget.b bVar = new androidx.swiperefreshlayout.widget.b(getContext());
        this.C = bVar;
        bVar.l(1);
        this.f14600v.setImageDrawable(this.C);
        this.f14600v.setVisibility(8);
        addView(this.f14600v);
    }

    private void d() {
        if (this.f14579a == null) {
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if (!childAt.equals(this.f14600v)) {
                    this.f14579a = childAt;
                    return;
                }
            }
        }
    }

    private void e(float f10) {
        if (f10 > this.f14583e) {
            k(true, true);
            return;
        }
        this.f14581c = false;
        this.C.j(0.0f, 0.0f);
        b(this.f14592n, !this.f14597s ? new e() : null);
        this.C.d(false);
    }

    private boolean f(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    private void g(float f10) {
        this.C.d(true);
        float fMin = Math.min(1.0f, Math.abs(f10 / this.f14583e));
        float fMax = (((float) Math.max(((double) fMin) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float fAbs = Math.abs(f10) - this.f14583e;
        int i10 = this.B;
        if (i10 <= 0) {
            i10 = this.K ? this.A - this.f14604z : this.A;
        }
        float f11 = i10;
        double dMax = Math.max(0.0f, Math.min(fAbs, f11 * 2.0f) / f11) / 4.0f;
        float fPow = ((float) (dMax - Math.pow(dMax, 2.0d))) * 2.0f;
        int i11 = this.f14604z + ((int) ((f11 * fMin) + (f11 * fPow * 2.0f)));
        if (this.f14600v.getVisibility() != 0) {
            this.f14600v.setVisibility(0);
        }
        if (!this.f14597s) {
            this.f14600v.setScaleX(1.0f);
            this.f14600v.setScaleY(1.0f);
        }
        if (this.f14597s) {
            setAnimationProgress(Math.min(1.0f, f10 / this.f14583e));
        }
        if (f10 < this.f14583e) {
            if (this.C.getAlpha() > 76 && !f(this.F)) {
                o();
            }
        } else if (this.C.getAlpha() < 255 && !f(this.G)) {
            n();
        }
        this.C.j(0.0f, Math.min(0.8f, fMax * 0.8f));
        this.C.e(Math.min(1.0f, fMax));
        this.C.g((((fMax * 0.4f) - 0.25f) + (fPow * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom(i11 - this.f14592n);
    }

    private void i(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f14596r) {
            this.f14596r = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    private void k(boolean z10, boolean z11) {
        if (this.f14581c != z10) {
            this.I = z11;
            d();
            this.f14581c = z10;
            if (z10) {
                a(this.f14592n, this.M);
            } else {
                p(this.M);
            }
        }
    }

    private Animation l(int i10, int i11) {
        d dVar = new d(i10, i11);
        dVar.setDuration(300L);
        this.f14600v.b(null);
        this.f14600v.clearAnimation();
        this.f14600v.startAnimation(dVar);
        return dVar;
    }

    private void m(float f10) {
        float f11 = this.f14594p;
        float f12 = f10 - f11;
        int i10 = this.f14582d;
        if (f12 <= i10 || this.f14595q) {
            return;
        }
        this.f14593o = f11 + i10;
        this.f14595q = true;
        this.C.setAlpha(76);
    }

    private void n() {
        this.G = l(this.C.getAlpha(), 255);
    }

    private void o() {
        this.F = l(this.C.getAlpha(), 76);
    }

    private void q(int i10, Animation.AnimationListener animationListener) {
        this.f14602x = i10;
        this.f14603y = this.f14600v.getScaleX();
        h hVar = new h();
        this.H = hVar;
        hVar.setDuration(150L);
        if (animationListener != null) {
            this.f14600v.b(animationListener);
        }
        this.f14600v.clearAnimation();
        this.f14600v.startAnimation(this.H);
    }

    private void r(Animation.AnimationListener animationListener) {
        this.f14600v.setVisibility(0);
        this.C.setAlpha(255);
        b bVar = new b();
        this.D = bVar;
        bVar.setDuration(this.f14591m);
        if (animationListener != null) {
            this.f14600v.b(animationListener);
        }
        this.f14600v.clearAnimation();
        this.f14600v.startAnimation(this.D);
    }

    private void setColorViewAlpha(int i10) {
        this.f14600v.getBackground().setAlpha(i10);
        this.C.setAlpha(i10);
    }

    public boolean canChildScrollUp() {
        View view = this.f14579a;
        return view instanceof ListView ? androidx.core.widget.j.a((ListView) view, -1) : view.canScrollVertically(-1);
    }

    @Override
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return this.f14586h.dispatchNestedFling(f10, f11, z10);
    }

    @Override
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return this.f14586h.dispatchNestedPreFling(f10, f11);
    }

    @Override
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return i12 == 0 && dispatchNestedPreScroll(i10, i11, iArr, iArr2);
    }

    @Override
    public void dispatchNestedScroll(int i10, int i11, int i12, int i13, @Nullable int[] iArr, int i14, @NonNull int[] iArr2) {
        if (i14 == 0) {
            this.f14586h.dispatchNestedScroll(i10, i11, i12, i13, iArr, i14, iArr2);
        }
    }

    @Override
    protected int getChildDrawingOrder(int i10, int i11) {
        int i12 = this.f14601w;
        if (i12 < 0) {
            return i11;
        }
        if (i11 == i10 - 1) {
            return i12;
        }
        return i11 >= i12 ? i11 + 1 : i11;
    }

    @Override
    public int getNestedScrollAxes() {
        return this.f14585g.getNestedScrollAxes();
    }

    public int getProgressCircleDiameter() {
        return this.J;
    }

    public int getProgressViewEndOffset() {
        return this.A;
    }

    public int getProgressViewStartOffset() {
        return this.f14604z;
    }

    void h(float f10) {
        int i10 = this.f14602x;
        setTargetOffsetTopAndBottom((i10 + ((int) ((this.f14604z - i10) * f10))) - this.f14600v.getTop());
    }

    @Override
    public boolean hasNestedScrollingParent(int i10) {
        return i10 == 0 && hasNestedScrollingParent();
    }

    @Override
    public boolean isNestedScrollingEnabled() {
        return this.f14586h.isNestedScrollingEnabled();
    }

    public boolean isRefreshing() {
        return this.f14581c;
    }

    void j() {
        this.f14600v.clearAnimation();
        this.C.stop();
        this.f14600v.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f14597s) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.f14604z - this.f14592n);
        }
        this.f14592n = this.f14600v.getTop();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0058  */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        d();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f14598t && actionMasked == 0) {
            this.f14598t = false;
        }
        if (!isEnabled() || this.f14598t || canChildScrollUp() || this.f14581c || this.f14590l) {
            return false;
        }
        if (actionMasked == 0) {
            setTargetOffsetTopAndBottom(this.f14604z - this.f14600v.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f14596r = pointerId;
            this.f14595q = false;
            int iFindPointerIndex = motionEvent.findPointerIndex(pointerId);
            if (iFindPointerIndex < 0) {
                return false;
            }
            this.f14594p = motionEvent.getY(iFindPointerIndex);
        } else if (actionMasked == 1) {
            this.f14595q = false;
            this.f14596r = -1;
        } else if (actionMasked == 2) {
            int i10 = this.f14596r;
            if (i10 == -1) {
                Log.e(P, "Got ACTION_MOVE event but don't have an active pointer id.");
                return false;
            }
            int iFindPointerIndex2 = motionEvent.findPointerIndex(i10);
            if (iFindPointerIndex2 < 0) {
                return false;
            }
            m(motionEvent.getY(iFindPointerIndex2));
        } else if (actionMasked == 3) {
            this.f14595q = false;
            this.f14596r = -1;
        } else if (actionMasked == 6) {
            i(motionEvent);
        }
        return this.f14595q;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f14579a == null) {
            d();
        }
        View view = this.f14579a;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f14600v.getMeasuredWidth();
        int measuredHeight2 = this.f14600v.getMeasuredHeight();
        int i14 = measuredWidth / 2;
        int i15 = measuredWidth2 / 2;
        int i16 = this.f14592n;
        this.f14600v.layout(i14 - i15, i16, i14 + i15, measuredHeight2 + i16);
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f14579a == null) {
            d();
        }
        View view = this.f14579a;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f14600v.measure(View.MeasureSpec.makeMeasureSpec(this.J, 1073741824), View.MeasureSpec.makeMeasureSpec(this.J, 1073741824));
        this.f14601w = -1;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            if (getChildAt(i12) == this.f14600v) {
                this.f14601w = i12;
                return;
            }
        }
    }

    @Override
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        return dispatchNestedFling(f10, f11, z10);
    }

    @Override
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return dispatchNestedPreFling(f10, f11);
    }

    @Override
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 0) {
            onNestedPreScroll(view, i10, i11, iArr);
        }
    }

    @Override
    public void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
        if (i14 != 0) {
            return;
        }
        int i15 = iArr[1];
        dispatchNestedScroll(i10, i11, i12, i13, this.f14588j, i14, iArr);
        int i16 = i13 - (iArr[1] - i15);
        int i17 = i16 == 0 ? i13 + this.f14588j[1] : i16;
        if (i17 >= 0 || canChildScrollUp()) {
            return;
        }
        float fAbs = this.f14584f + Math.abs(i17);
        this.f14584f = fAbs;
        g(fAbs);
        iArr[1] = iArr[1] + i16;
    }

    @Override
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            onNestedScrollAccepted(view, view2, i10);
        }
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setRefreshing(savedState.f14605a);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.f14581c);
    }

    @Override
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            return onStartNestedScroll(view, view2, i10);
        }
        return false;
    }

    @Override
    public void onStopNestedScroll(View view, int i10) {
        if (i10 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f14598t && actionMasked == 0) {
            this.f14598t = false;
        }
        if (!isEnabled() || this.f14598t || canChildScrollUp() || this.f14581c || this.f14590l) {
            return false;
        }
        if (actionMasked == 0) {
            this.f14596r = motionEvent.getPointerId(0);
            this.f14595q = false;
        } else {
            if (actionMasked == 1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f14596r);
                if (iFindPointerIndex < 0) {
                    Log.e(P, "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                if (this.f14595q) {
                    float y10 = (motionEvent.getY(iFindPointerIndex) - this.f14593o) * 0.5f;
                    this.f14595q = false;
                    e(y10);
                }
                this.f14596r = -1;
                return false;
            }
            if (actionMasked == 2) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.f14596r);
                if (iFindPointerIndex2 < 0) {
                    Log.e(P, "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y11 = motionEvent.getY(iFindPointerIndex2);
                m(y11);
                if (this.f14595q) {
                    float f10 = (y11 - this.f14593o) * 0.5f;
                    if (f10 <= 0.0f) {
                        return false;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    g(f10);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex < 0) {
                        Log.e(P, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                        return false;
                    }
                    this.f14596r = motionEvent.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    i(motionEvent);
                }
            }
        }
        return true;
    }

    void p(Animation.AnimationListener animationListener) {
        c cVar = new c();
        this.E = cVar;
        cVar.setDuration(150L);
        this.f14600v.b(animationListener);
        this.f14600v.clearAnimation();
        this.f14600v.startAnimation(this.E);
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        ViewParent parent;
        View view = this.f14579a;
        if (view == null || ViewCompat.isNestedScrollingEnabled(view)) {
            super.requestDisallowInterceptTouchEvent(z10);
        } else {
            if (this.L || (parent = getParent()) == null) {
                return;
            }
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    void setAnimationProgress(float f10) {
        this.f14600v.setScaleX(f10);
        this.f14600v.setScaleY(f10);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        d();
        this.C.f(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr2[i10] = androidx.core.content.b.getColor(context, iArr[i10]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i10) {
        this.f14583e = i10;
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (z10) {
            return;
        }
        j();
    }

    @Deprecated
    public void setLegacyRequestDisallowInterceptTouchEventEnabled(boolean z10) {
        this.L = z10;
    }

    @Override
    public void setNestedScrollingEnabled(boolean z10) {
        this.f14586h.setNestedScrollingEnabled(z10);
    }

    public void setOnChildScrollUpCallback(@Nullable i iVar) {
    }

    public void setOnRefreshListener(@Nullable j jVar) {
        this.f14580b = jVar;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i10) {
        setProgressBackgroundColorSchemeResource(i10);
    }

    public void setProgressBackgroundColorSchemeColor(int i10) {
        this.f14600v.setBackgroundColor(i10);
    }

    public void setProgressBackgroundColorSchemeResource(int i10) {
        setProgressBackgroundColorSchemeColor(androidx.core.content.b.getColor(getContext(), i10));
    }

    public void setProgressViewEndTarget(boolean z10, int i10) {
        this.A = i10;
        this.f14597s = z10;
        this.f14600v.invalidate();
    }

    public void setProgressViewOffset(boolean z10, int i10, int i11) {
        this.f14597s = z10;
        this.f14604z = i10;
        this.A = i11;
        this.K = true;
        j();
        this.f14581c = false;
    }

    public void setRefreshing(boolean z10) {
        if (!z10 || this.f14581c == z10) {
            k(z10, false);
            return;
        }
        this.f14581c = z10;
        setTargetOffsetTopAndBottom((!this.K ? this.A + this.f14604z : this.A) - this.f14592n);
        this.I = false;
        r(this.M);
    }

    public void setSize(int i10) {
        if (i10 == 0 || i10 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i10 == 0) {
                this.J = (int) (displayMetrics.density * 56.0f);
            } else {
                this.J = (int) (displayMetrics.density * 40.0f);
            }
            this.f14600v.setImageDrawable(null);
            this.C.l(i10);
            this.f14600v.setImageDrawable(this.C);
        }
    }

    public void setSlingshotDistance(int i10) {
        this.B = i10;
    }

    void setTargetOffsetTopAndBottom(int i10) {
        this.f14600v.bringToFront();
        ViewCompat.offsetTopAndBottom(this.f14600v, i10);
        this.f14592n = this.f14600v.getTop();
    }

    @Override
    public boolean startNestedScroll(int i10, int i11) {
        return i11 == 0 && startNestedScroll(i10);
    }

    @Override
    public void stopNestedScroll(int i10) {
        if (i10 == 0) {
            stopNestedScroll();
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        final boolean f14605a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcelable parcelable, boolean z10) {
            super(parcelable);
            this.f14605a = z10;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.f14605a ? (byte) 1 : (byte) 0);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f14605a = parcel.readByte() != 0;
        }
    }

    public SwipeRefreshLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14581c = false;
        this.f14583e = -1.0f;
        this.f14587i = new int[2];
        this.f14588j = new int[2];
        this.f14589k = new int[2];
        this.f14596r = -1;
        this.f14601w = -1;
        this.M = new a();
        this.N = new f();
        this.O = new g();
        this.f14582d = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f14591m = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.f14599u = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.J = (int) (displayMetrics.density * 40.0f);
        c();
        setChildrenDrawingOrderEnabled(true);
        int i10 = (int) (displayMetrics.density * 64.0f);
        this.A = i10;
        this.f14583e = i10;
        this.f14585g = new NestedScrollingParentHelper(this);
        this.f14586h = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i11 = -this.J;
        this.f14592n = i11;
        this.f14604z = i11;
        h(1.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Q);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.f14586h.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
    }

    @Override
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        return i14 == 0 && this.f14586h.dispatchNestedScroll(i10, i11, i12, i13, iArr, i14);
    }

    @Override
    public boolean hasNestedScrollingParent() {
        return this.f14586h.hasNestedScrollingParent();
    }

    @Override
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        if (i11 > 0) {
            float f10 = this.f14584f;
            if (f10 > 0.0f) {
                float f11 = i11;
                if (f11 > f10) {
                    iArr[1] = (int) f10;
                    this.f14584f = 0.0f;
                } else {
                    this.f14584f = f10 - f11;
                    iArr[1] = i11;
                }
                g(this.f14584f);
            }
        }
        if (this.K && i11 > 0 && this.f14584f == 0.0f && Math.abs(i11 - iArr[1]) > 0) {
            this.f14600v.setVisibility(8);
        }
        int[] iArr2 = this.f14587i;
        if (dispatchNestedPreScroll(i10 - iArr[0], i11 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.f14585g.onNestedScrollAccepted(view, view2, i10);
        startNestedScroll(i10 & 2);
        this.f14584f = 0.0f;
        this.f14590l = true;
    }

    @Override
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return (!isEnabled() || this.f14598t || this.f14581c || (i10 & 2) == 0) ? false : true;
    }

    @Override
    public void onStopNestedScroll(View view) {
        this.f14585g.onStopNestedScroll(view);
        this.f14590l = false;
        float f10 = this.f14584f;
        if (f10 > 0.0f) {
            e(f10);
            this.f14584f = 0.0f;
        }
        stopNestedScroll();
    }

    @Override
    public boolean startNestedScroll(int i10) {
        return this.f14586h.startNestedScroll(i10);
    }

    @Override
    public void stopNestedScroll() {
        this.f14586h.stopNestedScroll();
    }

    @Override
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.f14586h.dispatchNestedScroll(i10, i11, i12, i13, iArr);
    }

    @Override
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        onNestedScroll(view, i10, i11, i12, i13, i14, this.f14589k);
    }

    @Override
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        onNestedScroll(view, i10, i11, i12, i13, 0, this.f14589k);
    }

    class a implements Animation.AnimationListener {
        a() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            j jVar;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.f14581c) {
                swipeRefreshLayout.j();
                return;
            }
            swipeRefreshLayout.C.setAlpha(255);
            SwipeRefreshLayout.this.C.start();
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            if (swipeRefreshLayout2.I && (jVar = swipeRefreshLayout2.f14580b) != null) {
                jVar.a();
            }
            SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
            swipeRefreshLayout3.f14592n = swipeRefreshLayout3.f14600v.getTop();
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    class e implements Animation.AnimationListener {
        e() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (swipeRefreshLayout.f14597s) {
                return;
            }
            swipeRefreshLayout.p(null);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }
}
