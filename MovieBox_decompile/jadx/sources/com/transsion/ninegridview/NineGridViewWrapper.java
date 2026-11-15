package com.transsion.ninegridview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import com.google.android.material.imageview.ShapeableImageView;

public class NineGridViewWrapper extends ShapeableImageView {
    private TextPaint A;
    private String B;

    private int f45786w;

    private int f45787x;

    private float f45788y;

    private int f45789z;

    public NineGridViewWrapper(Context context) {
        this(context, null);
    }

    public int getMaskColor() {
        return this.f45787x;
    }

    public int getMoreNum() {
        return this.f45786w;
    }

    public int getTextColor() {
        return this.f45789z;
    }

    public float getTextSize() {
        return this.f45788y;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f45786w > 0) {
            canvas.drawColor(this.f45787x);
            canvas.drawText(this.B, getWidth() / 2, (getHeight() / 2) - ((this.A.ascent() + this.A.descent()) / 2.0f), this.A);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void setMaskColor(int i10) {
        this.f45787x = i10;
        invalidate();
    }

    public void setMoreNum(int i10) {
        this.f45786w = i10;
        this.B = "+" + i10;
        invalidate();
    }

    public void setTextColor(int i10) {
        this.f45789z = i10;
        this.A.setColor(i10);
        invalidate();
    }

    public void setTextSize(float f10) {
        this.f45788y = f10;
        this.A.setTextSize(f10);
        invalidate();
    }

    public NineGridViewWrapper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NineGridViewWrapper(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f45786w = 0;
        this.f45787x = -2013265920;
        this.f45788y = 35.0f;
        this.f45789z = -1;
        this.B = "";
        this.f45788y = TypedValue.applyDimension(2, 35.0f, getContext().getResources().getDisplayMetrics());
        TextPaint textPaint = new TextPaint();
        this.A = textPaint;
        textPaint.setTextAlign(Paint.Align.CENTER);
        this.A.setAntiAlias(true);
        this.A.setTextSize(this.f45788y);
        this.A.setColor(this.f45789z);
    }
}
