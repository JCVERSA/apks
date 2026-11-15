package defpackage;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.core.graphics.drawable.DrawableCompat;

public abstract class job extends Drawable {
    public Drawable a;

    public static TypedArray a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    @Override
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.a;
        if (drawable != null) {
            DrawableCompat.applyTheme(drawable, theme);
        }
    }

    @Override
    public void clearColorFilter() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.clearColorFilter();
        } else {
            super.clearColorFilter();
        }
    }

    @Override
    public ColorFilter getColorFilter() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return DrawableCompat.getColorFilter(drawable);
        }
        return null;
    }

    @Override
    public Drawable getCurrent() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getCurrent() : super.getCurrent();
    }

    @Override
    public int getMinimumHeight() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getMinimumHeight() : super.getMinimumHeight();
    }

    @Override
    public int getMinimumWidth() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getMinimumWidth() : super.getMinimumWidth();
    }

    @Override
    public boolean getPadding(Rect rect) {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
    }

    @Override
    public int[] getState() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getState() : super.getState();
    }

    @Override
    public Region getTransparentRegion() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getTransparentRegion() : super.getTransparentRegion();
    }

    @Override
    public void jumpToCurrentState() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override
    public boolean onLevelChange(int i) {
        Drawable drawable = this.a;
        return drawable != null ? drawable.setLevel(i) : super.onLevelChange(i);
    }

    @Override
    public void setChangingConfigurations(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setChangingConfigurations(i);
        } else {
            super.setChangingConfigurations(i);
        }
    }

    @Override
    public void setFilterBitmap(boolean z) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setFilterBitmap(z);
        }
    }

    @Override
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.a;
        if (drawable != null) {
            DrawableCompat.setHotspot(drawable, f, f2);
        }
    }

    @Override
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Drawable drawable = this.a;
        if (drawable != null) {
            DrawableCompat.setHotspotBounds(drawable, i, i2, i3, i4);
        }
    }

    @Override
    public boolean setState(int[] iArr) {
        Drawable drawable = this.a;
        return drawable != null ? drawable.setState(iArr) : super.setState(iArr);
    }
}
