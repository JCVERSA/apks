package com.yanzhenjie.recyclerview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.yanzhenjie.recyclerview.x.R;
import defpackage.ai1;

public class SwipeMenuLayout extends FrameLayout implements ai1 {
    public static final int DEFAULT_SCROLLER_DURATION = 200;
    public int b;
    public int c;
    public int d;
    public float e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public View l;
    public b m;
    public c n;
    public a o;
    public boolean p;
    public boolean q;
    public boolean r;
    public OverScroller s;
    public VelocityTracker t;
    public int u;
    public int v;

    public SwipeMenuLayout(Context context) {
        this(context, null);
    }

    public float a(float f) {
        return (float) Math.sin((float) (((double) (f - 0.5f)) * 0.4712389167638204d));
    }

    public final int b(MotionEvent motionEvent, int i) {
        int x = (int) (motionEvent.getX() - getScrollX());
        int iG = this.o.g();
        int i2 = iG / 2;
        float f = iG;
        float f2 = i2;
        return Math.min(i > 0 ? Math.round(Math.abs((f2 + (a(Math.min(1.0f, (Math.abs(x) * 1.0f) / f)) * f2)) / i) * 1000.0f) * 4 : (int) (((Math.abs(x) / f) + 1.0f) * 100.0f), this.f);
    }

    public final void c(int i, int i2) {
        if (this.o != null) {
            if (Math.abs(getScrollX()) < this.o.f().getWidth() * this.e) {
                smoothCloseMenu();
                return;
            }
            if (Math.abs(i) > this.g || Math.abs(i2) > this.g) {
                if (isMenuOpenNotEqual()) {
                    smoothCloseMenu();
                    return;
                } else {
                    smoothOpenMenu();
                    return;
                }
            }
            if (isMenuOpen()) {
                smoothCloseMenu();
            } else {
                smoothOpenMenu();
            }
        }
    }

    @Override
    public void computeScroll() {
        a aVar;
        if (!this.s.computeScrollOffset() || (aVar = this.o) == null) {
            return;
        }
        if (aVar instanceof c) {
            scrollTo(Math.abs(this.s.getCurrX()), 0);
            invalidate();
        } else {
            scrollTo(-Math.abs(this.s.getCurrX()), 0);
            invalidate();
        }
    }

    public final void d(int i) {
        a aVar = this.o;
        if (aVar != null) {
            aVar.b(this.s, getScrollX(), i);
            invalidate();
        }
    }

    public float getOpenPercent() {
        return this.e;
    }

    public boolean hasLeftMenu() {
        b bVar = this.m;
        return bVar != null && bVar.c();
    }

    public boolean hasRightMenu() {
        c cVar = this.n;
        return cVar != null && cVar.c();
    }

    public boolean isCompleteOpen() {
        return isLeftCompleteOpen() || isRightMenuOpen();
    }

    public boolean isLeftCompleteOpen() {
        b bVar = this.m;
        return (bVar == null || bVar.i(getScrollX())) ? false : true;
    }

    public boolean isLeftMenuOpen() {
        b bVar = this.m;
        return bVar != null && bVar.j(getScrollX());
    }

    public boolean isLeftMenuOpenNotEqual() {
        b bVar = this.m;
        return bVar != null && bVar.k(getScrollX());
    }

    public boolean isMenuOpen() {
        return isLeftMenuOpen() || isRightMenuOpen();
    }

    public boolean isMenuOpenNotEqual() {
        return isLeftMenuOpenNotEqual() || isRightMenuOpenNotEqual();
    }

    public boolean isRightCompleteOpen() {
        c cVar = this.n;
        return (cVar == null || cVar.i(getScrollX())) ? false : true;
    }

    public boolean isRightMenuOpen() {
        c cVar = this.n;
        return cVar != null && cVar.j(getScrollX());
    }

    public boolean isRightMenuOpenNotEqual() {
        c cVar = this.n;
        return cVar != null && cVar.k(getScrollX());
    }

    public boolean isSwipeEnable() {
        return this.r;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.b;
        if (i != 0 && this.m == null) {
            this.m = new b(findViewById(i));
        }
        int i2 = this.d;
        if (i2 != 0 && this.n == null) {
            this.n = new c(findViewById(i2));
        }
        int i3 = this.c;
        if (i3 != 0 && this.l == null) {
            this.l = findViewById(i3);
            return;
        }
        TextView textView = new TextView(getContext());
        textView.setClickable(true);
        textView.setGravity(17);
        textView.setTextSize(16.0f);
        textView.setText("You may not have set the ContentView.");
        this.l = textView;
        addView(textView);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        if (!isSwipeEnable()) {
            return zOnInterceptTouchEvent;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            int x = (int) motionEvent.getX();
            this.h = x;
            this.j = x;
            this.k = (int) motionEvent.getY();
            return false;
        }
        if (action == 1) {
            a aVar = this.o;
            boolean z = aVar != null && aVar.h(getWidth(), motionEvent.getX());
            if (!isMenuOpen() || !z) {
                return false;
            }
            smoothCloseMenu();
            return true;
        }
        if (action == 2) {
            int x2 = (int) (motionEvent.getX() - this.j);
            return Math.abs(x2) > this.g && Math.abs(x2) > Math.abs((int) (motionEvent.getY() - ((float) this.k)));
        }
        if (action != 3) {
            return zOnInterceptTouchEvent;
        }
        if (!this.s.isFinished()) {
            this.s.abortAnimation();
        }
        return false;
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.l;
        if (view != null) {
            int measuredWidthAndState = view.getMeasuredWidthAndState();
            int measuredHeightAndState = this.l.getMeasuredHeightAndState();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.l.getLayoutParams();
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop() + layoutParams.topMargin;
            this.l.layout(paddingLeft, paddingTop, measuredWidthAndState + paddingLeft, measuredHeightAndState + paddingTop);
        }
        b bVar = this.m;
        if (bVar != null) {
            View viewF = bVar.f();
            int measuredWidthAndState2 = viewF.getMeasuredWidthAndState();
            int measuredHeightAndState2 = viewF.getMeasuredHeightAndState();
            int paddingTop2 = getPaddingTop() + ((FrameLayout.LayoutParams) viewF.getLayoutParams()).topMargin;
            viewF.layout(-measuredWidthAndState2, paddingTop2, 0, measuredHeightAndState2 + paddingTop2);
        }
        c cVar = this.n;
        if (cVar != null) {
            View viewF2 = cVar.f();
            int measuredWidthAndState3 = viewF2.getMeasuredWidthAndState();
            int measuredHeightAndState3 = viewF2.getMeasuredHeightAndState();
            int paddingTop3 = getPaddingTop() + ((FrameLayout.LayoutParams) viewF2.getLayoutParams()).topMargin;
            int measuredWidthAndState4 = getMeasuredWidthAndState();
            viewF2.layout(measuredWidthAndState4, paddingTop3, measuredWidthAndState3 + measuredWidthAndState4, measuredHeightAndState3 + paddingTop3);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isSwipeEnable()) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.t == null) {
            this.t = VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.h = (int) motionEvent.getX();
            this.i = (int) motionEvent.getY();
        } else if (action == 1) {
            int x = (int) (this.j - motionEvent.getX());
            int y = (int) (this.k - motionEvent.getY());
            this.q = false;
            this.t.computeCurrentVelocity(1000, this.v);
            int xVelocity = (int) this.t.getXVelocity();
            int iAbs = Math.abs(xVelocity);
            if (iAbs <= this.u) {
                c(x, y);
            } else if (this.o != null) {
                int iB = b(motionEvent, iAbs);
                if (this.o instanceof c) {
                    if (xVelocity < 0) {
                        d(iB);
                    } else {
                        smoothCloseMenu(iB);
                    }
                } else if (xVelocity > 0) {
                    d(iB);
                } else {
                    smoothCloseMenu(iB);
                }
                ViewCompat.postInvalidateOnAnimation(this);
            }
            this.t.clear();
            this.t.recycle();
            this.t = null;
            if (Math.abs(this.j - motionEvent.getX()) > this.g || Math.abs(this.k - motionEvent.getY()) > this.g || isLeftMenuOpen() || isRightMenuOpen()) {
                motionEvent.setAction(3);
                super.onTouchEvent(motionEvent);
                return true;
            }
        } else if (action == 2) {
            int x2 = (int) (this.h - motionEvent.getX());
            int y2 = (int) (this.i - motionEvent.getY());
            if (!this.q && Math.abs(x2) > this.g && Math.abs(x2) > Math.abs(y2)) {
                this.q = true;
            }
            if (this.q) {
                if (this.o == null || this.p) {
                    if (x2 < 0) {
                        b bVar = this.m;
                        if (bVar != null) {
                            this.o = bVar;
                        } else {
                            this.o = this.n;
                        }
                    } else {
                        c cVar = this.n;
                        if (cVar != null) {
                            this.o = cVar;
                        } else {
                            this.o = this.m;
                        }
                    }
                }
                scrollBy(x2, 0);
                this.h = (int) motionEvent.getX();
                this.i = (int) motionEvent.getY();
                this.p = false;
            }
        } else if (action == 3) {
            this.q = false;
            if (this.s.isFinished()) {
                c((int) (this.j - motionEvent.getX()), (int) (this.k - motionEvent.getY()));
            } else {
                this.s.abortAnimation();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void scrollTo(int i, int i2) {
        a aVar = this.o;
        if (aVar == null) {
            super.scrollTo(i, i2);
            return;
        }
        a.C0337a c0337aD = aVar.d(i, i2);
        this.p = c0337aD.c;
        if (c0337aD.a != getScrollX()) {
            super.scrollTo(c0337aD.a, c0337aD.b);
        }
    }

    public void setOpenPercent(float f) {
        this.e = f;
    }

    public void setScrollerDuration(int i) {
        this.f = i;
    }

    public void setSwipeEnable(boolean z) {
        this.r = z;
    }

    public void smoothCloseLeftMenu() {
        b bVar = this.m;
        if (bVar != null) {
            this.o = bVar;
            smoothCloseMenu();
        }
    }

    @Override
    public void smoothCloseMenu() {
        smoothCloseMenu(this.f);
    }

    public void smoothCloseRightMenu() {
        c cVar = this.n;
        if (cVar != null) {
            this.o = cVar;
            smoothCloseMenu();
        }
    }

    public void smoothOpenLeftMenu() {
        smoothOpenLeftMenu(this.f);
    }

    public void smoothOpenMenu() {
        d(this.f);
    }

    public void smoothOpenRightMenu() {
        smoothOpenRightMenu(this.f);
    }

    public SwipeMenuLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void smoothCloseMenu(int i) {
        a aVar = this.o;
        if (aVar != null) {
            aVar.a(this.s, getScrollX(), i);
            invalidate();
        }
    }

    public void smoothOpenLeftMenu(int i) {
        b bVar = this.m;
        if (bVar != null) {
            this.o = bVar;
            d(i);
        }
    }

    public void smoothOpenRightMenu(int i) {
        c cVar = this.n;
        if (cVar != null) {
            this.o = cVar;
            d(i);
        }
    }

    public SwipeMenuLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0.5f;
        this.f = 200;
        this.r = true;
        setClickable(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwipeMenuLayout);
        this.b = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SwipeMenuLayout_leftViewId, this.b);
        this.c = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SwipeMenuLayout_contentViewId, this.c);
        this.d = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SwipeMenuLayout_rightViewId, this.d);
        typedArrayObtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.g = viewConfiguration.getScaledTouchSlop();
        this.u = viewConfiguration.getScaledMinimumFlingVelocity();
        this.v = viewConfiguration.getScaledMaximumFlingVelocity();
        this.s = new OverScroller(getContext());
    }
}
