package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

class d extends Drawable {

    private float f1918a;

    private final RectF f1920c;

    private final Rect f1921d;

    private float f1922e;

    private ColorStateList f1925h;

    private PorterDuffColorFilter f1926i;

    private ColorStateList f1927j;

    private boolean f1923f = false;

    private boolean f1924g = true;

    private PorterDuff.Mode f1928k = PorterDuff.Mode.SRC_IN;

    private final Paint f1919b = new Paint(5);

    d(ColorStateList colorStateList, float f10) {
        this.f1918a = f10;
        e(colorStateList);
        this.f1920c = new RectF();
        this.f1921d = new Rect();
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    private void e(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f1925h = colorStateList;
        this.f1919b.setColor(colorStateList.getColorForState(getState(), this.f1925h.getDefaultColor()));
    }

    private void i(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f1920c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f1921d.set(rect);
        if (this.f1923f) {
            this.f1921d.inset((int) Math.ceil(e.a(this.f1922e, this.f1918a, this.f1924g)), (int) Math.ceil(e.b(this.f1922e, this.f1918a, this.f1924g)));
            this.f1920c.set(this.f1921d);
        }
    }

    public ColorStateList b() {
        return this.f1925h;
    }

    float c() {
        return this.f1922e;
    }

    public float d() {
        return this.f1918a;
    }

    @Override
    public void draw(Canvas canvas) {
        boolean z10;
        Paint paint = this.f1919b;
        if (this.f1926i == null || paint.getColorFilter() != null) {
            z10 = false;
        } else {
            paint.setColorFilter(this.f1926i);
            z10 = true;
        }
        RectF rectF = this.f1920c;
        float f10 = this.f1918a;
        canvas.drawRoundRect(rectF, f10, f10, paint);
        if (z10) {
            paint.setColorFilter(null);
        }
    }

    public void f(ColorStateList colorStateList) {
        e(colorStateList);
        invalidateSelf();
    }

    void g(float f10, boolean z10, boolean z11) {
        if (f10 == this.f1922e && this.f1923f == z10 && this.f1924g == z11) {
            return;
        }
        this.f1922e = f10;
        this.f1923f = z10;
        this.f1924g = z11;
        i(null);
        invalidateSelf();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f1921d, this.f1918a);
    }

    void h(float f10) {
        if (f10 == this.f1918a) {
            return;
        }
        this.f1918a = f10;
        i(null);
        invalidateSelf();
    }

    @Override
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f1927j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f1925h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        i(rect);
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f1925h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z10 = colorForState != this.f1919b.getColor();
        if (z10) {
            this.f1919b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f1927j;
        if (colorStateList2 == null || (mode = this.f1928k) == null) {
            return z10;
        }
        this.f1926i = a(colorStateList2, mode);
        return true;
    }

    @Override
    public void setAlpha(int i10) {
        this.f1919b.setAlpha(i10);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1919b.setColorFilter(colorFilter);
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        this.f1927j = colorStateList;
        this.f1926i = a(colorStateList, this.f1928k);
        invalidateSelf();
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1928k = mode;
        this.f1926i = a(this.f1927j, mode);
        invalidateSelf();
    }
}
