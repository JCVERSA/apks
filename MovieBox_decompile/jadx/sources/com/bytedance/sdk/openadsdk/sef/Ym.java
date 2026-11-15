package com.bytedance.sdk.openadsdk.sef;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;

public class Ym extends View {
    private final Paint Sj;
    private float TKC;
    private float sP;

    public Ym(Context context) {
        super(context);
        setBackgroundColor(Color.parseColor("#8A8A8A"));
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.ROUND);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f10 = this.TKC;
        if (f10 > 0.0f) {
            float f11 = this.sP;
            canvas.drawLine(0.0f, f11, f10, f11, this.Sj);
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        float f10 = i11;
        this.sP = (1.0f * f10) / 2.0f;
        this.Sj.setStrokeWidth(f10);
    }

    public void setProgress(float f10) {
        this.TKC = getWidth() * f10;
        invalidate();
    }
}
