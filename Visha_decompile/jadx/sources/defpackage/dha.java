package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public final class dha extends Drawable {
    public final op9 a;
    public cha b;
    public final RectF c;

    public dha(op9 op9Var) {
        y45.j(op9Var, "textStyle");
        this.a = op9Var;
        this.b = new cha(op9Var);
        this.c = new RectF();
    }

    public final void a(String str) {
        y45.j(str, "text");
        this.b.b(str);
        invalidateSelf();
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        this.c.set(getBounds());
        this.b.a(canvas, this.c.centerX(), this.c.centerY());
    }

    @Override
    public int getIntrinsicHeight() {
        return (int) (this.a.a() + Math.abs(this.a.d()));
    }

    @Override
    public int getIntrinsicWidth() {
        return (int) (this.c.width() + Math.abs(this.a.c()));
    }

    @Override
    public int getOpacity() {
        return -1;
    }

    @Override
    public void setAlpha(int i) {
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
