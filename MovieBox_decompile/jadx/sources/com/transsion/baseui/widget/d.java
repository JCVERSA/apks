package com.transsion.baseui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d extends ImageSpan {

    public static final a f42443a = new a(null);

    public static final int f42444b = 8;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Drawable drawable, int i10) {
        super(drawable, i10);
        Intrinsics.e(drawable);
    }

    @Override
    public void draw(Canvas canvas, CharSequence text, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        Intrinsics.h(canvas, "canvas");
        Intrinsics.h(text, "text");
        Intrinsics.h(paint, "paint");
        Drawable drawable = getDrawable();
        canvas.save();
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int i15 = i14 - drawable.getBounds().bottom;
        int i16 = ((ImageSpan) this).mVerticalAlignment;
        if (i16 == 1) {
            i15 -= fontMetricsInt.descent;
        } else if (i16 == 2) {
            i15 = (((fontMetricsInt.descent + i13) + (i13 + fontMetricsInt.ascent)) / 2) - (drawable.getBounds().bottom / 2);
        }
        canvas.translate(f10, i15);
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override
    public int getSize(Paint paint, CharSequence text, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.h(paint, "paint");
        Intrinsics.h(text, "text");
        Rect bounds = getDrawable().getBounds();
        Intrinsics.g(bounds, "getBounds(...)");
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            int i12 = fontMetricsInt2.bottom - fontMetricsInt2.top;
            int i13 = (bounds.bottom - bounds.top) / 2;
            int i14 = i12 / 4;
            int i15 = i13 - i14;
            int i16 = -(i13 + i14);
            fontMetricsInt.ascent = i16;
            fontMetricsInt.top = i16;
            fontMetricsInt.bottom = i15;
            fontMetricsInt.descent = i15;
        }
        return bounds.right;
    }
}
