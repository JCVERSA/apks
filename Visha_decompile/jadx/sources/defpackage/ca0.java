package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public abstract class ca0 extends Drawable implements roa {
    public ColorFilter c;
    public ColorStateList d;
    public PorterDuffColorFilter f;
    public int b = 255;
    public PorterDuff.Mode e = PorterDuff.Mode.SRC_IN;
    public b g = new b();

    public class b extends Drawable.ConstantState {
        public b() {
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        @Override
        public Drawable newDrawable() {
            return ca0.this;
        }
    }

    public ColorFilter a() {
        ColorFilter colorFilter = this.c;
        return colorFilter != null ? colorFilter : this.f;
    }

    public abstract void b(Canvas canvas, int i, int i2);

    public final boolean c() {
        ColorStateList colorStateList = this.d;
        if (colorStateList != null && this.e != null) {
            this.f = new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), this.e);
            return true;
        }
        boolean z = this.f != null;
        this.f = null;
        return z;
    }

    @Override
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.width() == 0 || bounds.height() == 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(bounds.left, bounds.top);
        b(canvas, bounds.width(), bounds.height());
        canvas.restoreToCount(iSave);
    }

    @Override
    public int getAlpha() {
        return this.b;
    }

    @Override
    public ColorFilter getColorFilter() {
        return this.c;
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        return this.g;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public boolean isStateful() {
        ColorStateList colorStateList = this.d;
        return colorStateList != null && colorStateList.isStateful();
    }

    @Override
    public boolean onStateChange(int[] iArr) {
        return c();
    }

    @Override
    public void setAlpha(int i) {
        if (this.b != i) {
            this.b = i;
            invalidateSelf();
        }
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.c = colorFilter;
        invalidateSelf();
    }

    @Override
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        this.d = colorStateList;
        if (c()) {
            invalidateSelf();
        }
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        this.e = mode;
        if (c()) {
            invalidateSelf();
        }
    }
}
