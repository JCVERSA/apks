package com.cicada.player.utils.ass;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;

public class BorderedSpan extends ReplacementSpan {
    final Paint mBorderPaint;
    private BorderStyle mBorderStyle;

    public static class BorderStyle {
        public String fontName;
        public double fontSize;
        public boolean mBold;
        public boolean mItalic;
        public int mOutlineColour;
        public double mOutlineWidth;
        public int mPrimaryColour;
        public int mSecondaryColour;
        public int mShadowColor;
        public double mShadowWidth;
        public boolean mStrikeOut;
        public boolean mUnderline;
    }

    public BorderedSpan(BorderStyle borderStyle) {
        this.mBorderStyle = borderStyle;
        Paint paint = new Paint();
        this.mBorderPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
    }

    private void fillPainStyle(Paint paint) {
        paint.setTypeface(Typeface.create(this.mBorderStyle.fontName, 0));
        paint.setTextSize((float) this.mBorderStyle.fontSize);
        paint.setColor(this.mBorderStyle.mPrimaryColour);
        paint.setUnderlineText(this.mBorderStyle.mUnderline);
        paint.setStrikeThruText(this.mBorderStyle.mStrikeOut);
        paint.setFakeBoldText(this.mBorderStyle.mBold);
        paint.setTextSkewX(this.mBorderStyle.mItalic ? -0.25f : 0.0f);
        BorderStyle borderStyle = this.mBorderStyle;
        double d10 = borderStyle.mShadowWidth;
        paint.setShadowLayer(0.0f, (float) d10, (float) d10, borderStyle.mShadowColor);
    }

    @Override
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        if (this.mBorderStyle.mOutlineWidth > 0.0d) {
            fillPainStyle(this.mBorderPaint);
            this.mBorderPaint.setStrokeWidth((float) this.mBorderStyle.mOutlineWidth);
            this.mBorderPaint.setColor(this.mBorderStyle.mOutlineColour);
            canvas.drawText(charSequence, i10, i11, f10, i13, this.mBorderPaint);
            fillPainStyle(paint);
        }
        canvas.drawText(charSequence, i10, i11, f10, i13, paint);
    }

    @Override
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        fillPainStyle(paint);
        return (int) paint.measureText(charSequence, i10, i11);
    }
}
