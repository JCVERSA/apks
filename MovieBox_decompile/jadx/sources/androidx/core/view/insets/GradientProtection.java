package androidx.core.view.insets;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.animation.PathInterpolator;

public class GradientProtection extends Protection {
    private static final float[] ALPHAS;
    private int mColor;
    private final int[] mColors;
    private final GradientDrawable mDrawable;
    private boolean mHasColor;
    private float mScale;

    static {
        float[] fArr = new float[100];
        ALPHAS = fArr;
        PathInterpolator pathInterpolator = new PathInterpolator(0.42f, 0.0f, 0.58f, 1.0f);
        int length = fArr.length - 1;
        for (int i10 = length; i10 >= 0; i10--) {
            ALPHAS[i10] = pathInterpolator.getInterpolation((length - i10) / length);
        }
    }

    public GradientProtection(int i10) {
        super(i10);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.mDrawable = gradientDrawable;
        this.mColors = new int[ALPHAS.length];
        this.mColor = 0;
        this.mScale = 1.2f;
        if (i10 == 1) {
            gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
            return;
        }
        if (i10 == 2) {
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        } else if (i10 == 4) {
            gradientDrawable.setOrientation(GradientDrawable.Orientation.RIGHT_LEFT);
        } else {
            if (i10 != 8) {
                return;
            }
            gradientDrawable.setOrientation(GradientDrawable.Orientation.BOTTOM_TOP);
        }
    }

    private void setColorInner(int i10) {
        if (this.mColor != i10) {
            this.mColor = i10;
            toColors(i10, this.mColors);
            this.mDrawable.setColors(this.mColors);
            setDrawable(this.mDrawable);
        }
    }

    private static void toColors(int i10, int[] iArr) {
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr[length] = Color.argb((int) (ALPHAS[length] * Color.alpha(i10)), Color.red(i10), Color.green(i10), Color.blue(i10));
        }
    }

    @Override
    void dispatchColorHint(int i10) {
        if (this.mHasColor) {
            return;
        }
        setColorInner(i10);
    }

    public int getColor() {
        return this.mColor;
    }

    public float getScale() {
        return this.mScale;
    }

    @Override
    int getThickness(int i10) {
        return (int) (this.mScale * i10);
    }

    public void setColor(int i10) {
        this.mHasColor = true;
        setColorInner(i10);
    }

    public void setScale(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Scale must not be negative.");
        }
        this.mScale = f10;
        updateLayout();
    }

    public GradientProtection(int i10, int i11) {
        this(i10);
        setColor(i11);
    }
}
