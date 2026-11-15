package com.hunantv.media.player;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

public class l extends View {
    private float a;
    private float b;

    public l(Context context) {
        super(context);
    }

    public void a(float f, float f2) {
        if (f == this.a && f2 == this.b) {
            return;
        }
        this.a = f;
        this.b = f2;
        requestLayout();
        invalidate();
    }

    public int getCenterDisplayH() {
        float f = this.b;
        return f > 0.0f ? (int) f : getHeight();
    }

    public int getCenterDisplayW() {
        float f = this.a;
        return f > 0.0f ? (int) f : getWidth();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.a <= 0.0f || this.b <= 0.0f) {
            return;
        }
        canvas.drawColor(0);
        Paint paint = new Paint();
        paint.setColor(-16777216);
        if (this.b < getHeight()) {
            float height = (getHeight() - this.b) / 2.0f;
            canvas.drawRect(new RectF(0.0f, 0.0f, getWidth(), height), paint);
            canvas.drawRect(new RectF(0.0f, getHeight() - height, getWidth(), getHeight()), paint);
        }
        if (this.a < getWidth()) {
            float width = (getWidth() - this.a) / 2.0f;
            canvas.drawRect(new RectF(0.0f, 0.0f, width, getHeight()), paint);
            canvas.drawRect(new RectF(getWidth() - width, 0.0f, getWidth(), getHeight()), paint);
        }
    }
}
