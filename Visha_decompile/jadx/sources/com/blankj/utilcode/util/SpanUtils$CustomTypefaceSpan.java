package com.blankj.utilcode.util;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;
import defpackage.iu9;

@SuppressLint({"ParcelCreator"})
class SpanUtils$CustomTypefaceSpan extends TypefaceSpan {
    private final Typeface newType;

    public SpanUtils$CustomTypefaceSpan(Typeface typeface, iu9 iu9Var) {
        this(typeface);
    }

    private void apply(Paint paint, Typeface typeface) {
        Typeface typeface2 = paint.getTypeface();
        int style = (typeface2 == null ? 0 : typeface2.getStyle()) & (~typeface.getStyle());
        if ((style & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((style & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.getShader();
        paint.setTypeface(typeface);
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        apply(textPaint, this.newType);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        apply(textPaint, this.newType);
    }

    private SpanUtils$CustomTypefaceSpan(Typeface typeface) {
        super("");
        this.newType = typeface;
    }
}
