package com.transsion.publish.view.clip;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;

public class ClipImageView extends BaseClipImageView implements ScaleGestureDetector.OnScaleGestureListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener {
    public static float SCALE_MAX = 4.0f;

    private static float f48615t = 2.0f;

    private float f48616d;

    private boolean f48617e;

    private final float[] f48618f;

    private ScaleGestureDetector f48619g;

    private final Matrix f48620h;

    private GestureDetector f48621i;

    private boolean f48622j;

    private int f48623k;

    private float f48624l;

    private float f48625m;

    private boolean f48626n;

    private int f48627o;

    private int f48628p;

    private int f48629q;

    private int f48630r;

    private int f48631s;

    private class AutoScaleRunnable implements Runnable {
        static final float BIGGER = 1.07f;
        static final float SMALLER = 0.93f;
        private float mTargetScale;
        private float tmpScale;

        private float f48632x;

        private float f48633y;

        public AutoScaleRunnable(float f10, float f11, float f12) {
            this.mTargetScale = f10;
            this.f48632x = f11;
            this.f48633y = f12;
            if (ClipImageView.this.getScale() < this.mTargetScale) {
                this.tmpScale = BIGGER;
            } else {
                this.tmpScale = SMALLER;
            }
        }

        @Override
        public void run() {
            Matrix matrix = ClipImageView.this.f48620h;
            float f10 = this.tmpScale;
            matrix.postScale(f10, f10, this.f48632x, this.f48633y);
            ClipImageView.this.g();
            ClipImageView clipImageView = ClipImageView.this;
            clipImageView.setImageMatrix(clipImageView.f48620h);
            float scale = ClipImageView.this.getScale();
            float f11 = this.tmpScale;
            if ((f11 > 1.0f && scale < this.mTargetScale) || (f11 < 1.0f && this.mTargetScale < scale)) {
                ClipImageView.this.postDelayed(this, 16L);
                return;
            }
            float f12 = this.mTargetScale / scale;
            ClipImageView.this.f48620h.postScale(f12, f12, this.f48632x, this.f48633y);
            ClipImageView.this.g();
            ClipImageView clipImageView2 = ClipImageView.this;
            clipImageView2.setImageMatrix(clipImageView2.f48620h);
            ClipImageView.this.f48622j = false;
        }
    }

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (ClipImageView.this.f48622j) {
                return true;
            }
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (ClipImageView.this.getScale() < ClipImageView.f48615t) {
                ClipImageView clipImageView = ClipImageView.this;
                clipImageView.postDelayed(clipImageView.new AutoScaleRunnable(ClipImageView.f48615t, x10, y10), 16L);
                ClipImageView.this.f48622j = true;
            } else {
                ClipImageView clipImageView2 = ClipImageView.this;
                clipImageView2.postDelayed(clipImageView2.new AutoScaleRunnable(clipImageView2.f48616d, x10, y10), 16L);
                ClipImageView.this.f48622j = true;
            }
            return true;
        }
    }

    public ClipImageView(Context context) {
        this(context, null);
    }

    public void g() {
        float f10;
        RectF matrixRectF = getMatrixRectF();
        int width = getWidth();
        int height = getHeight();
        double dWidth = ((double) matrixRectF.width()) + 0.01d;
        int i10 = this.f48628p;
        float f11 = 0.0f;
        if (dWidth >= width - (i10 * 2)) {
            float f12 = matrixRectF.left;
            f10 = f12 > ((float) i10) ? (-f12) + i10 : 0.0f;
            float f13 = matrixRectF.right;
            if (f13 < width - i10) {
                f10 = (width - i10) - f13;
            }
        } else {
            f10 = 0.0f;
        }
        double dHeight = ((double) matrixRectF.height()) + 0.01d;
        int i11 = this.f48631s;
        if (dHeight >= height - (i11 * 2)) {
            float f14 = matrixRectF.top;
            f11 = f14 > ((float) i11) ? (-f14) + i11 : 0.0f;
            float f15 = matrixRectF.bottom;
            if (f15 < height - i11) {
                f11 = (height - i11) - f15;
            }
        }
        this.f48620h.postTranslate(f10, f11);
    }

    private RectF getMatrixRectF() {
        Matrix matrix = this.f48620h;
        RectF rectF = new RectF();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(rectF);
        }
        return rectF;
    }

    private boolean h(float f10, float f11) {
        return Math.sqrt((double) ((f10 * f10) + (f11 * f11))) >= ((double) this.f48623k);
    }

    public Bitmap clip() {
        return clip(null);
    }

    public final float getScale() {
        this.f48620h.getValues(this.f48618f);
        return this.f48618f[0];
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    @Override
    public void onGlobalLayout() {
        Drawable drawable;
        if (!this.f48617e || (drawable = getDrawable()) == null) {
            return;
        }
        if (this.f48629q == 0) {
            this.f48631s = (getHeight() - (getWidth() - (this.f48628p * 2))) / 2;
        } else {
            this.f48628p = (getWidth() - this.f48629q) / 2;
            this.f48631s = (getHeight() - this.f48630r) / 2;
        }
        float width = getWidth();
        float height = getHeight();
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        float fMax = Math.max((getWidth() - (this.f48628p * 2)) / intrinsicWidth, (getHeight() - (this.f48631s * 2)) / intrinsicHeight);
        this.f48616d = fMax;
        f48615t = fMax * 2.0f;
        SCALE_MAX = 4.0f * fMax;
        this.f48620h.postTranslate((width - intrinsicWidth) / 2.0f, (height - intrinsicHeight) / 2.0f);
        this.f48620h.postScale(fMax, fMax, getWidth() / 2, getHeight() / 2);
        setImageMatrix(this.f48620h);
        this.f48617e = false;
    }

    @Override
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scale = getScale();
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (getDrawable() == null) {
            return true;
        }
        float f10 = SCALE_MAX;
        if ((scale < f10 && scaleFactor > 1.0f) || (scale > this.f48616d && scaleFactor < 1.0f)) {
            float f11 = scaleFactor * scale;
            float f12 = this.f48616d;
            if (f11 < f12) {
                scaleFactor = f12 / scale;
            }
            if (scaleFactor * scale > f10) {
                scaleFactor = f10 / scale;
            }
            this.f48620h.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            g();
            setImageMatrix(this.f48620h);
        }
        return true;
    }

    @Override
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009a  */
    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f48621i.onTouchEvent(motionEvent)) {
            return true;
        }
        this.f48619g.onTouchEvent(motionEvent);
        int pointerCount = motionEvent.getPointerCount();
        float x10 = 0.0f;
        float y10 = 0.0f;
        for (int i10 = 0; i10 < pointerCount; i10++) {
            x10 += motionEvent.getX(i10);
            y10 += motionEvent.getY(i10);
        }
        float f10 = pointerCount;
        float f11 = x10 / f10;
        float f12 = y10 / f10;
        if (pointerCount != this.f48627o) {
            this.f48626n = false;
            this.f48624l = f11;
            this.f48625m = f12;
        }
        this.f48627o = pointerCount;
        int action = motionEvent.getAction();
        if (action == 1) {
            this.f48627o = 0;
        } else if (action == 2) {
            float f13 = f11 - this.f48624l;
            float f14 = f12 - this.f48625m;
            if (!this.f48626n) {
                this.f48626n = h(f13, f14);
            }
            if (this.f48626n && getDrawable() != null) {
                RectF matrixRectF = getMatrixRectF();
                if (matrixRectF.width() <= getWidth() - (this.f48628p * 2)) {
                    f13 = 0.0f;
                }
                this.f48620h.postTranslate(f13, matrixRectF.height() > ((float) (getHeight() - (this.f48631s * 2))) ? f14 : 0.0f);
                g();
                setImageMatrix(this.f48620h);
            }
            this.f48624l = f11;
            this.f48625m = f12;
        } else if (action == 3) {
            this.f48627o = 0;
        }
        return true;
    }

    public void setCropWH(int i10, int i11) {
        this.f48629q = i10;
        this.f48630r = i11;
    }

    public ClipImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f48616d = 1.0f;
        this.f48617e = true;
        this.f48618f = new float[9];
        this.f48619g = null;
        this.f48620h = new Matrix();
        this.f48628p = 16;
        setScaleType(ImageView.ScaleType.MATRIX);
        this.f48621i = new GestureDetector(context, new a());
        this.f48619g = new ScaleGestureDetector(context, this);
        setOnTouchListener(this);
    }

    public Bitmap clip(Rect rect) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        draw(new Canvas(bitmapCreateBitmap));
        if (rect == null) {
            return Bitmap.createBitmap(bitmapCreateBitmap, this.f48628p, this.f48631s, getWidth() - (this.f48628p * 2), getWidth() - (this.f48628p * 2));
        }
        return (rect.width() <= 0 || rect.height() <= 0) ? bitmapCreateBitmap : Bitmap.createBitmap(bitmapCreateBitmap, rect.left, rect.top, rect.width(), rect.height());
    }
}
