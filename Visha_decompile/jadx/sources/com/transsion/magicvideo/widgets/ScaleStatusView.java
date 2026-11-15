package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.annotation.Nullable;
import com.transsion.magicvideo.data.VideoSizeType;
import com.transsion.widgets.ScaleTouchView.OnScaleSurfaceListener;
import defpackage.d39;
import java.text.NumberFormat;

public class ScaleStatusView extends View {
    public Paint b;
    public Paint c;
    public Paint d;
    public RectF e;
    public RectF f;
    public RectF g;
    public RectF h;
    public RectF i;
    public RectF j;
    public RectF k;
    public Matrix l;
    public float[] m;
    public VideoSizeType n;
    public OnScaleSurfaceListener o;
    public boolean p;
    public boolean q;
    public float r;
    public int s;
    public int t;
    public final float[] u;
    public GestureDetector v;
    public ScaleGestureDetector w;

    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override
        public boolean onDown(MotionEvent motionEvent) {
            return super.onDown(motionEvent);
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (motionEvent2.getPointerCount() > 1) {
                return ScaleStatusView.this.o.onScroll(motionEvent, motionEvent2, f, f2);
            }
            ScaleStatusView.this.j.set(ScaleStatusView.this.e);
            ScaleStatusView.this.j.offset(-f, -f2);
            ScaleStatusView scaleStatusView = ScaleStatusView.this;
            scaleStatusView.checkBorder(scaleStatusView.j, ScaleStatusView.this.f);
            ScaleStatusView.this.m[0] = ScaleStatusView.this.j.left - ScaleStatusView.this.e.left;
            ScaleStatusView.this.m[1] = ScaleStatusView.this.j.top - ScaleStatusView.this.e.top;
            ScaleStatusView.this.e.set(ScaleStatusView.this.j);
            float fWidth = ScaleStatusView.this.i.width() / ScaleStatusView.this.h.width();
            float fHeight = ScaleStatusView.this.i.height() / ScaleStatusView.this.h.height();
            ScaleStatusView.this.m[0] = (-ScaleStatusView.this.m[0]) * fWidth;
            ScaleStatusView.this.m[1] = (-ScaleStatusView.this.m[1]) * fHeight;
            ScaleStatusView.this.invalidate();
            ScaleStatusView.this.o.controlVideoRect(ScaleStatusView.this.m);
            return true;
        }
    }

    public class b implements ScaleGestureDetector.OnScaleGestureListener {
        public b() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            return ScaleStatusView.this.o.onScale(scaleGestureDetector);
        }

        @Override
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return ScaleStatusView.this.o.onScaleBegin(scaleGestureDetector);
        }

        @Override
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            ScaleStatusView.this.o.onScaleEnd(scaleGestureDetector);
        }
    }

    public ScaleStatusView(Context context) {
        super(context);
        this.b = new Paint();
        this.c = new Paint();
        this.d = new Paint();
        this.e = new RectF();
        this.f = new RectF();
        this.g = new RectF();
        this.h = new RectF();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        this.l = new Matrix();
        this.m = new float[2];
        this.n = VideoSizeType.SIZE_TYPE_1_1;
        this.p = false;
        this.q = false;
        this.u = new float[9];
        this.v = new GestureDetector(getContext(), new a());
        this.w = new ScaleGestureDetector(getContext(), new b());
        k();
    }

    public static String getPercentValue(float f) {
        NumberFormat percentInstance = NumberFormat.getPercentInstance();
        percentInstance.setMaximumFractionDigits(0);
        return percentInstance.format(f);
    }

    public void checkBorder(RectF rectF, RectF rectF2) {
        float f = rectF.left;
        float f2 = rectF2.left;
        if (f < f2) {
            rectF.offset(f2 - f, 0.0f);
        }
        float f3 = rectF.right;
        float f4 = rectF2.right;
        if (f3 > f4) {
            rectF.offset(f4 - f3, 0.0f);
        }
        float f5 = rectF.top;
        float f6 = rectF2.top;
        if (f5 < f6) {
            rectF.offset(0.0f, f6 - f5);
        }
        float f7 = rectF.bottom;
        float f8 = rectF2.bottom;
        if (f7 > f8) {
            rectF.offset(0.0f, f8 - f7);
        }
    }

    public float getScale(Matrix matrix) {
        return (float) Math.sqrt(((float) Math.pow(j(matrix, 0), 2.0d)) + ((float) Math.pow(j(matrix, 3), 2.0d)));
    }

    public float[] getTranslate(Matrix matrix) {
        return new float[]{j(matrix, 2), j(matrix, 5)};
    }

    public final void h(Matrix matrix, RectF rectF, RectF rectF2) {
        matrix.reset();
        matrix.postTranslate(rectF.left - rectF2.left, rectF.top - rectF2.top);
        matrix.postScale(rectF.width() / rectF2.width(), rectF.height() / rectF2.height(), rectF.left, rectF.top);
    }

    public final RectF i(RectF rectF, RectF rectF2) {
        RectF rectF3 = new RectF();
        float f = rectF.left;
        float f2 = rectF2.left;
        if (f <= f2) {
            f = f2;
        }
        rectF3.left = f;
        float f3 = rectF.top;
        float f4 = rectF2.top;
        if (f3 <= f4) {
            f3 = f4;
        }
        rectF3.top = f3;
        float f5 = rectF.right;
        float f6 = rectF2.right;
        if (f5 >= f6) {
            f5 = f6;
        }
        rectF3.right = f5;
        float f7 = rectF.bottom;
        float f8 = rectF2.bottom;
        if (f7 >= f8) {
            f7 = f8;
        }
        rectF3.bottom = f7;
        return rectF3;
    }

    public boolean isTouchDrag(MotionEvent motionEvent) {
        boolean z = this.o.isInScaleMode() && this.f.contains(motionEvent.getX(), motionEvent.getY());
        if (z) {
            onDragStatusChange(true);
        }
        return z;
    }

    public final float j(Matrix matrix, int i) {
        matrix.getValues(this.u);
        return this.u[i];
    }

    public final void k() {
        this.c.setStyle(Paint.Style.FILL_AND_STROKE);
        this.c.setColor(Color.parseColor("#66D1D1D1"));
        this.c.setStrokeWidth(d39.a(getContext(), 1.0f));
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setColor(Color.parseColor("#FFE23300"));
        this.b.setStrokeWidth(d39.a(getContext(), 1.0f));
        this.d.setStyle(Paint.Style.FILL);
        this.d.setColor(Color.parseColor("#FFFFFFFF"));
        this.d.setTypeface(Typeface.DEFAULT_BOLD);
        this.d.setTextSize(d39.a(getContext(), 16.0f));
        this.d.setAntiAlias(true);
    }

    public final void l(VideoSizeType videoSizeType) {
        float f;
        boolean z = getContext().getResources().getConfiguration().orientation == 1;
        this.q = getContext().getResources().getConfiguration().getLayoutDirection() == 1;
        float f2 = 36.0f;
        if (videoSizeType == VideoSizeType.SIZE_TYPE_1_1) {
            f = z ? 54.0f : 30.0f;
            this.f.set(0.0f, 0.0f, d39.a(getContext(), 100.0f), d39.a(getContext(), 100.0f));
        } else if (videoSizeType == VideoSizeType.SIZE_TYPE_9_16) {
            f = z ? 54.0f : 30.0f;
            this.f.set(0.0f, 0.0f, d39.a(getContext(), 62.5f), d39.a(getContext(), 100.0f));
            f2 = 54.75f;
        } else {
            f = z ? 72.75f : 48.75f;
            this.f.set(0.0f, 0.0f, d39.a(getContext(), 100.0f), d39.a(getContext(), 62.5f));
        }
        float fA = d39.a(getContext(), f2);
        float fA2 = d39.a(getContext(), f);
        if (this.q) {
            fA = (this.t - fA) - this.f.width();
        }
        this.f.offset(fA, fA2);
        Paint.FontMetricsInt fontMetricsInt = this.d.getFontMetricsInt();
        RectF rectF = this.f;
        this.s = (int) ((((rectF.bottom + rectF.top) - fontMetricsInt.bottom) - fontMetricsInt.top) / 2.0f);
    }

    public boolean onDragStatusChange(boolean z) {
        this.p = z;
        OnScaleSurfaceListener onScaleSurfaceListener = this.o;
        if (onScaleSurfaceListener != null) {
            onScaleSurfaceListener.onDragStatusChange(z);
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0038 A[PHI: r4
      0x0038: PHI (r4v9 float) = (r4v0 float), (r4v1 float) binds: [B:9:0x0036, B:12:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:16:0x004b A[PHI: r4
      0x004b: PHI (r4v8 float) = (r4v2 float), (r4v3 float) binds: [B:15:0x0049, B:18:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iSave = canvas.save();
        canvas.drawRect(this.f, this.c);
        RectF rectF = this.e;
        if (rectF.left > rectF.right || rectF.top > rectF.bottom) {
            this.k.set(rectF);
            RectF rectF2 = this.k;
            float f = rectF2.left;
            RectF rectF3 = this.f;
            float f2 = rectF3.left;
            if (f < f2) {
                f = f2;
            } else {
                f2 = rectF3.right;
                if (f > f2) {
                    f = f2;
                }
            }
            rectF2.left = f;
            float f3 = rectF2.right;
            float f4 = rectF3.left;
            if (f3 < f4) {
                f3 = f4;
            } else {
                f4 = rectF3.right;
                if (f3 > f4) {
                    f3 = f4;
                }
            }
            rectF2.right = f3;
            float f5 = rectF2.top;
            float f6 = rectF3.bottom;
            if (f5 > f6) {
                f5 = f6;
            } else {
                float f7 = rectF3.top;
                if (f5 < f7) {
                    f5 = f7;
                }
            }
            rectF2.top = f5;
            float f8 = rectF2.bottom;
            float f9 = rectF3.top;
            if (f8 < f9) {
                f6 = f9;
            } else if (f8 <= f6) {
                f6 = f8;
            }
            rectF2.bottom = f6;
            canvas.drawRect(rectF2, this.b);
        } else {
            canvas.drawRect(rectF, this.b);
        }
        String percentValue = getPercentValue(this.r);
        float fMeasureText = this.d.measureText(percentValue);
        RectF rectF4 = this.f;
        canvas.drawText(percentValue, rectF4.left + ((rectF4.width() - fMeasureText) / 2.0f), this.s, this.d);
        canvas.restoreToCount(iSave);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.t = d39.c(getContext());
        this.q = getLayoutDirection() == 1;
        l(this.n);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    /* JADX WARN: Code duplicated, block: B:22:0x0050  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && !isTouchDrag(motionEvent)) {
            return false;
        }
        this.w.onTouchEvent(motionEvent);
        this.v.onTouchEvent(motionEvent);
        if (actionMasked == 0) {
            this.o.onPointerCount(motionEvent.getPointerCount());
        } else if (actionMasked == 1) {
            onDragStatusChange(false);
            this.o.onPointerCount(motionEvent.getPointerCount() - 1);
        } else if (actionMasked == 2) {
            this.o.onPointerCount(motionEvent.getPointerCount());
        } else if (actionMasked == 3) {
            this.o.onPointerCount(motionEvent.getPointerCount() - 1);
        } else if (actionMasked == 5) {
            onDragStatusChange(false);
            this.o.onPointerCount(motionEvent.getPointerCount());
        } else if (actionMasked == 6) {
            this.o.onPointerCount(motionEvent.getPointerCount() - 1);
        }
        return true;
    }

    public void setOnScaleSurfaceListener(OnScaleSurfaceListener onScaleSurfaceListener) {
        this.o = onScaleSurfaceListener;
    }

    public void setRectAndDraw(RectF rectF, RectF rectF2, RectF rectF3) {
        h(this.l, this.f, rectF2);
        this.l.mapRect(this.e, rectF);
        this.h.set(this.e);
        this.i.set(rectF);
        this.g.set(rectF2);
        float fWidth = rectF2.width() / rectF3.width();
        this.r = fWidth;
        float f = 6.0f;
        if (Float.compare(fWidth, 6.0f) != 1) {
            f = 0.25f;
            if (Float.compare(this.r, 0.25f) != -1) {
                f = this.r;
            }
        }
        this.r = f;
        RectF rectF4 = this.e;
        rectF4.set(i(rectF4, this.f));
        invalidate();
    }

    public void setVideoSize(float f, float f2, RectF rectF, RectF rectF2) {
        float f3 = f / f2;
        if (Float.compare(f3, 1.1f) == 1) {
            this.n = VideoSizeType.SIZE_TYPE_16_9;
        } else if (Float.compare(f3, 0.9f) == -1) {
            this.n = VideoSizeType.SIZE_TYPE_9_16;
        } else {
            this.n = VideoSizeType.SIZE_TYPE_1_1;
        }
        l(this.n);
        h(this.l, this.f, rectF);
        this.j.set(rectF2);
        this.l.mapRect(this.j);
        this.e.set(this.j);
    }

    public ScaleStatusView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Paint();
        this.c = new Paint();
        this.d = new Paint();
        this.e = new RectF();
        this.f = new RectF();
        this.g = new RectF();
        this.h = new RectF();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        this.l = new Matrix();
        this.m = new float[2];
        this.n = VideoSizeType.SIZE_TYPE_1_1;
        this.p = false;
        this.q = false;
        this.u = new float[9];
        this.v = new GestureDetector(getContext(), new a());
        this.w = new ScaleGestureDetector(getContext(), new b());
        k();
    }

    public ScaleStatusView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Paint();
        this.c = new Paint();
        this.d = new Paint();
        this.e = new RectF();
        this.f = new RectF();
        this.g = new RectF();
        this.h = new RectF();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        this.l = new Matrix();
        this.m = new float[2];
        this.n = VideoSizeType.SIZE_TYPE_1_1;
        this.p = false;
        this.q = false;
        this.u = new float[9];
        this.v = new GestureDetector(getContext(), new a());
        this.w = new ScaleGestureDetector(getContext(), new b());
        k();
    }

    public ScaleStatusView(Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.b = new Paint();
        this.c = new Paint();
        this.d = new Paint();
        this.e = new RectF();
        this.f = new RectF();
        this.g = new RectF();
        this.h = new RectF();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        this.l = new Matrix();
        this.m = new float[2];
        this.n = VideoSizeType.SIZE_TYPE_1_1;
        this.p = false;
        this.q = false;
        this.u = new float[9];
        this.v = new GestureDetector(getContext(), new a());
        this.w = new ScaleGestureDetector(getContext(), new b());
        k();
    }
}
