package com.bumptech.glide.request.target;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.util.Preconditions;

public class FixedSizeDrawable extends Drawable {
    private final RectF bounds;
    private final Matrix matrix;
    private boolean mutated;
    private State state;
    private Drawable wrapped;
    private final RectF wrappedRect;

    static final class State extends Drawable.ConstantState {
        final int height;
        final int width;
        private final Drawable.ConstantState wrapped;

        State(State state) {
            this(state.wrapped, state.width, state.height);
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        @Override
        @NonNull
        public Drawable newDrawable() {
            return new FixedSizeDrawable(this, this.wrapped.newDrawable());
        }

        State(Drawable.ConstantState constantState, int i10, int i11) {
            this.wrapped = constantState;
            this.width = i10;
            this.height = i11;
        }

        @Override
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new FixedSizeDrawable(this, this.wrapped.newDrawable(resources));
        }
    }

    public FixedSizeDrawable(Drawable drawable, int i10, int i11) {
        this(new State(drawable.getConstantState(), i10, i11), drawable);
    }

    private void updateMatrix() {
        this.matrix.setRectToRect(this.wrappedRect, this.bounds, Matrix.ScaleToFit.CENTER);
    }

    @Override
    public void clearColorFilter() {
        this.wrapped.clearColorFilter();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        canvas.concat(this.matrix);
        this.wrapped.draw(canvas);
        canvas.restore();
    }

    @Override
    public int getAlpha() {
        return this.wrapped.getAlpha();
    }

    @Override
    public Drawable.Callback getCallback() {
        return this.wrapped.getCallback();
    }

    @Override
    public int getChangingConfigurations() {
        return this.wrapped.getChangingConfigurations();
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        return this.state;
    }

    @Override
    @NonNull
    public Drawable getCurrent() {
        return this.wrapped.getCurrent();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.state.height;
    }

    @Override
    public int getIntrinsicWidth() {
        return this.state.width;
    }

    @Override
    public int getMinimumHeight() {
        return this.wrapped.getMinimumHeight();
    }

    @Override
    public int getMinimumWidth() {
        return this.wrapped.getMinimumWidth();
    }

    @Override
    public int getOpacity() {
        return this.wrapped.getOpacity();
    }

    @Override
    public boolean getPadding(@NonNull Rect rect) {
        return this.wrapped.getPadding(rect);
    }

    @Override
    public void invalidateSelf() {
        super.invalidateSelf();
        this.wrapped.invalidateSelf();
    }

    @Override
    @NonNull
    public Drawable mutate() {
        if (!this.mutated && super.mutate() == this) {
            this.wrapped = this.wrapped.mutate();
            this.state = new State(this.state);
            this.mutated = true;
        }
        return this;
    }

    @Override
    public void scheduleSelf(@NonNull Runnable runnable, long j10) {
        super.scheduleSelf(runnable, j10);
        this.wrapped.scheduleSelf(runnable, j10);
    }

    @Override
    public void setAlpha(int i10) {
        this.wrapped.setAlpha(i10);
    }

    @Override
    public void setBounds(int i10, int i11, int i12, int i13) {
        super.setBounds(i10, i11, i12, i13);
        this.bounds.set(i10, i11, i12, i13);
        updateMatrix();
    }

    @Override
    public void setChangingConfigurations(int i10) {
        this.wrapped.setChangingConfigurations(i10);
    }

    @Override
    public void setColorFilter(int i10, @NonNull PorterDuff.Mode mode) {
        this.wrapped.setColorFilter(i10, mode);
    }

    @Override
    @Deprecated
    public void setDither(boolean z10) {
        this.wrapped.setDither(z10);
    }

    @Override
    public void setFilterBitmap(boolean z10) {
        this.wrapped.setFilterBitmap(z10);
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        return this.wrapped.setVisible(z10, z11);
    }

    @Override
    public void unscheduleSelf(@NonNull Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.wrapped.unscheduleSelf(runnable);
    }

    FixedSizeDrawable(State state, Drawable drawable) {
        this.state = (State) Preconditions.checkNotNull(state);
        this.wrapped = (Drawable) Preconditions.checkNotNull(drawable);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.matrix = new Matrix();
        this.wrappedRect = new RectF(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.bounds = new RectF();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.wrapped.setColorFilter(colorFilter);
    }

    @Override
    public void setBounds(@NonNull Rect rect) {
        super.setBounds(rect);
        this.bounds.set(rect);
        updateMatrix();
    }
}
