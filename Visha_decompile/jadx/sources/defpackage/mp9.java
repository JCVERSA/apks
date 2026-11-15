package defpackage;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

public final class mp9 {
    public int a;
    public int b;

    public final int a(Drawable drawable) {
        return g() + (drawable.getIntrinsicHeight() / 2);
    }

    public final int b(Drawable drawable) {
        return g() - (drawable.getIntrinsicHeight() / 2);
    }

    public final void c(Canvas canvas, Drawable drawable) {
        y45.j(canvas, "canvas");
        if (drawable == null) {
            return;
        }
        drawable.setBounds(0, b(drawable), this.a, a(drawable));
        drawable.draw(canvas);
    }

    public final void d(Canvas canvas, Drawable drawable, int i) {
        y45.j(canvas, "canvas");
        if (drawable == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
        drawable.setBounds(i - intrinsicWidth, b(drawable), i + intrinsicWidth, a(drawable));
        drawable.draw(canvas);
    }

    public final void e(Canvas canvas, int i, Drawable drawable, int i2, dha dhaVar) {
        y45.j(canvas, "canvas");
        d(canvas, drawable, i);
        if (dhaVar != null) {
            dhaVar.a(String.valueOf(i2));
            d(canvas, dhaVar, i);
        }
    }

    public final void f(Canvas canvas, Drawable drawable, int i, int i2) {
        y45.j(canvas, "canvas");
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, b(drawable), i2, a(drawable));
        drawable.draw(canvas);
    }

    public final int g() {
        return this.b / 2;
    }

    public final void h(int i, int i2) {
        this.a = i;
        this.b = i2;
    }
}
