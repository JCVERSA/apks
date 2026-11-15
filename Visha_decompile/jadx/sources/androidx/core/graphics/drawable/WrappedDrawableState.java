package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

final class WrappedDrawableState extends Drawable.ConstantState {
    int mChangingConfigurations;
    Drawable.ConstantState mDrawableState;
    ColorStateList mTint;
    PorterDuff.Mode mTintMode;

    public WrappedDrawableState(@Nullable WrappedDrawableState wrappedDrawableState) {
        this.mTint = null;
        this.mTintMode = WrappedDrawableApi14.DEFAULT_TINT_MODE;
        if (wrappedDrawableState != null) {
            this.mChangingConfigurations = wrappedDrawableState.mChangingConfigurations;
            this.mDrawableState = wrappedDrawableState.mDrawableState;
            this.mTint = wrappedDrawableState.mTint;
            this.mTintMode = wrappedDrawableState.mTintMode;
        }
    }

    public boolean canConstantState() {
        return this.mDrawableState != null;
    }

    @Override
    public int getChangingConfigurations() {
        int i = this.mChangingConfigurations;
        Drawable.ConstantState constantState = this.mDrawableState;
        return (constantState != null ? constantState.getChangingConfigurations() : 0) | i;
    }

    @Override
    @NonNull
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override
    @NonNull
    public Drawable newDrawable(@Nullable Resources resources) {
        return new WrappedDrawableApi21(this, resources);
    }
}
