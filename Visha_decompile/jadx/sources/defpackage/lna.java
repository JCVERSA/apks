package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

public class lna extends ca0 {
    public Drawable h;
    public int i = -1;

    public lna(Drawable drawable) {
        this.h = drawable;
    }

    @Override
    public void b(Canvas canvas, int i, int i2) {
        this.h.setAlpha(this.b);
        ColorFilter colorFilterA = a();
        if (colorFilterA != null) {
            this.h.setColorFilter(colorFilterA);
        }
        int intrinsicHeight = this.h.getIntrinsicHeight();
        float f = i2 / intrinsicHeight;
        canvas.scale(f, f);
        float f2 = i / f;
        int i3 = this.i;
        if (i3 < 0) {
            int intrinsicWidth = this.h.getIntrinsicWidth();
            int i4 = 0;
            while (i4 < f2) {
                int i5 = i4 + intrinsicWidth;
                this.h.setBounds(i4, 0, i5, intrinsicHeight);
                this.h.draw(canvas);
                i4 = i5;
            }
            return;
        }
        float f3 = f2 / i3;
        for (int i6 = 0; i6 < this.i; i6++) {
            float f4 = (i6 + 0.5f) * f3;
            float intrinsicWidth2 = this.h.getIntrinsicWidth() / 2.0f;
            this.h.setBounds(Math.round(f4 - intrinsicWidth2), 0, Math.round(f4 + intrinsicWidth2), intrinsicHeight);
            this.h.draw(canvas);
        }
    }

    public Drawable d() {
        return this.h;
    }

    public void e(int i) {
        this.i = i;
        invalidateSelf();
    }

    @Override
    public Drawable mutate() {
        this.h = this.h.mutate();
        return this;
    }
}
