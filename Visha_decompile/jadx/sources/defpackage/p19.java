package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;

public final class p19 extends Drawable implements Animatable {
    public final Drawable b;
    public final float c;
    public final float d;

    public p19(Drawable drawable, float f, float f2) {
        y45.j(drawable, "child");
        this.b = drawable;
        this.c = f;
        this.d = f2;
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        int iSave = canvas.save();
        try {
            canvas.scale(this.c, this.d);
            this.b.draw(canvas);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    @Override
    public int getIntrinsicHeight() {
        if (this.b.getIntrinsicHeight() == -1) {
            return -1;
        }
        return s86.c(this.b.getIntrinsicHeight() * this.d);
    }

    @Override
    public int getIntrinsicWidth() {
        if (this.b.getIntrinsicWidth() == -1) {
            return -1;
        }
        return s86.c(this.b.getIntrinsicWidth() * this.c);
    }

    @Override
    public int getOpacity() {
        return this.b.getOpacity();
    }

    @Override
    public boolean isRunning() {
        Object obj = this.b;
        return (obj instanceof Animatable) && ((Animatable) obj).isRunning();
    }

    @Override
    public void setAlpha(int i) {
        this.b.setAlpha(i);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter);
    }

    @Override
    public void start() {
        Object obj = this.b;
        if (obj instanceof Animatable) {
            ((Animatable) obj).start();
        }
    }

    @Override
    public void stop() {
        Object obj = this.b;
        if (obj instanceof Animatable) {
            ((Animatable) obj).stop();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public p19(Drawable drawable, float f) {
        this(drawable, f, f);
        y45.j(drawable, "child");
    }
}
