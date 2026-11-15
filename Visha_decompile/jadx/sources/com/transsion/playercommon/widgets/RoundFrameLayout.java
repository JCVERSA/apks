package com.transsion.playercommon.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.FrameLayout;
import com.transsion.playercommon.R;

public class RoundFrameLayout extends FrameLayout {
    public String b;
    public RectF c;
    public RectF d;
    public float e;
    public final Paint f;
    public final Paint g;
    public final Paint h;
    public int mSolidColor;
    public int mStrokeColor;
    public float mStrokeWidth;

    public RoundFrameLayout(Context context) {
        this(context, null);
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.e <= 0.0f) {
            super.draw(canvas);
            return;
        }
        canvas.saveLayer(this.c, this.g, 31);
        RectF rectF = this.c;
        float f = this.e;
        canvas.drawRoundRect(rectF, f, f, this.g);
        canvas.saveLayer(this.c, this.f, 31);
        super.draw(canvas);
        canvas.restore();
        RectF rectF2 = this.d;
        RectF rectF3 = this.c;
        float f2 = rectF3.left;
        float f3 = this.mStrokeWidth;
        rectF2.set(f2 + (f3 / 2.0f), rectF3.top + (f3 / 2.0f), rectF3.right - (f3 / 2.0f), rectF3.bottom - (f3 / 2.0f));
        float f4 = this.mStrokeWidth;
        if (f4 > 0.0f) {
            RectF rectF4 = this.d;
            float f5 = this.e;
            canvas.drawRoundRect(rectF4, f5 - (f4 / 2.0f), f5 - (f4 / 2.0f), this.h);
        }
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.c.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setCorner(float f) {
        if (f > 0.0f) {
            this.e = TypedValue.applyDimension(0, f, new DisplayMetrics());
        } else {
            this.e = 0.0f;
        }
        invalidate();
    }

    public void setStrokeColor(int i) {
        this.mStrokeColor = i;
        this.h.setColor(i);
        invalidate();
    }

    public void setStrokeWidth(float f) {
        if (f > 0.0f) {
            this.mStrokeWidth = TypedValue.applyDimension(0, f, new DisplayMetrics());
        } else {
            this.mStrokeWidth = 0.0f;
        }
        this.h.setStrokeWidth(this.mStrokeWidth);
        invalidate();
    }

    public RoundFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = getClass().getSimpleName();
        this.c = new RectF();
        this.d = new RectF();
        this.e = 0.0f;
        Paint paint = new Paint();
        this.f = paint;
        Paint paint2 = new Paint();
        this.g = paint2;
        Paint paint3 = new Paint();
        this.h = paint3;
        this.mStrokeWidth = 0.0f;
        this.mStrokeColor = -1;
        this.mSolidColor = -1;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RoundFrameLayout);
            this.mStrokeColor = typedArrayObtainStyledAttributes.getColor(R.styleable.RoundFrameLayout_stroke_color, this.mStrokeColor);
            this.mSolidColor = typedArrayObtainStyledAttributes.getColor(R.styleable.RoundFrameLayout_solid_color, this.mSolidColor);
            this.mStrokeWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RoundFrameLayout_stroke_width, 0);
            this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RoundFrameLayout_round_corner, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
        paint.setAntiAlias(true);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        paint.setStyle(Paint.Style.FILL);
        paint2.setAntiAlias(true);
        paint2.setColor(-1);
        paint3.setAntiAlias(true);
        paint3.setColor(this.mStrokeColor);
        paint3.setStrokeWidth(this.mStrokeWidth);
        paint3.setStyle(Paint.Style.STROKE);
        setBackgroundColor(this.mSolidColor);
    }
}
