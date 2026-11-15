package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;

abstract class HeaderBehavior extends i {

    private Runnable f27422d;

    OverScroller f27423e;

    private boolean f27424f;

    private int f27425g;

    private int f27426h;

    private int f27427i;

    private VelocityTracker f27428j;

    private class FlingRunnable implements Runnable {
        private final View layout;
        private final CoordinatorLayout parent;

        FlingRunnable(CoordinatorLayout coordinatorLayout, View view) {
            this.parent = coordinatorLayout;
            this.layout = view;
        }

        @Override
        public void run() {
            OverScroller overScroller;
            if (this.layout == null || (overScroller = HeaderBehavior.this.f27423e) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                HeaderBehavior.this.N(this.parent, this.layout);
                return;
            }
            HeaderBehavior headerBehavior = HeaderBehavior.this;
            headerBehavior.P(this.parent, this.layout, headerBehavior.f27423e.getCurrY());
            ViewCompat.postOnAnimation(this.layout, this);
        }
    }

    public HeaderBehavior() {
        this.f27425g = -1;
        this.f27427i = -1;
    }

    private void I() {
        if (this.f27428j == null) {
            this.f27428j = VelocityTracker.obtain();
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0085  */
    /* JADX WARN: Code duplicated, block: B:33:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:37:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z10;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            VelocityTracker velocityTracker3 = this.f27428j;
            if (velocityTracker3 != null) {
                velocityTracker3.addMovement(motionEvent);
                this.f27428j.computeCurrentVelocity(1000);
                J(coordinatorLayout, view, -L(view), 0, this.f27428j.getYVelocity(this.f27425g));
                z10 = true;
            }
            this.f27424f = false;
            this.f27425g = -1;
            velocityTracker = this.f27428j;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f27428j = null;
            }
            velocityTracker2 = this.f27428j;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            if (this.f27424f) {
                return true;
            }
        }
        if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f27425g);
            if (iFindPointerIndex == -1) {
                return false;
            }
            int y10 = (int) motionEvent.getY(iFindPointerIndex);
            int i10 = this.f27426h - y10;
            this.f27426h = y10;
            O(coordinatorLayout, view, i10, K(view), 0);
        } else if (actionMasked != 3) {
            if (actionMasked == 6) {
                int i11 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                this.f27425g = motionEvent.getPointerId(i11);
                this.f27426h = (int) (motionEvent.getY(i11) + 0.5f);
            }
        }
        z10 = false;
        velocityTracker2 = this.f27428j;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return !this.f27424f || z10;
        z10 = false;
        this.f27424f = false;
        this.f27425g = -1;
        velocityTracker = this.f27428j;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f27428j = null;
        }
        velocityTracker2 = this.f27428j;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.f27424f) {
            return true;
        }
    }

    boolean H(View view) {
        return false;
    }

    final boolean J(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, float f10) {
        Runnable runnable = this.f27422d;
        if (runnable != null) {
            view.removeCallbacks(runnable);
            this.f27422d = null;
        }
        if (this.f27423e == null) {
            this.f27423e = new OverScroller(view.getContext());
        }
        this.f27423e.fling(0, E(), 0, Math.round(f10), 0, 0, i10, i11);
        if (!this.f27423e.computeScrollOffset()) {
            N(coordinatorLayout, view);
            return false;
        }
        FlingRunnable flingRunnable = new FlingRunnable(coordinatorLayout, view);
        this.f27422d = flingRunnable;
        ViewCompat.postOnAnimation(view, flingRunnable);
        return true;
    }

    int K(View view) {
        return -view.getHeight();
    }

    int L(View view) {
        return view.getHeight();
    }

    int M() {
        return E();
    }

    void N(CoordinatorLayout coordinatorLayout, View view) {
    }

    final int O(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
        return Q(coordinatorLayout, view, M() - i10, i11, i12);
    }

    int P(CoordinatorLayout coordinatorLayout, View view, int i10) {
        return Q(coordinatorLayout, view, i10, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    int Q(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
        int iB;
        int iE = E();
        if (i11 == 0 || iE < i11 || iE > i12 || iE == (iB = d1.a.b(i10, i11, i12))) {
            return 0;
        }
        G(iB);
        return iE - iB;
    }

    @Override
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f27427i < 0) {
            this.f27427i = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f27424f) {
            int i10 = this.f27425g;
            if (i10 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i10)) == -1) {
                return false;
            }
            int y10 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y10 - this.f27426h) > this.f27427i) {
                this.f27426h = y10;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f27425g = -1;
            int x10 = (int) motionEvent.getX();
            int y11 = (int) motionEvent.getY();
            boolean z10 = H(view) && coordinatorLayout.isPointInChildBounds(view, x10, y11);
            this.f27424f = z10;
            if (z10) {
                this.f27426h = y11;
                this.f27425g = motionEvent.getPointerId(0);
                I();
                OverScroller overScroller = this.f27423e;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f27423e.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f27428j;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27425g = -1;
        this.f27427i = -1;
    }
}
