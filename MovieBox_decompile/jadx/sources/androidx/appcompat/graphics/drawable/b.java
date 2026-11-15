package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

public abstract class b extends Drawable implements Drawable.Callback {

    private Drawable f933a;

    public b(Drawable drawable) {
        a(drawable);
    }

    public void a(Drawable drawable) {
        Drawable drawable2 = this.f933a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f933a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override
    public void draw(Canvas canvas) {
        this.f933a.draw(canvas);
    }

    @Override
    public int getChangingConfigurations() {
        return this.f933a.getChangingConfigurations();
    }

    @Override
    public Drawable getCurrent() {
        return this.f933a.getCurrent();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f933a.getIntrinsicHeight();
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f933a.getIntrinsicWidth();
    }

    @Override
    public int getMinimumHeight() {
        return this.f933a.getMinimumHeight();
    }

    @Override
    public int getMinimumWidth() {
        return this.f933a.getMinimumWidth();
    }

    @Override
    public int getOpacity() {
        return this.f933a.getOpacity();
    }

    @Override
    public boolean getPadding(Rect rect) {
        return this.f933a.getPadding(rect);
    }

    @Override
    public int[] getState() {
        return this.f933a.getState();
    }

    @Override
    public Region getTransparentRegion() {
        return this.f933a.getTransparentRegion();
    }

    @Override
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override
    public boolean isAutoMirrored() {
        return a1.a.h(this.f933a);
    }

    @Override
    public boolean isStateful() {
        return this.f933a.isStateful();
    }

    @Override
    public void jumpToCurrentState() {
        this.f933a.jumpToCurrentState();
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        this.f933a.setBounds(rect);
    }

    @Override
    protected boolean onLevelChange(int i10) {
        return this.f933a.setLevel(i10);
    }

    @Override
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override
    public void setAlpha(int i10) {
        this.f933a.setAlpha(i10);
    }

    @Override
    public void setAutoMirrored(boolean z10) {
        a1.a.j(this.f933a, z10);
    }

    @Override
    public void setChangingConfigurations(int i10) {
        this.f933a.setChangingConfigurations(i10);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f933a.setColorFilter(colorFilter);
    }

    @Override
    public void setDither(boolean z10) {
        this.f933a.setDither(z10);
    }

    @Override
    public void setFilterBitmap(boolean z10) {
        this.f933a.setFilterBitmap(z10);
    }

    @Override
    public void setHotspot(float f10, float f11) {
        a1.a.k(this.f933a, f10, f11);
    }

    @Override
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        a1.a.l(this.f933a, i10, i11, i12, i13);
    }

    @Override
    public boolean setState(int[] iArr) {
        return this.f933a.setState(iArr);
    }

    @Override
    public void setTint(int i10) {
        a1.a.n(this.f933a, i10);
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        a1.a.o(this.f933a, colorStateList);
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        a1.a.p(this.f933a, mode);
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        return super.setVisible(z10, z11) || this.f933a.setVisible(z10, z11);
    }

    @Override
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
