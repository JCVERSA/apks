package com.gw.swipeback;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.color.utilities.Contrast;
import defpackage.vkb;

public class SwipeBackLayout extends ViewGroup {
    public static final int FROM_BOTTOM = 8;
    public static final int FROM_LEFT = 1;
    public static final int FROM_RIGHT = 2;
    public static final int FROM_TOP = 4;
    private static final String TAG = "SwipeBackLayout";
    private float autoFinishedVelocityLimit;
    private c defaultSwipeBackListener;
    private float downX;
    private float downY;
    private int height;
    private View innerScrollView;
    private boolean isSwipeFromEdge;
    private int leftOffset;
    private int mDirectionMode;
    private View mDragContentView;
    private final ViewDragHelper mDragHelper;
    private c mSwipeBackListener;
    private int mTouchSlop;
    private int maskAlpha;
    private float swipeBackFactor;
    private float swipeBackFraction;
    private int topOffset;
    private int touchedEdge;
    private int width;

    public class a implements c {
        public a() {
        }

        @Override
        public void a(View view, float f, float f2) {
            SwipeBackLayout.this.invalidate();
        }

        @Override
        public void b(View view, boolean z) {
            if (z) {
                SwipeBackLayout.this.finish();
            }
        }
    }

    public class b extends ViewDragHelper.Callback {
        public b() {
        }

        @Override
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            SwipeBackLayout swipeBackLayout = SwipeBackLayout.this;
            swipeBackLayout.leftOffset = swipeBackLayout.getPaddingLeft();
            if (SwipeBackLayout.this.c()) {
                if (SwipeBackLayout.this.mDirectionMode == 1 && !vkb.c(SwipeBackLayout.this.innerScrollView, SwipeBackLayout.this.downX, SwipeBackLayout.this.downY, false)) {
                    SwipeBackLayout swipeBackLayout2 = SwipeBackLayout.this;
                    swipeBackLayout2.leftOffset = Math.min(Math.max(i, swipeBackLayout2.getPaddingLeft()), SwipeBackLayout.this.width);
                } else if (SwipeBackLayout.this.mDirectionMode == 2 && !vkb.b(SwipeBackLayout.this.innerScrollView, SwipeBackLayout.this.downX, SwipeBackLayout.this.downY, false)) {
                    SwipeBackLayout swipeBackLayout3 = SwipeBackLayout.this;
                    swipeBackLayout3.leftOffset = Math.min(Math.max(i, -swipeBackLayout3.width), SwipeBackLayout.this.getPaddingRight());
                }
            }
            return SwipeBackLayout.this.leftOffset;
        }

        @Override
        public int clampViewPositionVertical(View view, int i, int i2) {
            SwipeBackLayout swipeBackLayout = SwipeBackLayout.this;
            swipeBackLayout.topOffset = swipeBackLayout.getPaddingTop();
            if (SwipeBackLayout.this.c()) {
                if (SwipeBackLayout.this.mDirectionMode == 4 && !vkb.d(SwipeBackLayout.this.innerScrollView, SwipeBackLayout.this.downX, SwipeBackLayout.this.downY, false)) {
                    SwipeBackLayout swipeBackLayout2 = SwipeBackLayout.this;
                    swipeBackLayout2.topOffset = Math.min(Math.max(i, swipeBackLayout2.getPaddingTop()), SwipeBackLayout.this.height);
                } else if (SwipeBackLayout.this.mDirectionMode == 8 && !vkb.a(SwipeBackLayout.this.innerScrollView, SwipeBackLayout.this.downX, SwipeBackLayout.this.downY, false)) {
                    SwipeBackLayout swipeBackLayout3 = SwipeBackLayout.this;
                    swipeBackLayout3.topOffset = Math.min(Math.max(i, -swipeBackLayout3.height), SwipeBackLayout.this.getPaddingBottom());
                }
            }
            return SwipeBackLayout.this.topOffset;
        }

        @Override
        public int getViewHorizontalDragRange(View view) {
            return SwipeBackLayout.this.width;
        }

        @Override
        public int getViewVerticalDragRange(View view) {
            return SwipeBackLayout.this.height;
        }

        @Override
        public void onEdgeTouched(int i, int i2) {
            super.onEdgeTouched(i, i2);
            SwipeBackLayout.this.touchedEdge = i;
        }

        @Override
        public void onViewDragStateChanged(int i) {
            super.onViewDragStateChanged(i);
            if (i != 0 || SwipeBackLayout.this.mSwipeBackListener == null) {
                return;
            }
            if (SwipeBackLayout.this.swipeBackFraction == 0.0f) {
                SwipeBackLayout.this.mSwipeBackListener.b(SwipeBackLayout.this.mDragContentView, false);
            } else if (SwipeBackLayout.this.swipeBackFraction == 1.0f) {
                SwipeBackLayout.this.mSwipeBackListener.b(SwipeBackLayout.this.mDragContentView, true);
            }
        }

        @Override
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            super.onViewPositionChanged(view, i, i2, i3, i4);
            int iAbs = Math.abs(i);
            int iAbs2 = Math.abs(i2);
            int i5 = SwipeBackLayout.this.mDirectionMode;
            if (i5 == 1 || i5 == 2) {
                SwipeBackLayout swipeBackLayout = SwipeBackLayout.this;
                swipeBackLayout.swipeBackFraction = (iAbs * 1.0f) / swipeBackLayout.width;
            } else if (i5 == 4 || i5 == 8) {
                SwipeBackLayout swipeBackLayout2 = SwipeBackLayout.this;
                swipeBackLayout2.swipeBackFraction = (iAbs2 * 1.0f) / swipeBackLayout2.height;
            }
            if (SwipeBackLayout.this.mSwipeBackListener != null) {
                SwipeBackLayout.this.mSwipeBackListener.a(SwipeBackLayout.this.mDragContentView, SwipeBackLayout.this.swipeBackFraction, SwipeBackLayout.this.swipeBackFactor);
            }
        }

        @Override
        public void onViewReleased(View view, float f, float f2) {
            super.onViewReleased(view, f, f2);
            SwipeBackLayout swipeBackLayout = SwipeBackLayout.this;
            swipeBackLayout.leftOffset = swipeBackLayout.topOffset = 0;
            if (!SwipeBackLayout.this.c()) {
                SwipeBackLayout.this.touchedEdge = -1;
                return;
            }
            SwipeBackLayout.this.touchedEdge = -1;
            if (!SwipeBackLayout.this.a(f, f2) && SwipeBackLayout.this.swipeBackFraction < SwipeBackLayout.this.swipeBackFactor) {
                int i = SwipeBackLayout.this.mDirectionMode;
                if (i == 1 || i == 2) {
                    SwipeBackLayout swipeBackLayout2 = SwipeBackLayout.this;
                    swipeBackLayout2.smoothScrollToX(swipeBackLayout2.getPaddingLeft());
                    return;
                } else {
                    if (i == 4 || i == 8) {
                        SwipeBackLayout swipeBackLayout3 = SwipeBackLayout.this;
                        swipeBackLayout3.smoothScrollToY(swipeBackLayout3.getPaddingTop());
                        return;
                    }
                    return;
                }
            }
            int i2 = SwipeBackLayout.this.mDirectionMode;
            if (i2 == 1) {
                SwipeBackLayout swipeBackLayout4 = SwipeBackLayout.this;
                swipeBackLayout4.smoothScrollToX(swipeBackLayout4.width);
                return;
            }
            if (i2 == 2) {
                SwipeBackLayout swipeBackLayout5 = SwipeBackLayout.this;
                swipeBackLayout5.smoothScrollToX(-swipeBackLayout5.width);
            } else if (i2 == 4) {
                SwipeBackLayout swipeBackLayout6 = SwipeBackLayout.this;
                swipeBackLayout6.smoothScrollToY(swipeBackLayout6.height);
            } else {
                if (i2 != 8) {
                    return;
                }
                SwipeBackLayout swipeBackLayout7 = SwipeBackLayout.this;
                swipeBackLayout7.smoothScrollToY(-swipeBackLayout7.height);
            }
        }

        @Override
        public boolean tryCaptureView(View view, int i) {
            return view == SwipeBackLayout.this.mDragContentView;
        }

        public b(SwipeBackLayout swipeBackLayout, a aVar) {
            this();
        }
    }

    public interface c {
        void a(View view, float f, float f2);

        void b(View view, boolean z);
    }

    public SwipeBackLayout(@NonNull Context context) {
        this(context, null);
    }

    public final boolean a(float f, float f2) {
        int i = this.mDirectionMode;
        if (i == 1) {
            return f > this.autoFinishedVelocityLimit;
        }
        if (i == 2) {
            return f < (-this.autoFinishedVelocityLimit);
        }
        if (i != 4) {
            return i == 8 && f2 < (-this.autoFinishedVelocityLimit);
        }
        return f2 > this.autoFinishedVelocityLimit;
    }

    public void attachToActivity(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
        viewGroup2.setBackgroundColor(0);
        viewGroup.removeView(viewGroup2);
        addView(viewGroup2);
        viewGroup.addView(this);
    }

    public final void b(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwipeBackLayout);
        setDirectionMode(typedArrayObtainStyledAttributes.getInt(R.styleable.SwipeBackLayout_directionMode, this.mDirectionMode));
        setSwipeBackFactor(typedArrayObtainStyledAttributes.getFloat(R.styleable.SwipeBackLayout_swipeBackFactor, this.swipeBackFactor));
        setMaskAlpha(typedArrayObtainStyledAttributes.getInteger(R.styleable.SwipeBackLayout_maskAlpha, this.maskAlpha));
        this.isSwipeFromEdge = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwipeBackLayout_isSwipeFromEdge, this.isSwipeFromEdge);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final boolean c() {
        if (!this.isSwipeFromEdge) {
            return true;
        }
        int i = this.mDirectionMode;
        if (i == 1) {
            return this.touchedEdge == 1;
        }
        if (i == 2) {
            return this.touchedEdge == 2;
        }
        if (i != 4) {
            return i != 8 || this.touchedEdge == 8;
        }
        return this.touchedEdge == 4;
    }

    @Override
    public void computeScroll() {
        if (this.mDragHelper.continueSettling(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void finish() {
        ((Activity) getContext()).finish();
    }

    public float getAutoFinishedVelocityLimit() {
        return this.autoFinishedVelocityLimit;
    }

    public int getDirectionMode() {
        return this.mDirectionMode;
    }

    public int getMaskAlpha() {
        return this.maskAlpha;
    }

    public float getSwipeBackFactor() {
        return this.swipeBackFactor;
    }

    public boolean isSwipeFromEdge() {
        return this.isSwipeFromEdge;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i = this.maskAlpha;
        canvas.drawARGB(i - ((int) (i * this.swipeBackFraction)), 0, 0, 0);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View view;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            this.downX = motionEvent.getRawX();
            this.downY = motionEvent.getRawY();
        } else if (actionMasked == 2 && (view = this.innerScrollView) != null && vkb.e(view, this.downX, this.downY)) {
            float fAbs = Math.abs(motionEvent.getRawX() - this.downX);
            float fAbs2 = Math.abs(motionEvent.getRawY() - this.downY);
            int i = this.mDirectionMode;
            if (i == 1 || i == 2) {
                if (fAbs2 > this.mTouchSlop && fAbs2 > fAbs) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
            } else if ((i == 4 || i == 8) && fAbs > this.mTouchSlop && fAbs > fAbs2) {
                return super.onInterceptTouchEvent(motionEvent);
            }
        }
        boolean zShouldInterceptTouchEvent = this.mDragHelper.shouldInterceptTouchEvent(motionEvent);
        return zShouldInterceptTouchEvent ? zShouldInterceptTouchEvent : super.onInterceptTouchEvent(motionEvent);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (getChildCount() == 0) {
            return;
        }
        int paddingLeft = getPaddingLeft() + this.leftOffset;
        int paddingTop = getPaddingTop() + this.topOffset;
        this.mDragContentView.layout(paddingLeft, paddingTop, this.mDragContentView.getMeasuredWidth() + paddingLeft, this.mDragContentView.getMeasuredHeight() + paddingTop);
        if (z) {
            this.width = getWidth();
            this.height = getHeight();
        }
        this.innerScrollView = vkb.f(this);
    }

    @Override
    public void onMeasure(int i, int i2) {
        int measuredHeight;
        super.onMeasure(i, i2);
        int childCount = getChildCount();
        if (childCount > 1) {
            throw new IllegalStateException("SwipeBackLayout must contains only one direct child.");
        }
        int measuredWidth = 0;
        if (childCount > 0) {
            measureChildren(i, i2);
            View childAt = getChildAt(0);
            this.mDragContentView = childAt;
            measuredWidth = childAt.getMeasuredWidth();
            measuredHeight = this.mDragContentView.getMeasuredHeight();
        } else {
            measuredHeight = 0;
        }
        setMeasuredDimension(View.resolveSize(measuredWidth, i) + getPaddingLeft() + getPaddingRight(), View.resolveSize(measuredHeight, i2) + getPaddingTop() + getPaddingBottom());
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mDragHelper.processTouchEvent(motionEvent);
        return true;
    }

    public void setAutoFinishedVelocityLimit(float f) {
        this.autoFinishedVelocityLimit = f;
    }

    public void setDirectionMode(int i) {
        this.mDirectionMode = i;
        this.mDragHelper.setEdgeTrackingEnabled(i);
    }

    public void setMaskAlpha(@IntRange(from = 0, to = 255) int i) {
        if (i > 255) {
            i = 255;
        } else if (i < 0) {
            i = 0;
        }
        this.maskAlpha = i;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006 A[PHI: r0
      0x0006: PHI (r0v2 float) = (r0v0 float), (r0v1 float) binds: [B:3:0x0004, B:6:0x000b] A[DONT_GENERATE, DONT_INLINE]] */
    public void setSwipeBackFactor(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        float f2 = 1.0f;
        if (f > 1.0f) {
            f = f2;
        } else {
            f2 = 0.0f;
            if (f < 0.0f) {
                f = f2;
            }
        }
        this.swipeBackFactor = f;
    }

    public void setSwipeBackListener(c cVar) {
        this.mSwipeBackListener = cVar;
    }

    public void setSwipeFromEdge(boolean z) {
        this.isSwipeFromEdge = z;
    }

    public void smoothScrollToX(int i) {
        if (this.mDragHelper.settleCapturedViewAt(i, getPaddingTop())) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void smoothScrollToY(int i) {
        if (this.mDragHelper.settleCapturedViewAt(getPaddingLeft(), i)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public SwipeBackLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwipeBackLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDirectionMode = 1;
        this.swipeBackFactor = 0.5f;
        this.maskAlpha = 125;
        this.isSwipeFromEdge = false;
        this.leftOffset = 0;
        this.topOffset = 0;
        this.autoFinishedVelocityLimit = 2000.0f;
        this.touchedEdge = -1;
        this.defaultSwipeBackListener = new a();
        setWillNotDraw(false);
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, 1.0f, new b(this, null));
        this.mDragHelper = viewDragHelperCreate;
        viewDragHelperCreate.setEdgeTrackingEnabled(this.mDirectionMode);
        this.mTouchSlop = viewDragHelperCreate.getTouchSlop();
        setSwipeBackListener(this.defaultSwipeBackListener);
        b(context, attributeSet);
    }
}
