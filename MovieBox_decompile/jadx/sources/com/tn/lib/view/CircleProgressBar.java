package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.tn.lib.widget.R$styleable;

public class CircleProgressBar extends View {

    private Paint f39933a;

    private Paint f39934b;

    private Paint f39935c;

    private int f39936d;

    private int f39937e;

    private int f39938f;

    private float f39939g;

    private float f39940h;

    private int f39941i;

    private int f39942j;

    private int f39943k;

    public CircleProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39941i = 100;
        this.f39943k = 0;
        a(context, attributeSet);
        b();
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.CircleProgressbar, 0, 0);
        this.f39939g = typedArrayObtainStyledAttributes.getDimension(R$styleable.CircleProgressbar_progressRadius, 80.0f);
        this.f39940h = typedArrayObtainStyledAttributes.getDimension(R$styleable.CircleProgressbar_progressStrokesWidth, 10.0f);
        this.f39936d = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_progressBgColor, 15658734);
        this.f39937e = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_progressRingsColor, 16734911);
        this.f39938f = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_progressTextsColor, 16777215);
        this.f39941i = typedArrayObtainStyledAttributes.getInt(R$styleable.CircleProgressbar_progressMax, 100);
        this.f39942j = typedArrayObtainStyledAttributes.getInt(R$styleable.CircleProgressbar_progressCurrent, 0);
    }

    private void b() {
        Paint paint = new Paint();
        this.f39933a = paint;
        paint.setAntiAlias(true);
        this.f39933a.setDither(true);
        this.f39933a.setColor(this.f39936d);
        Paint paint2 = this.f39933a;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        Paint paint3 = this.f39933a;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        this.f39933a.setStrokeWidth(this.f39940h);
        Paint paint4 = new Paint();
        this.f39934b = paint4;
        paint4.setAntiAlias(true);
        this.f39934b.setDither(true);
        this.f39934b.setColor(this.f39937e);
        this.f39934b.setStyle(style);
        this.f39934b.setStrokeCap(cap);
        this.f39934b.setStrokeWidth(this.f39940h);
        Paint paint5 = new Paint();
        this.f39935c = paint5;
        paint5.setAntiAlias(true);
        this.f39935c.setStyle(Paint.Style.FILL);
        this.f39935c.setColor(this.f39938f);
        this.f39935c.setTextSize(this.f39939g / 2.0f);
        this.f39935c.getFontMetrics();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f39939g, this.f39933a);
        if (this.f39942j >= 0) {
            RectF rectF = new RectF((getWidth() / 2) - this.f39939g, (getHeight() / 2) - this.f39939g, (getWidth() / 2) + this.f39939g, (getHeight() / 2) + this.f39939g);
            canvas.drawArc(rectF, 0.0f, 0.0f, false, this.f39934b);
            canvas.drawArc(rectF, -90.0f, (this.f39942j / this.f39941i) * 360.0f, false, this.f39934b);
        }
    }

    public void setMax(int i10) {
        this.f39941i = i10;
        postInvalidate();
    }

    public void setProgress(int i10) {
        this.f39942j = i10;
        postInvalidate();
    }

    public void setRingColor(int i10) {
        this.f39937e = i10;
        this.f39934b.setColor(i10);
        postInvalidate();
    }
}
