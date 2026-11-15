package androidx.vectordrawable.graphics.drawable;

import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

abstract class g extends Drawable {

    Drawable f14821a;

    g() {
    }

    @Override
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.a(drawable, theme);
        }
    }

    @Override
    public void clearColorFilter() {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.clearColorFilter();
        } else {
            super.clearColorFilter();
        }
    }

    @Override
    public Drawable getCurrent() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getCurrent() : super.getCurrent();
    }

    @Override
    public int getMinimumHeight() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getMinimumHeight() : super.getMinimumHeight();
    }

    @Override
    public int getMinimumWidth() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getMinimumWidth() : super.getMinimumWidth();
    }

    @Override
    public boolean getPadding(Rect rect) {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
    }

    @Override
    public int[] getState() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getState() : super.getState();
    }

    @Override
    public Region getTransparentRegion() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getTransparentRegion() : super.getTransparentRegion();
    }

    @Override
    public void jumpToCurrentState() {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.i(drawable);
        }
    }

    @Override
    protected boolean onLevelChange(int i10) {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.setLevel(i10) : super.onLevelChange(i10);
    }

    @Override
    public void setChangingConfigurations(int i10) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.setChangingConfigurations(i10);
        } else {
            super.setChangingConfigurations(i10);
        }
    }

    @Override
    public void setColorFilter(int i10, PorterDuff.Mode mode) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.setColorFilter(i10, mode);
        } else {
            super.setColorFilter(i10, mode);
        }
    }

    @Override
    public void setFilterBitmap(boolean z10) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.setFilterBitmap(z10);
        }
    }

    @Override
    public void setHotspot(float f10, float f11) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.k(drawable, f10, f11);
        }
    }

    @Override
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.l(drawable, i10, i11, i12, i13);
        }
    }

    @Override
    public boolean setState(int[] iArr) {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.setState(iArr) : super.setState(iArr);
    }
}
