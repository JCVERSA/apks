package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.widget.TextView;
import defpackage.y45;

public final class e22 extends TextView {
    private Rect a;
    private Paint b;
    private int c;
    private int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e22(Context context) {
        super(context);
        y45.j(context, "context");
        this.a = new Rect();
        this.b = new Paint();
        Context context2 = getContext();
        y45.i(context2, "getContext(...)");
        this.c = wh2.a(context2, 1.0f);
        Context context3 = getContext();
        y45.i(context3, "getContext(...)");
        this.d = wh2.a(context3, 4.0f);
    }

    @Override
    public final void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        int iA = wh2.a(getCurrentTextColor(), 85.0f);
        Paint paint = this.b;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.c);
        paint.setColor(iA);
        int lineCount = getLineCount();
        Layout layout = getLayout();
        for (int i = 0; i < lineCount; i++) {
            int lineBounds = getLineBounds(i, this.a);
            int lineStart = layout.getLineStart(i);
            int lineEnd = layout.getLineEnd(i);
            float primaryHorizontal = layout.getPrimaryHorizontal(lineStart);
            float primaryHorizontal2 = layout.getPrimaryHorizontal(lineEnd - 1) + (layout.getPrimaryHorizontal(lineStart + 1) - primaryHorizontal);
            float f = lineBounds + this.d;
            canvas.drawLine(primaryHorizontal, f, primaryHorizontal2, f, paint);
        }
        super.onDraw(canvas);
    }
}
