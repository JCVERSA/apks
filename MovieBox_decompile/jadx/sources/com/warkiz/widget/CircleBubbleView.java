package com.warkiz.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;

public class CircleBubbleView extends View {

    private int f58454a;

    private int f58455b;

    private float f58456c;

    private Context f58457d;

    private Path f58458e;

    private Paint f58459f;

    private float f58460g;

    private float f58461h;

    private float f58462i;

    private String f58463j;

    CircleBubbleView(Context context, float f10, int i10, int i11, String str) {
        super(context, null, 0);
        this.f58457d = context;
        this.f58456c = f10;
        this.f58454a = i10;
        this.f58455b = i11;
        a(str);
    }

    private void a(String str) {
        Paint paint = new Paint();
        this.f58459f = paint;
        paint.setAntiAlias(true);
        this.f58459f.setStrokeWidth(1.0f);
        this.f58459f.setTextAlign(Paint.Align.CENTER);
        this.f58459f.setTextSize(this.f58456c);
        Rect rect = new Rect();
        this.f58459f.getTextBounds(str, 0, str.length(), rect);
        this.f58460g = rect.width() + g.a(this.f58457d, 4.0f);
        float fA = g.a(this.f58457d, 36.0f);
        if (this.f58460g < fA) {
            this.f58460g = fA;
        }
        this.f58462i = rect.height();
        this.f58461h = this.f58460g * 1.2f;
        b();
    }

    private void b() {
        this.f58458e = new Path();
        float f10 = this.f58460g;
        this.f58458e.arcTo(new RectF(0.0f, 0.0f, f10, f10), 135.0f, 270.0f);
        this.f58458e.lineTo(this.f58460g / 2.0f, this.f58461h);
        this.f58458e.close();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        this.f58459f.setColor(this.f58455b);
        canvas.drawPath(this.f58458e, this.f58459f);
        this.f58459f.setColor(this.f58454a);
        canvas.drawText(this.f58463j, this.f58460g / 2.0f, (this.f58461h / 2.0f) + (this.f58462i / 4.0f), this.f58459f);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension((int) this.f58460g, (int) this.f58461h);
    }

    void setProgress(String str) {
        this.f58463j = str;
        invalidate();
    }
}
