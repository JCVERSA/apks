package com.sothree.slidinguppanel;

import a1.h;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.Scroller;

public class SlidingUpPanelLayout extends ViewGroup {
    public static final int[] C = {R.attr.gravity};
    public int A;
    public Paint B;

    public int f481a;

    public final Paint f482b;

    public int f483c;

    public boolean f484d;

    public View f485e;

    public int f486f;

    public View f487g;

    public final a0.c f488h;

    public View f489i;

    public View f490j;

    public e f491k;

    public e f492l;

    public float f493m;

    public int f494n;

    public float f495o;

    public int f496p;

    public boolean f497q;

    public float f498r;

    public float f499s;

    public float f500t;

    public float f501u;

    public boolean f502v;

    public d f503w;

    public final h f504x;

    public boolean f505y;

    public final Rect f506z;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public final void onClick(View view) {
            e eVar;
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            if (!slidingUpPanelLayout.isEnabled() || slidingUpPanelLayout.e()) {
                return;
            }
            e eVar2 = slidingUpPanelLayout.f491k;
            e eVar3 = e.f511a;
            if (eVar2 == eVar3 || eVar2 == (eVar = e.f513c)) {
                slidingUpPanelLayout.setPanelState(e.f512b);
            } else if (slidingUpPanelLayout.f495o < 1.0f) {
                slidingUpPanelLayout.setPanelState(eVar);
            } else {
                slidingUpPanelLayout.setPanelState(eVar3);
            }
        }
    }

    public class b extends h.c {
        public b() {
        }

        @Override
        public final int a(int i2) {
            int[] iArr = SlidingUpPanelLayout.C;
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            int iC = slidingUpPanelLayout.c(0.0f);
            int iC2 = slidingUpPanelLayout.c(1.0f);
            return slidingUpPanelLayout.f484d ? Math.min(Math.max(i2, iC2), iC) : Math.min(Math.max(i2, iC), iC2);
        }
    }

    public interface d {
        void a();

        void b(e eVar);
    }

    public enum e {
        f511a,
        f512b,
        f513c,
        f514d,
        f515e;

        e() {
        }
    }

    public SlidingUpPanelLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f481a = -1728053248;
        this.f482b = new Paint();
        this.f483c = -1;
        this.f486f = -1;
        this.f488h = new a0.c();
        e eVar = e.f512b;
        this.f491k = eVar;
        this.f492l = eVar;
        this.f495o = 1.0f;
        this.f496p = -1;
        this.f502v = false;
        this.f505y = true;
        this.f506z = new Rect();
        this.A = -1;
        if (isInEditMode()) {
            this.f504x = null;
            return;
        }
        int i2 = 400;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C);
            if (typedArrayObtainStyledAttributes != null) {
                setGravity(typedArrayObtainStyledAttributes.getInt(0, 0));
                typedArrayObtainStyledAttributes.recycle();
            }
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a0.c.f14f);
            if (typedArrayObtainStyledAttributes2 != null) {
                this.f483c = typedArrayObtainStyledAttributes2.getDimensionPixelSize(4, -1);
                i2 = typedArrayObtainStyledAttributes2.getInt(3, 400);
                this.f481a = typedArrayObtainStyledAttributes2.getColor(2, -1728053248);
                this.f486f = typedArrayObtainStyledAttributes2.getResourceId(1, -1);
                this.f496p = typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, -1);
                typedArrayObtainStyledAttributes2.recycle();
            }
        }
        float f2 = context.getResources().getDisplayMetrics().density;
        if (this.f483c == -1) {
            this.f483c = (int) ((68.0f * f2) + 0.5f);
        }
        setWillNotDraw(false);
        h hVar = new h(getContext(), this, new b());
        hVar.f171b = (int) (hVar.f171b * 3.3333333f);
        this.f504x = hVar;
        hVar.f182m = i2 * f2;
    }

    public static void a(SlidingUpPanelLayout slidingUpPanelLayout, e eVar) {
        slidingUpPanelLayout.setPanelStateInternal(eVar);
    }

    public static void b(SlidingUpPanelLayout slidingUpPanelLayout, int i2) {
        e eVar = slidingUpPanelLayout.f491k;
        e eVar2 = e.f515e;
        if (eVar != eVar2) {
            slidingUpPanelLayout.f492l = eVar;
        }
        slidingUpPanelLayout.setPanelStateInternal(eVar2);
        slidingUpPanelLayout.f493m = slidingUpPanelLayout.d(i2);
        d dVar = slidingUpPanelLayout.f503w;
        if (dVar != null) {
            dVar.a();
        }
        c cVar = (c) slidingUpPanelLayout.f490j.getLayoutParams();
        int height = ((slidingUpPanelLayout.getHeight() - slidingUpPanelLayout.getPaddingBottom()) - slidingUpPanelLayout.getPaddingTop()) - slidingUpPanelLayout.f483c;
        if (slidingUpPanelLayout.f493m > 0.0f) {
            if (((ViewGroup.MarginLayoutParams) cVar).height != -1) {
                ((ViewGroup.MarginLayoutParams) cVar).height = -1;
                slidingUpPanelLayout.f490j.requestLayout();
                return;
            }
            return;
        }
        int paddingBottom = slidingUpPanelLayout.f484d ? i2 - slidingUpPanelLayout.getPaddingBottom() : ((slidingUpPanelLayout.getHeight() - slidingUpPanelLayout.getPaddingBottom()) - slidingUpPanelLayout.f489i.getMeasuredHeight()) - i2;
        ((ViewGroup.MarginLayoutParams) cVar).height = paddingBottom;
        if (paddingBottom == height) {
            ((ViewGroup.MarginLayoutParams) cVar).height = -1;
        }
        slidingUpPanelLayout.f490j.requestLayout();
    }

    private void setPanelStateInternal(e eVar) {
        if (this.f491k == eVar) {
            return;
        }
        this.f491k = eVar;
        d dVar = this.f503w;
        if (dVar != null) {
            dVar.b(eVar);
        }
        sendAccessibilityEvent(32);
    }

    public final int c(float f2) {
        View view = this.f489i;
        int measuredHeight = view != null ? view.getMeasuredHeight() : 0;
        int i2 = (int) (f2 * this.f494n);
        return this.f484d ? ((getMeasuredHeight() - getPaddingBottom()) - this.f483c) - i2 : (getPaddingTop() - measuredHeight) + this.f483c + i2;
    }

    @Override
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof c) && super.checkLayoutParams(layoutParams);
    }

    @Override
    public final void computeScroll() {
        h hVar = this.f504x;
        if (hVar != null) {
            if (hVar.f170a == 2) {
                Scroller scroller = hVar.f184o;
                boolean zComputeScrollOffset = scroller.computeScrollOffset();
                int currX = scroller.getCurrX();
                int currY = scroller.getCurrY();
                int left = currX - hVar.f186q.getLeft();
                int top = currY - hVar.f186q.getTop();
                if (left != 0) {
                    hVar.f186q.offsetLeftAndRight(left);
                }
                if (top != 0) {
                    hVar.f186q.offsetTopAndBottom(top);
                }
                if (left != 0 || top != 0) {
                    SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
                    b(slidingUpPanelLayout, currY);
                    slidingUpPanelLayout.invalidate();
                }
                if (zComputeScrollOffset && currX == scroller.getFinalX() && currY == scroller.getFinalY()) {
                    scroller.abortAnimation();
                    zComputeScrollOffset = false;
                }
                if (!zComputeScrollOffset) {
                    hVar.f188s.post(hVar.f189t);
                }
            }
            if (hVar.f170a == 2) {
                if (isEnabled()) {
                    postInvalidateOnAnimation();
                } else {
                    hVar.a();
                }
            }
        }
    }

    public final float d(int i2) {
        float f2;
        int i3;
        int iC = c(0.0f);
        if (this.f484d) {
            f2 = iC - i2;
            i3 = this.f494n;
        } else {
            f2 = i2 - iC;
            i3 = this.f494n;
        }
        return f2 / i3;
    }

    @Override
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.B != null) {
            canvas.drawRect(0.0f, getHeight() - this.A, getWidth(), getHeight(), this.B);
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00ed  */
    @Override
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int height;
        int bottom;
        int bottom2;
        int actionMasked = motionEvent.getActionMasked();
        boolean zIsEnabled = isEnabled();
        h hVar = this.f504x;
        if (!zIsEnabled || e() || (this.f497q && actionMasked != 0)) {
            hVar.a();
            return super.dispatchTouchEvent(motionEvent);
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        if (actionMasked == 0) {
            this.f502v = false;
            this.f498r = x2;
            this.f499s = y2;
        } else if (actionMasked == 2) {
            float f2 = x2 - this.f498r;
            float f3 = y2 - this.f499s;
            this.f498r = x2;
            this.f499s = y2;
            if (Math.abs(f2) > Math.abs(f3)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            if (!f(this.f487g, (int) this.f500t, (int) this.f501u)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            boolean z2 = this.f484d;
            if ((z2 ? 1 : -1) * f3 > 0.0f) {
                View view = this.f487g;
                this.f488h.getClass();
                if (view == null) {
                    height = 0;
                } else if (view instanceof ScrollView) {
                    if (z2) {
                        height = view.getScrollY();
                    } else {
                        ScrollView scrollView = (ScrollView) view;
                        bottom = scrollView.getChildAt(0).getBottom();
                        bottom2 = scrollView.getScrollY() + scrollView.getHeight();
                        height = bottom - bottom2;
                    }
                } else if (view instanceof ListView) {
                    ListView listView = (ListView) view;
                    if (listView.getChildCount() <= 0 || listView.getAdapter() == null) {
                        height = 0;
                    } else if (z2) {
                        View childAt = listView.getChildAt(0);
                        height = (childAt.getHeight() * listView.getFirstVisiblePosition()) - childAt.getTop();
                    } else {
                        View childAt2 = listView.getChildAt(listView.getChildCount() - 1);
                        bottom = childAt2.getBottom() + (childAt2.getHeight() * ((listView.getAdapter().getCount() - listView.getLastVisiblePosition()) - 1));
                        bottom2 = listView.getBottom();
                        height = bottom - bottom2;
                    }
                } else {
                    height = 0;
                }
                if (height > 0) {
                    this.f502v = true;
                    return super.dispatchTouchEvent(motionEvent);
                }
                if (this.f502v) {
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                    super.dispatchTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    motionEvent.setAction(0);
                }
                this.f502v = false;
                return onTouchEvent(motionEvent);
            }
            if (f3 * (z2 ? 1 : -1) < 0.0f) {
                if (this.f493m < 1.0f) {
                    this.f502v = false;
                    return onTouchEvent(motionEvent);
                }
                if (!this.f502v) {
                    if (hVar.f170a == 1) {
                        hVar.b();
                        motionEvent.setAction(0);
                    }
                }
                this.f502v = true;
                return super.dispatchTouchEvent(motionEvent);
            }
        } else if (actionMasked == 1 && this.f502v) {
            hVar.o(0);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    public final boolean drawChild(Canvas canvas, View view, long j2) {
        boolean zDrawChild;
        int iSave = canvas.save();
        View view2 = this.f489i;
        if (view2 == null || view2 == view) {
            zDrawChild = super.drawChild(canvas, view, j2);
        } else {
            Rect rect = this.f506z;
            canvas.getClipBounds(rect);
            if (this.f484d) {
                rect.bottom = Math.min(rect.bottom, this.f489i.getTop());
            } else {
                rect.top = Math.max(rect.top, this.f489i.getBottom());
            }
            canvas.clipRect(rect);
            zDrawChild = super.drawChild(canvas, view, j2);
            int i2 = this.f481a;
            if (i2 != 0) {
                float f2 = this.f493m;
                if (f2 > 0.0f) {
                    int i3 = (i2 & 16777215) | (((int) ((((-16777216) & i2) >>> 24) * f2)) << 24);
                    Paint paint = this.f482b;
                    paint.setColor(i3);
                    canvas.drawRect(rect, paint);
                }
            }
        }
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    public final boolean e() {
        return this.f489i == null || this.f491k == e.f514d;
    }

    public final boolean f(View view, int i2, int i3) {
        int i4;
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr2);
        int i5 = iArr2[0] + i2;
        int i6 = iArr2[1] + i3;
        int i7 = iArr[0];
        return i5 >= i7 && i5 < view.getWidth() + i7 && i6 >= (i4 = iArr[1]) && i6 < view.getHeight() + i4;
    }

    public final void g(int i2) {
        this.A = i2;
        if (i2 <= 0) {
            this.B = null;
            return;
        }
        Paint paint = new Paint();
        this.B = paint;
        paint.setColor(1711276032);
    }

    @Override
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c();
    }

    @Override
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    public int getPanelHeight() {
        return this.f483c;
    }

    public e getPanelState() {
        return this.f491k;
    }

    public final void h(float f2) {
        if (!isEnabled() || this.f489i == null) {
            return;
        }
        int iC = c(f2);
        View view = this.f489i;
        int left = view.getLeft();
        h hVar = this.f504x;
        hVar.f186q = view;
        hVar.f172c = -1;
        boolean zI = hVar.i(left, iC, 0, 0);
        if (!zI && hVar.f170a == 0 && hVar.f186q != null) {
            hVar.f186q = null;
        }
        if (zI) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() == 4) {
                    childAt.setVisibility(0);
                }
            }
            postInvalidateOnAnimation();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0051  */
    public final void i() {
        int left;
        int right;
        int top;
        int bottom;
        if (getChildCount() == 0) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        View view = this.f489i;
        int i2 = 0;
        if (view == null) {
            left = 0;
            right = 0;
            top = 0;
            bottom = 0;
        } else {
            Drawable background = view.getBackground();
            if (background != null && background.getOpacity() == -1) {
                left = this.f489i.getLeft();
                right = this.f489i.getRight();
                top = this.f489i.getTop();
                bottom = this.f489i.getBottom();
            } else {
                left = 0;
                right = 0;
                top = 0;
                bottom = 0;
            }
        }
        View childAt = getChildAt(0);
        int iMax = Math.max(paddingLeft, childAt.getLeft());
        int iMax2 = Math.max(paddingTop, childAt.getTop());
        int iMin = Math.min(width, childAt.getRight());
        int iMin2 = Math.min(height, childAt.getBottom());
        if (iMax >= left && iMax2 >= top && iMin <= right && iMin2 <= bottom) {
            i2 = 4;
        }
        childAt.setVisibility(i2);
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f505y = true;
    }

    @Override
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f505y = true;
    }

    @Override
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.f486f;
        if (i2 != -1) {
            setDragView(findViewById(i2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    /* JADX WARN: Code duplicated, block: B:21:0x004c  */
    /* JADX WARN: Code duplicated, block: B:22:0x004e  */
    /* JADX WARN: Code duplicated, block: B:24:0x0051  */
    /* JADX WARN: Code duplicated, block: B:70:0x0125  */
    /* JADX WARN: Code duplicated, block: B:79:0x013d  */
    @Override
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View viewH;
        boolean z2;
        boolean z3 = this.f502v;
        h hVar = this.f504x;
        if (z3 || e()) {
            hVar.a();
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        float fAbs = Math.abs(x2 - this.f500t);
        float fAbs2 = Math.abs(y2 - this.f501u);
        int i2 = hVar.f171b;
        if (actionMasked == 0) {
            this.f497q = false;
            this.f500t = x2;
            this.f501u = y2;
            if (!f(this.f485e, (int) x2, (int) y2)) {
                hVar.b();
                this.f497q = true;
                return false;
            }
        } else if (actionMasked == 1) {
            if (hVar.f170a == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                hVar.j(motionEvent);
                return true;
            }
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (hVar.f170a == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    hVar.j(motionEvent);
                    return true;
                }
            }
        } else if (fAbs2 > i2 && fAbs > fAbs2) {
            hVar.b();
            this.f497q = true;
            return false;
        }
        int actionMasked2 = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked2 == 0) {
            hVar.b();
        }
        if (hVar.f180k == null) {
            hVar.f180k = VelocityTracker.obtain();
        }
        hVar.f180k.addMovement(motionEvent);
        h.c cVar = hVar.f185p;
        if (actionMasked2 == 0) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            hVar.m(x3, y3, pointerId);
            View viewH2 = hVar.h((int) x3, (int) y3);
            if (viewH2 == hVar.f186q && hVar.f170a == 2) {
                hVar.p(viewH2, pointerId);
            }
            if ((hVar.f177h[pointerId] & 0) != 0) {
                cVar.getClass();
            }
        } else if (actionMasked2 == 1) {
            hVar.b();
        } else if (actionMasked2 != 2) {
            if (actionMasked2 == 3) {
                hVar.b();
            } else if (actionMasked2 == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x4 = motionEvent.getX(actionIndex);
                float y4 = motionEvent.getY(actionIndex);
                hVar.m(x4, y4, pointerId2);
                int i3 = hVar.f170a;
                if (i3 == 0) {
                    if ((hVar.f177h[pointerId2] & 0) != 0) {
                        cVar.getClass();
                    }
                } else if (i3 == 2 && (viewH = hVar.h((int) x4, (int) y4)) == hVar.f186q) {
                    hVar.p(viewH, pointerId2);
                }
            } else if (actionMasked2 == 6) {
                hVar.e(motionEvent.getPointerId(actionIndex));
            }
        } else if (hVar.f173d != null && hVar.f174e != null) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i4 = 0; i4 < pointerCount; i4++) {
                int pointerId3 = motionEvent.getPointerId(i4);
                float x5 = motionEvent.getX(i4);
                float y5 = motionEvent.getY(i4);
                float f2 = x5 - hVar.f173d[pointerId3];
                float f3 = y5 - hVar.f174e[pointerId3];
                View viewH3 = hVar.h((int) x5, (int) y5);
                boolean zD = hVar.d(viewH3, f3);
                if (zD) {
                    viewH3.getLeft();
                    cVar.getClass();
                    int top = viewH3.getTop();
                    int iA = cVar.a(((int) f3) + top);
                    int i5 = SlidingUpPanelLayout.this.f494n;
                    if (i5 == 0 || (i5 > 0 && iA == top)) {
                        break;
                    }
                    hVar.l(f2, f3, pointerId3);
                    if (hVar.f170a != 1 || (zD && hVar.p(viewH3, pointerId3))) {
                        break;
                    }
                } else {
                    hVar.l(f2, f3, pointerId3);
                    if (hVar.f170a != 1) {
                        break;
                    }
                }
            }
            hVar.n(motionEvent);
        }
        return hVar.f170a == 1;
    }

    @Override
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f505y) {
            int iOrdinal = this.f491k.ordinal();
            if (iOrdinal == 0) {
                this.f493m = 1.0f;
            } else if (iOrdinal == 2) {
                this.f493m = this.f495o;
            } else if (iOrdinal != 3) {
                this.f493m = 0.0f;
            } else {
                this.f493m = d(c(0.0f) + (this.f484d ? this.f483c : -this.f483c));
            }
        }
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            c cVar = (c) childAt.getLayoutParams();
            if (childAt.getVisibility() != 8 || (i6 != 0 && !this.f505y)) {
                int measuredHeight = childAt.getMeasuredHeight();
                int iC = childAt == this.f489i ? c(this.f493m) : paddingTop;
                if (!this.f484d && childAt == this.f490j) {
                    iC = c(this.f493m) + this.f489i.getMeasuredHeight();
                }
                int i7 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin + paddingLeft;
                childAt.layout(i7, iC, childAt.getMeasuredWidth() + i7, measuredHeight + iC);
            }
        }
        if (this.f505y) {
            i();
        }
        this.f505y = false;
    }

    @Override
    public final void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int iMakeMeasureSpec;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824 && mode != Integer.MIN_VALUE) {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        }
        if (mode2 != 1073741824 && mode2 != Integer.MIN_VALUE) {
            throw new IllegalStateException("Height must have an exact value or MATCH_PARENT");
        }
        int childCount = getChildCount();
        if (childCount != 2) {
            throw new IllegalStateException("Sliding up panel layout must have exactly 2 children!");
        }
        this.f490j = getChildAt(0);
        View childAt = getChildAt(1);
        this.f489i = childAt;
        if (this.f485e == null) {
            setDragView(childAt);
        }
        int visibility = this.f489i.getVisibility();
        e eVar = e.f514d;
        if (visibility != 0) {
            this.f491k = eVar;
        }
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt2 = getChildAt(i6);
            c cVar = (c) childAt2.getLayoutParams();
            if (childAt2.getVisibility() != 8 || i6 != 0) {
                if (childAt2 == this.f490j) {
                    i4 = this.f491k != eVar ? paddingTop - this.f483c : paddingTop;
                    i5 = paddingLeft - (((ViewGroup.MarginLayoutParams) cVar).leftMargin + ((ViewGroup.MarginLayoutParams) cVar).rightMargin);
                } else {
                    i4 = childAt2 == this.f489i ? paddingTop - ((ViewGroup.MarginLayoutParams) cVar).topMargin : paddingTop;
                    i5 = paddingLeft;
                }
                int i7 = ((ViewGroup.MarginLayoutParams) cVar).width;
                int iMakeMeasureSpec2 = i7 == -2 ? View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE) : i7 == -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                int i8 = ((ViewGroup.MarginLayoutParams) cVar).height;
                if (i8 == -2) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
                } else {
                    float f2 = cVar.f510a;
                    if (f2 > 0.0f && f2 < 1.0f) {
                        i4 = (int) (i4 * f2);
                    } else if (i8 != -1) {
                        i4 = i8;
                    }
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                }
                childAt2.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
                View view = this.f489i;
                if (childAt2 == view) {
                    this.f494n = view.getMeasuredHeight() - this.f483c;
                }
            }
        }
        int i9 = this.f496p;
        e eVar2 = e.f511a;
        e eVar3 = e.f512b;
        if (i9 > 0) {
            float measuredHeight = (i9 * 1.0f) / this.f485e.getMeasuredHeight();
            this.f495o = measuredHeight;
            if (measuredHeight > 1.0f) {
                this.f495o = 1.0f;
            }
            if (this.f491k == eVar3) {
                float f3 = this.f495o;
                if (f3 < 1.0f) {
                    this.f491k = e.f513c;
                    this.f493m = f3;
                } else {
                    this.f491k = eVar2;
                    this.f493m = 1.0f;
                }
            }
            this.f496p = 0;
        } else if (i9 < 0 && this.f491k == eVar3) {
            this.f491k = eVar2;
            this.f496p = 0;
        }
        setMeasuredDimension(size, size2);
    }

    @Override
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            e eVar = (e) bundle.getSerializable("sliding_state");
            this.f491k = eVar;
            if (eVar == null) {
                eVar = e.f512b;
            }
            this.f491k = eVar;
            parcelable = bundle.getParcelable("superState");
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override
    public final Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("superState", super.onSaveInstanceState());
        e eVar = this.f491k;
        if (eVar == e.f515e) {
            eVar = this.f492l;
        }
        bundle.putSerializable("sliding_state", eVar);
        return bundle;
    }

    @Override
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i3 != i5) {
            this.f505y = true;
        }
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || e()) {
            return super.onTouchEvent(motionEvent);
        }
        try {
            this.f504x.j(motionEvent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void setAnchorOffset(int i2) {
        this.f496p = i2;
        if (this.f505y) {
            return;
        }
        requestLayout();
    }

    public void setCoveredFadeColor(int i2) {
        this.f481a = i2;
        if (this.f505y) {
            return;
        }
        requestLayout();
    }

    public void setDragView(View view) {
        View view2 = this.f485e;
        if (view2 != null) {
            view2.setOnClickListener(null);
        }
        this.f485e = view;
        if (view != null) {
            view.setClickable(true);
            this.f485e.setFocusable(false);
            this.f485e.setFocusableInTouchMode(false);
            this.f485e.setOnClickListener(new a());
        }
    }

    public void setGravity(int i2) {
        if (i2 != 48 && i2 != 80) {
            throw new IllegalArgumentException("gravity must be set to either top or bottom");
        }
        this.f484d = i2 == 80;
        if (this.f505y) {
            return;
        }
        requestLayout();
    }

    public void setPanelHeight(int i2) {
        if (getPanelHeight() == i2) {
            return;
        }
        this.f483c = i2;
        if (!this.f505y) {
            requestLayout();
        }
        if (getPanelState() == e.f512b) {
            h(0.0f);
            invalidate();
        }
    }

    public void setPanelSlideListener(d dVar) {
        this.f503w = dVar;
    }

    public void setPanelState(e eVar) {
        e eVar2;
        e eVar3;
        h hVar = this.f504x;
        if (hVar.f170a == 2) {
            Log.d("SlidingUpPanelLayout", "View is settling. Aborting animation.");
            hVar.a();
        }
        if (eVar == null || eVar == (eVar2 = e.f515e)) {
            throw new IllegalArgumentException("Panel state cannot be null or DRAGGING.");
        }
        if (isEnabled()) {
            boolean z2 = this.f505y;
            if ((!z2 && this.f489i == null) || eVar == (eVar3 = this.f491k) || eVar3 == eVar2) {
                return;
            }
            if (z2) {
                setPanelStateInternal(eVar);
                return;
            }
            if (eVar3 == e.f514d) {
                this.f489i.setVisibility(0);
                requestLayout();
            }
            int iOrdinal = eVar.ordinal();
            if (iOrdinal == 0) {
                h(1.0f);
                return;
            }
            if (iOrdinal == 1) {
                h(0.0f);
            } else if (iOrdinal == 2) {
                h(this.f495o);
            } else {
                if (iOrdinal != 3) {
                    return;
                }
                h(d(c(0.0f) + (this.f484d ? this.f483c : -this.f483c)));
            }
        }
    }

    public void setScrollableView(View view) {
        this.f487g = view;
    }

    public static class c extends ViewGroup.MarginLayoutParams {

        public static final int[] f509b = {R.attr.layout_weight};

        public final float f510a;

        public c() {
            super(-1, -1);
            this.f510a = 0.0f;
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f510a = 0.0f;
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f510a = 0.0f;
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f510a = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f509b);
            if (typedArrayObtainStyledAttributes != null) {
                this.f510a = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    @Override
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public void setDragView(int i2) {
        this.f486f = i2;
        setDragView(findViewById(i2));
    }
}
