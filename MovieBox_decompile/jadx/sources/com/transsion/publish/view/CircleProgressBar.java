package com.transsion.publish.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.transsion.publish.R$styleable;

public class CircleProgressBar extends View {

    private Paint f48535a;

    private Paint f48536b;

    private int f48537c;

    private int f48538d;

    private float f48539e;

    private float f48540f;

    private int f48541g;

    private int f48542h;

    private int f48543i;

    public CircleProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f48541g = 100;
        this.f48543i = 0;
        a(context, attributeSet);
        b();
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.CircleProgressbar, 0, 0);
        this.f48539e = typedArrayObtainStyledAttributes.getDimension(R$styleable.CircleProgressbar_ra, 80.0f);
        this.f48540f = typedArrayObtainStyledAttributes.getDimension(R$styleable.CircleProgressbar_strokesWidth, 10.0f);
        this.f48537c = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_ringsColor, 16711680);
        this.f48538d = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_textsColor, 16777215);
    }

    private void b() {
        Paint paint = new Paint();
        this.f48535a = paint;
        paint.setAntiAlias(true);
        this.f48535a.setDither(true);
        this.f48535a.setColor(this.f48537c);
        this.f48535a.setStyle(Paint.Style.STROKE);
        this.f48535a.setStrokeCap(Paint.Cap.ROUND);
        this.f48535a.setStrokeWidth(this.f48540f);
        Paint paint2 = new Paint();
        this.f48536b = paint2;
        paint2.setAntiAlias(true);
        this.f48536b.setStyle(Paint.Style.FILL);
        this.f48536b.setColor(this.f48538d);
        this.f48536b.setTextSize(this.f48539e / 2.0f);
        this.f48536b.getFontMetrics();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (this.f48542h >= 0) {
            RectF rectF = new RectF((getWidth() / 2) - this.f48539e, (getHeight() / 2) - this.f48539e, (getWidth() / 2) + this.f48539e, (getHeight() / 2) + this.f48539e);
            canvas.drawArc(rectF, 0.0f, 0.0f, false, this.f48535a);
            canvas.drawArc(rectF, -90.0f, (this.f48542h / this.f48541g) * 360.0f, false, this.f48535a);
        }
    }

    public void setProgress(int i10) {
        this.f48542h = i10;
        postInvalidate();
    }

    public void setRingColor(int i10) {
        this.f48537c = i10;
        this.f48535a.setColor(i10);
        postInvalidate();
    }
}
