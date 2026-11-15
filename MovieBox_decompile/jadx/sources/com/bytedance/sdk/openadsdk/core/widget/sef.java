package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.Nullable;

public class sef extends com.bytedance.sdk.openadsdk.core.HiB.Dq {
    private Paint Sj;
    private int TKC;
    private RectF sP;

    public sef(Context context) {
        this(context, null);
    }

    private void Sj() {
        setTextColor(-1);
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.Sj.setColor(Color.parseColor("#99333333"));
        this.Sj.setAntiAlias(true);
        this.Sj.setStrokeWidth(0.0f);
        this.sP = new RectF();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.sP;
        float f10 = rectF.bottom;
        canvas.drawRoundRect(rectF, f10 / 2.0f, f10 / 2.0f, this.Sj);
        canvas.translate((this.sP.right / 2.0f) - (getPaint().measureText(getText().toString()) / 2.0f), 0.0f);
        super.onDraw(canvas);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth <= 0 || measuredHeight <= 0) {
            this.sP.set(0.0f, 0.0f, 0.0f, 0.0f);
            return;
        }
        int iMeasureText = (int) getPaint().measureText("00");
        this.TKC = iMeasureText;
        if (measuredWidth < iMeasureText) {
            measuredWidth = iMeasureText;
        }
        int i12 = measuredWidth + ((measuredHeight / 2) * 2);
        setMeasuredDimension(i12, measuredHeight);
        this.sP.set(0.0f, 0.0f, i12, measuredHeight);
    }

    public sef(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public sef(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TKC = 0;
        Sj();
    }
}
