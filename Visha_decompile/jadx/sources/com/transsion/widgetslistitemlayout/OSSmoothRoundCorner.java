package com.transsion.widgetslistitemlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import com.transsion.hubsdk.api.graphics.TranCanvas;
import java.util.List;

public class OSSmoothRoundCorner extends AppCompatImageView {
    public static Path n = new Path();
    public Paint b;
    public float c;
    public float d;
    public boolean e;
    public boolean f;
    public int g;
    public List h;
    public float i;
    public float j;
    public float k;
    public float l;
    public TranCanvas m;

    public OSSmoothRoundCorner(Context context) {
        super(context);
        this.c = 16.0f;
        this.d = 0.6f;
        this.e = false;
        this.f = false;
        this.i = 0.95f;
        this.j = 0.9f;
        init(context, null);
    }

    public static float coerceAtLeast(float f, float f2) {
        return f < f2 ? f2 : f;
    }

    public static float coerceAtMost(float f, float f2) {
        return f > f2 ? f2 : f;
    }

    private Path getSmoothRoundPath() {
        n.reset();
        int i = 0;
        while (i < 4) {
            if (i == 0) {
                int i2 = i * 3;
                n.moveTo(((PointF) this.h.get(i2)).x, ((PointF) this.h.get(i2)).y);
            } else {
                int i3 = i * 3;
                n.lineTo(((PointF) this.h.get(i3)).x, ((PointF) this.h.get(i3)).y);
            }
            int i4 = i == 3 ? 0 : (i * 3) + 3;
            int i5 = i * 3;
            int i6 = i5 + 1;
            int i7 = i5 + 2;
            n.cubicTo(((PointF) this.h.get(i6)).x, ((PointF) this.h.get(i6)).y, ((PointF) this.h.get(i7)).x, ((PointF) this.h.get(i7)).y, ((PointF) this.h.get(i4)).x, ((PointF) this.h.get(i4)).y);
            i++;
        }
        return n;
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.g = ContextCompat.getColor(context, R.color.os_stroke_color);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSSmoothRoundCorner);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.OSSmoothRoundCorner_os_smooth_radius) {
                    this.c = typedArrayObtainStyledAttributes.getDimension(index, this.c);
                } else if (index == R.styleable.OSSmoothRoundCorner_os_smooth_stroke_color) {
                    this.g = typedArrayObtainStyledAttributes.getColor(index, context.getColor(R.color.os_stroke_color));
                } else if (index == R.styleable.OSSmoothRoundCorner_os_smooth_smoothness) {
                    this.d = typedArrayObtainStyledAttributes.getFloat(index, this.d);
                } else if (index == R.styleable.OSSmoothRoundCorner_os_smooth_is_clip_path) {
                    this.e = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSSmoothRoundCorner_os_smooth_clip_draw_stroke) {
                    this.f = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSSmoothRoundCorner_os_smooth_stroke_width) {
                    this.j = typedArrayObtainStyledAttributes.getDimension(index, this.j);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        Paint paint = new Paint();
        this.b = paint;
        paint.setAntiAlias(true);
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setStrokeWidth(this.j);
        this.b.setColor(this.g);
        if (this.m == null) {
            this.m = new TranCanvas();
        }
    }

    public int getStrokeColor() {
        return this.g;
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (!this.e) {
            this.m.drawSmoothRoundRect(canvas, 0.0f, 0.0f, this.k, this.l, this.c, this.b);
            super.onDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        this.m.clipRRect(canvas, 0.0f, 0.0f, this.k, this.l, this.c, TranCanvas.CornerFlag.ALL);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (this.f) {
            this.m.drawSmoothRoundRect(canvas, 0.0f, 0.0f, this.k, this.l, this.c, this.b);
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.k = getMeasuredWidth();
        this.l = getMeasuredHeight();
    }

    public void setClipCorner(float f) {
        this.c = f;
        invalidate();
    }

    public void setClipDrawStroke(boolean z) {
        this.f = z;
        invalidate();
    }

    public void setIsClipPath(boolean z) {
        this.e = z;
        invalidate();
    }

    public void setStrokeColor(int i) {
        this.g = i;
        Paint paint = this.b;
        if (paint != null) {
            paint.setColor(i);
        }
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.j = f;
        Paint paint = this.b;
        if (paint != null) {
            paint.setStrokeWidth(f);
        }
        invalidate();
    }

    public OSSmoothRoundCorner(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 16.0f;
        this.d = 0.6f;
        this.e = false;
        this.f = false;
        this.i = 0.95f;
        this.j = 0.9f;
        init(context, attributeSet);
    }

    public OSSmoothRoundCorner(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 16.0f;
        this.d = 0.6f;
        this.e = false;
        this.f = false;
        this.i = 0.95f;
        this.j = 0.9f;
        init(context, attributeSet);
    }
}
