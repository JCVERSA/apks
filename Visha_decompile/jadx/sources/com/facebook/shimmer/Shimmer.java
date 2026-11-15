package com.facebook.shimmer;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.Px;
import com.google.android.material.color.utilities.Contrast;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class Shimmer {
    private static final int COMPONENT_COUNT = 4;
    long repeatDelay;
    final float[] positions = new float[4];
    final int[] colors = new int[4];
    final RectF bounds = new RectF();
    int direction = 0;

    @ColorInt
    int highlightColor = -1;

    @ColorInt
    int baseColor = 1291845631;
    int shape = 0;
    int fixedWidth = 0;
    int fixedHeight = 0;
    float widthRatio = 1.0f;
    float heightRatio = 1.0f;
    float intensity = 0.0f;
    float dropoff = 0.5f;
    float tilt = 20.0f;
    boolean clipToChildren = true;
    boolean autoStart = true;
    boolean alphaShimmer = true;
    int repeatCount = -1;
    int repeatMode = 1;
    long animationDuration = 1000;

    public static class AlphaHighlightBuilder extends Builder<AlphaHighlightBuilder> {
        public AlphaHighlightBuilder() {
            this.mShimmer.alphaShimmer = true;
        }

        @Override
        public AlphaHighlightBuilder getThis() {
            return this;
        }
    }

    public static class ColorHighlightBuilder extends Builder<ColorHighlightBuilder> {
        public ColorHighlightBuilder() {
            this.mShimmer.alphaShimmer = false;
        }

        @Override
        public ColorHighlightBuilder getThis() {
            return this;
        }

        public ColorHighlightBuilder setBaseColor(@ColorInt int i) {
            Shimmer shimmer = this.mShimmer;
            shimmer.baseColor = (i & 16777215) | (shimmer.baseColor & (-16777216));
            return getThis();
        }

        public ColorHighlightBuilder setHighlightColor(@ColorInt int i) {
            this.mShimmer.highlightColor = i;
            return getThis();
        }

        @Override
        public ColorHighlightBuilder consumeAttributes(TypedArray typedArray) {
            super.consumeAttributes(typedArray);
            int i = R.styleable.ShimmerFrameLayout_shimmer_base_color;
            if (typedArray.hasValue(i)) {
                setBaseColor(typedArray.getColor(i, this.mShimmer.baseColor));
            }
            int i2 = R.styleable.ShimmerFrameLayout_shimmer_highlight_color;
            if (typedArray.hasValue(i2)) {
                setHighlightColor(typedArray.getColor(i2, this.mShimmer.highlightColor));
            }
            return getThis();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Direction {
        public static final int BOTTOM_TO_TOP = 3;
        public static final int LEFT_TO_RIGHT = 0;
        public static final int RIGHT_TO_LEFT = 2;
        public static final int TOP_TO_BOTTOM = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Shape {
        public static final int LINEAR = 0;
        public static final int RADIAL = 1;
    }

    public int height(int i) {
        int i2 = this.fixedHeight;
        return i2 > 0 ? i2 : Math.round(this.heightRatio * i);
    }

    public void updateBounds(int i, int i2) {
        double dMax = Math.max(i, i2);
        int iRound = Math.round(((float) ((dMax / Math.sin(1.5707963267948966d - Math.toRadians(this.tilt % 90.0f))) - dMax)) / 2.0f) * 3;
        float f = -iRound;
        this.bounds.set(f, f, width(i) + iRound, height(i2) + iRound);
    }

    public void updateColors() {
        if (this.shape != 1) {
            int[] iArr = this.colors;
            int i = this.baseColor;
            iArr[0] = i;
            int i2 = this.highlightColor;
            iArr[1] = i2;
            iArr[2] = i2;
            iArr[3] = i;
            return;
        }
        int[] iArr2 = this.colors;
        int i3 = this.highlightColor;
        iArr2[0] = i3;
        iArr2[1] = i3;
        int i4 = this.baseColor;
        iArr2[2] = i4;
        iArr2[3] = i4;
    }

    public void updatePositions() {
        if (this.shape != 1) {
            this.positions[0] = Math.max(((1.0f - this.intensity) - this.dropoff) / 2.0f, 0.0f);
            this.positions[1] = Math.max(((1.0f - this.intensity) - 0.001f) / 2.0f, 0.0f);
            this.positions[2] = Math.min(((this.intensity + 1.0f) + 0.001f) / 2.0f, 1.0f);
            this.positions[3] = Math.min(((this.intensity + 1.0f) + this.dropoff) / 2.0f, 1.0f);
            return;
        }
        float[] fArr = this.positions;
        fArr[0] = 0.0f;
        fArr[1] = Math.min(this.intensity, 1.0f);
        this.positions[2] = Math.min(this.intensity + this.dropoff, 1.0f);
        this.positions[3] = 1.0f;
    }

    public int width(int i) {
        int i2 = this.fixedWidth;
        return i2 > 0 ? i2 : Math.round(this.widthRatio * i);
    }

    public static abstract class Builder<T extends Builder<T>> {
        final Shimmer mShimmer = new Shimmer();

        private static float clamp(float f, float f2, float f3) {
            return Math.min(f2, Math.max(f, f3));
        }

        public Shimmer build() {
            this.mShimmer.updateColors();
            this.mShimmer.updatePositions();
            return this.mShimmer;
        }

        public T consumeAttributes(Context context, AttributeSet attributeSet) {
            return (T) consumeAttributes(context.obtainStyledAttributes(attributeSet, R.styleable.ShimmerFrameLayout, 0, 0));
        }

        public T copyFrom(Shimmer shimmer) {
            setDirection(shimmer.direction);
            setShape(shimmer.shape);
            setFixedWidth(shimmer.fixedWidth);
            setFixedHeight(shimmer.fixedHeight);
            setWidthRatio(shimmer.widthRatio);
            setHeightRatio(shimmer.heightRatio);
            setIntensity(shimmer.intensity);
            setDropoff(shimmer.dropoff);
            setTilt(shimmer.tilt);
            setClipToChildren(shimmer.clipToChildren);
            setAutoStart(shimmer.autoStart);
            setRepeatCount(shimmer.repeatCount);
            setRepeatMode(shimmer.repeatMode);
            setRepeatDelay(shimmer.repeatDelay);
            setDuration(shimmer.animationDuration);
            Shimmer shimmer2 = this.mShimmer;
            shimmer2.baseColor = shimmer.baseColor;
            shimmer2.highlightColor = shimmer.highlightColor;
            return (T) getThis();
        }

        public abstract T getThis();

        public T setAutoStart(boolean z) {
            this.mShimmer.autoStart = z;
            return (T) getThis();
        }

        public T setBaseAlpha(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
            int iClamp = (int) (clamp(0.0f, 1.0f, f) * 255.0f);
            Shimmer shimmer = this.mShimmer;
            shimmer.baseColor = (iClamp << 24) | (shimmer.baseColor & 16777215);
            return (T) getThis();
        }

        public T setClipToChildren(boolean z) {
            this.mShimmer.clipToChildren = z;
            return (T) getThis();
        }

        public T setDirection(int i) {
            this.mShimmer.direction = i;
            return (T) getThis();
        }

        public T setDropoff(float f) {
            if (f >= 0.0f) {
                this.mShimmer.dropoff = f;
                return (T) getThis();
            }
            throw new IllegalArgumentException("Given invalid dropoff value: " + f);
        }

        public T setDuration(long j) {
            if (j >= 0) {
                this.mShimmer.animationDuration = j;
                return (T) getThis();
            }
            throw new IllegalArgumentException("Given a negative duration: " + j);
        }

        public T setFixedHeight(@Px int i) {
            if (i >= 0) {
                this.mShimmer.fixedHeight = i;
                return (T) getThis();
            }
            throw new IllegalArgumentException("Given invalid height: " + i);
        }

        public T setFixedWidth(@Px int i) {
            if (i >= 0) {
                this.mShimmer.fixedWidth = i;
                return (T) getThis();
            }
            throw new IllegalArgumentException("Given invalid width: " + i);
        }

        public T setHeightRatio(float f) {
            if (f >= 0.0f) {
                this.mShimmer.heightRatio = f;
                return (T) getThis();
            }
            throw new IllegalArgumentException("Given invalid height ratio: " + f);
        }

        public T setHighlightAlpha(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
            int iClamp = (int) (clamp(0.0f, 1.0f, f) * 255.0f);
            Shimmer shimmer = this.mShimmer;
            shimmer.highlightColor = (iClamp << 24) | (shimmer.highlightColor & 16777215);
            return (T) getThis();
        }

        public T setIntensity(float f) {
            if (f >= 0.0f) {
                this.mShimmer.intensity = f;
                return (T) getThis();
            }
            throw new IllegalArgumentException("Given invalid intensity value: " + f);
        }

        public T setRepeatCount(int i) {
            this.mShimmer.repeatCount = i;
            return (T) getThis();
        }

        public T setRepeatDelay(long j) {
            if (j >= 0) {
                this.mShimmer.repeatDelay = j;
                return (T) getThis();
            }
            throw new IllegalArgumentException("Given a negative repeat delay: " + j);
        }

        public T setRepeatMode(int i) {
            this.mShimmer.repeatMode = i;
            return (T) getThis();
        }

        public T setShape(int i) {
            this.mShimmer.shape = i;
            return (T) getThis();
        }

        public T setTilt(float f) {
            this.mShimmer.tilt = f;
            return (T) getThis();
        }

        public T setWidthRatio(float f) {
            if (f >= 0.0f) {
                this.mShimmer.widthRatio = f;
                return (T) getThis();
            }
            throw new IllegalArgumentException("Given invalid width ratio: " + f);
        }

        public T consumeAttributes(TypedArray typedArray) {
            int i = R.styleable.ShimmerFrameLayout_shimmer_clip_to_children;
            if (typedArray.hasValue(i)) {
                setClipToChildren(typedArray.getBoolean(i, this.mShimmer.clipToChildren));
            }
            int i2 = R.styleable.ShimmerFrameLayout_shimmer_auto_start;
            if (typedArray.hasValue(i2)) {
                setAutoStart(typedArray.getBoolean(i2, this.mShimmer.autoStart));
            }
            int i3 = R.styleable.ShimmerFrameLayout_shimmer_base_alpha;
            if (typedArray.hasValue(i3)) {
                setBaseAlpha(typedArray.getFloat(i3, 0.3f));
            }
            int i4 = R.styleable.ShimmerFrameLayout_shimmer_highlight_alpha;
            if (typedArray.hasValue(i4)) {
                setHighlightAlpha(typedArray.getFloat(i4, 1.0f));
            }
            int i5 = R.styleable.ShimmerFrameLayout_shimmer_duration;
            if (typedArray.hasValue(i5)) {
                setDuration(typedArray.getInt(i5, (int) this.mShimmer.animationDuration));
            }
            int i6 = R.styleable.ShimmerFrameLayout_shimmer_repeat_count;
            if (typedArray.hasValue(i6)) {
                setRepeatCount(typedArray.getInt(i6, this.mShimmer.repeatCount));
            }
            int i7 = R.styleable.ShimmerFrameLayout_shimmer_repeat_delay;
            if (typedArray.hasValue(i7)) {
                setRepeatDelay(typedArray.getInt(i7, (int) this.mShimmer.repeatDelay));
            }
            int i8 = R.styleable.ShimmerFrameLayout_shimmer_repeat_mode;
            if (typedArray.hasValue(i8)) {
                setRepeatMode(typedArray.getInt(i8, this.mShimmer.repeatMode));
            }
            int i9 = R.styleable.ShimmerFrameLayout_shimmer_direction;
            if (typedArray.hasValue(i9)) {
                int i10 = typedArray.getInt(i9, this.mShimmer.direction);
                if (i10 == 1) {
                    setDirection(1);
                } else if (i10 == 2) {
                    setDirection(2);
                } else if (i10 != 3) {
                    setDirection(0);
                } else {
                    setDirection(3);
                }
            }
            int i11 = R.styleable.ShimmerFrameLayout_shimmer_shape;
            if (typedArray.hasValue(i11)) {
                if (typedArray.getInt(i11, this.mShimmer.shape) != 1) {
                    setShape(0);
                } else {
                    setShape(1);
                }
            }
            int i12 = R.styleable.ShimmerFrameLayout_shimmer_dropoff;
            if (typedArray.hasValue(i12)) {
                setDropoff(typedArray.getFloat(i12, this.mShimmer.dropoff));
            }
            int i13 = R.styleable.ShimmerFrameLayout_shimmer_fixed_width;
            if (typedArray.hasValue(i13)) {
                setFixedWidth(typedArray.getDimensionPixelSize(i13, this.mShimmer.fixedWidth));
            }
            int i14 = R.styleable.ShimmerFrameLayout_shimmer_fixed_height;
            if (typedArray.hasValue(i14)) {
                setFixedHeight(typedArray.getDimensionPixelSize(i14, this.mShimmer.fixedHeight));
            }
            int i15 = R.styleable.ShimmerFrameLayout_shimmer_intensity;
            if (typedArray.hasValue(i15)) {
                setIntensity(typedArray.getFloat(i15, this.mShimmer.intensity));
            }
            int i16 = R.styleable.ShimmerFrameLayout_shimmer_width_ratio;
            if (typedArray.hasValue(i16)) {
                setWidthRatio(typedArray.getFloat(i16, this.mShimmer.widthRatio));
            }
            int i17 = R.styleable.ShimmerFrameLayout_shimmer_height_ratio;
            if (typedArray.hasValue(i17)) {
                setHeightRatio(typedArray.getFloat(i17, this.mShimmer.heightRatio));
            }
            int i18 = R.styleable.ShimmerFrameLayout_shimmer_tilt;
            if (typedArray.hasValue(i18)) {
                setTilt(typedArray.getFloat(i18, this.mShimmer.tilt));
            }
            return (T) getThis();
        }
    }
}
