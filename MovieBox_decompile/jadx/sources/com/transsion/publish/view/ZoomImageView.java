package com.transsion.publish.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import androidx.appcompat.widget.AppCompatImageView;

public class ZoomImageView extends AppCompatImageView implements ViewTreeObserver.OnGlobalLayoutListener {

    private boolean f48595d;

    private float f48596e;

    private float f48597f;

    private float f48598g;

    private Matrix f48599h;

    private ScaleGestureDetector f48600i;

    private GestureDetector f48601j;

    private boolean f48602k;

    private ValueAnimator f48603l;

    private OverScroller f48604m;

    private int f48605n;

    private int f48606o;

    private ValueAnimator f48607p;

    private View.OnClickListener f48608q;

    class a extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        a() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            ZoomImageView.this.scale(scaleGestureDetector);
            return true;
        }

        @Override
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            ZoomImageView.this.scaleEnd(scaleGestureDetector);
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {

        class a implements ValueAnimator.AnimatorUpdateListener {
            a() {
            }

            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (ZoomImageView.this.f48604m.computeScrollOffset()) {
                    int currX = ZoomImageView.this.f48604m.getCurrX();
                    int i10 = currX - ZoomImageView.this.f48605n;
                    ZoomImageView.this.f48605n = currX;
                    int currY = ZoomImageView.this.f48604m.getCurrY();
                    int i11 = currY - ZoomImageView.this.f48606o;
                    ZoomImageView.this.f48606o = currY;
                    if (i10 == 0 || i11 == 0) {
                        return;
                    }
                    ZoomImageView.this.p(i10, i11);
                }
            }
        }

        b() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            ZoomImageView.this.o(motionEvent.getX(), motionEvent.getY());
            return true;
        }

        @Override
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            ZoomImageView.this.f48605n = (int) motionEvent2.getX();
            ZoomImageView.this.f48606o = (int) motionEvent2.getY();
            RectF matrixRectF = ZoomImageView.this.getMatrixRectF();
            if (matrixRectF == null) {
                return false;
            }
            int i10 = ZoomImageView.this.f48605n;
            int i11 = ZoomImageView.this.f48606o;
            int iRound = Math.round(f10);
            int iRound2 = Math.round(f11);
            int iRound3 = Math.round(matrixRectF.width());
            int iRound4 = Math.round(matrixRectF.height());
            if (i10 != iRound3 || i11 != iRound4) {
                ZoomImageView.this.f48604m.fling(i10, i11, iRound, iRound2, 0, iRound3, 0, iRound4, iRound3, iRound4);
            }
            if (ZoomImageView.this.f48607p != null && ZoomImageView.this.f48607p.isStarted()) {
                ZoomImageView.this.f48607p.end();
            }
            ZoomImageView.this.f48607p = ValueAnimator.ofFloat(0.0f, 1.0f);
            ZoomImageView.this.f48607p.setDuration(500L);
            ZoomImageView.this.f48607p.addUpdateListener(new a());
            ZoomImageView.this.f48607p.start();
            return super.onFling(motionEvent, motionEvent2, f10, f11);
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            ZoomImageView.this.p(-f10, -f11);
            return true;
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (ZoomImageView.this.f48608q == null) {
                return true;
            }
            ZoomImageView.this.f48608q.onClick(ZoomImageView.this);
            return true;
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {

        final float f48612a;

        final float f48613b;

        c(float f10, float f11) {
            this.f48612a = f10;
            this.f48613b = f11;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue() / ZoomImageView.this.getScale();
            ZoomImageView.this.f48599h.postScale(fFloatValue, fFloatValue, this.f48612a, this.f48613b);
            ZoomImageView zoomImageView = ZoomImageView.this;
            zoomImageView.setImageMatrix(zoomImageView.f48599h);
            ZoomImageView.this.q();
        }
    }

    public ZoomImageView(Context context) {
        this(context, null);
    }

    private float getDoubleDrowScale() {
        float scale = getScale();
        if (Math.abs(this.f48596e - scale) < 0.05f) {
            scale = this.f48596e;
        }
        if (Math.abs(this.f48598g - scale) < 0.05f) {
            scale = this.f48598g;
        }
        if (Math.abs(this.f48597f - scale) < 0.05f) {
            scale = this.f48597f;
        }
        float f10 = this.f48598g;
        if (scale == f10) {
            return this.f48602k ? this.f48597f : this.f48596e;
        }
        this.f48602k = scale < f10;
        return f10;
    }

    public RectF getMatrixRectF() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        RectF rectF = new RectF(0.0f, 0.0f, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        getImageMatrix().mapRect(rectF);
        return rectF;
    }

    public float getScale() {
        float[] fArr = new float[9];
        this.f48599h.getValues(fArr);
        return fArr[0];
    }

    public void o(float f10, float f11) {
        ValueAnimator valueAnimator = this.f48603l;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            r(getDoubleDrowScale(), f10, f11);
        }
    }

    public void p(float f10, float f11) {
        if (getDrawable() == null) {
            return;
        }
        RectF matrixRectF = getMatrixRectF();
        if (matrixRectF.width() <= getWidth()) {
            f10 = 0.0f;
        }
        if (matrixRectF.height() <= getHeight()) {
            f11 = 0.0f;
        }
        if (f10 == 0.0f && f11 == 0.0f) {
            return;
        }
        this.f48599h.postTranslate(f10, f11);
        setImageMatrix(this.f48599h);
        q();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002f A[PHI: r1
      0x002f: PHI (r1v4 float) = (r1v1 float), (r1v9 float) binds: [B:14:0x003d, B:8:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    public void q() {
        float f10;
        float f11;
        RectF matrixRectF = getMatrixRectF();
        if (matrixRectF == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float fWidth = matrixRectF.width();
        float fHeight = matrixRectF.height();
        float f12 = matrixRectF.left;
        float f13 = matrixRectF.right;
        float f14 = matrixRectF.top;
        float f15 = matrixRectF.bottom;
        float f16 = 0.0f;
        if (f12 > 0.0f) {
            f10 = width;
            if (fWidth > f10) {
                f11 = -f12;
            } else {
                f11 = ((f10 * 1.0f) / 2.0f) - (((fWidth * 1.0f) / 2.0f) + f12);
            }
        } else {
            f10 = width;
            if (f13 >= f10) {
                f11 = 0.0f;
            } else if (fWidth > f10) {
                f11 = f10 - f13;
            } else {
                f11 = ((f10 * 1.0f) / 2.0f) - (((fWidth * 1.0f) / 2.0f) + f12);
            }
        }
        if (f14 > 0.0f) {
            float f17 = height;
            f16 = fHeight > f17 ? -f14 : ((f17 * 1.0f) / 2.0f) - (f14 + ((fHeight * 1.0f) / 2.0f));
        } else {
            float f18 = height;
            if (f15 < f18) {
                f16 = fHeight > f18 ? f18 - f15 : ((f18 * 1.0f) / 2.0f) - (f14 + ((fHeight * 1.0f) / 2.0f));
            }
        }
        this.f48599h.postTranslate(f11, f16);
        setImageMatrix(this.f48599h);
    }

    private void r(float f10, float f11, float f12) {
        ValueAnimator valueAnimator = this.f48603l;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getScale(), f10);
            this.f48603l = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(300L);
            this.f48603l.setInterpolator(new AccelerateInterpolator());
            this.f48603l.addUpdateListener(new c(f11, f12));
            this.f48603l.start();
        }
    }

    @Override
    public boolean canScrollHorizontally(int i10) {
        RectF matrixRectF = getMatrixRectF();
        if (matrixRectF == null || matrixRectF.isEmpty()) {
            return false;
        }
        if (i10 > 0) {
            return matrixRectF.right >= ((float) (getWidth() + 1));
        }
        return matrixRectF.left <= -1.0f;
    }

    @Override
    public boolean canScrollVertically(int i10) {
        RectF matrixRectF = getMatrixRectF();
        if (matrixRectF == null || matrixRectF.isEmpty()) {
            return false;
        }
        if (i10 > 0) {
            return matrixRectF.bottom >= ((float) (getHeight() + 1));
        }
        return matrixRectF.top <= -1.0f;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }

    @Override
    public void onGlobalLayout() {
        if (this.f48595d) {
            int width = getWidth();
            int height = getHeight();
            Drawable drawable = getDrawable();
            if (drawable == null) {
                return;
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            float fMin = (intrinsicWidth <= width || intrinsicHeight > height) ? 1.0f : (width * 1.0f) / intrinsicWidth;
            if (intrinsicWidth <= width && intrinsicHeight > height) {
                fMin = (height * 1.0f) / intrinsicHeight;
            }
            if ((intrinsicWidth <= width && intrinsicHeight <= height) || (intrinsicWidth >= width && intrinsicHeight >= height)) {
                fMin = Math.min((width * 1.0f) / intrinsicWidth, (height * 1.0f) / intrinsicHeight);
            }
            this.f48596e = fMin;
            this.f48598g = fMin * 2.0f;
            this.f48597f = fMin * 4.0f;
            float f10 = (width * 1.0f) / 2.0f;
            float f11 = (height * 1.0f) / 2.0f;
            this.f48599h.postTranslate(f10 - (intrinsicWidth / 2), f11 - (intrinsicHeight / 2));
            Matrix matrix = this.f48599h;
            float f12 = this.f48596e;
            matrix.postScale(f12, f12, f10, f11);
            setImageMatrix(this.f48599h);
            this.f48595d = false;
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f48601j.onTouchEvent(motionEvent) | this.f48600i.onTouchEvent(motionEvent);
    }

    public void scale(ScaleGestureDetector scaleGestureDetector) {
        if (getDrawable() == null) {
            return;
        }
        getScale();
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        this.f48599h.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
        setImageMatrix(this.f48599h);
        q();
    }

    public void scaleEnd(ScaleGestureDetector scaleGestureDetector) {
        float scaleFactor = scaleGestureDetector.getScaleFactor() * getScale();
        float f10 = this.f48596e;
        if (scaleFactor < f10) {
            r(f10, getWidth() / 2, getHeight() / 2);
            return;
        }
        float f11 = this.f48597f;
        if (scaleFactor > f11) {
            r(f11, getWidth() / 2, getHeight() / 2);
        }
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f48608q = onClickListener;
    }

    public ZoomImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ZoomImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f48595d = true;
        this.f48602k = false;
        setScaleType(ImageView.ScaleType.MATRIX);
        this.f48604m = new OverScroller(context);
        this.f48599h = new Matrix();
        this.f48600i = new ScaleGestureDetector(context, new a());
        this.f48601j = new GestureDetector(context, new b());
    }
}
