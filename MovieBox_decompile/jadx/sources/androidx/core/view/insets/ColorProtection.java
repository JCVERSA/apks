package androidx.core.view.insets;

import android.graphics.drawable.ColorDrawable;

public class ColorProtection extends Protection {
    private int mColor;
    private final ColorDrawable mDrawable;
    private boolean mHasColor;

    public ColorProtection(int i10) {
        super(i10);
        this.mDrawable = new ColorDrawable();
        this.mColor = 0;
    }

    private void setColorInner(int i10) {
        if (this.mColor != i10) {
            this.mColor = i10;
            this.mDrawable.setColor(i10);
            setDrawable(this.mDrawable);
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

    @Override
    boolean occupiesCorners() {
        return true;
    }

    public void setColor(int i10) {
        this.mHasColor = true;
        setColorInner(i10);
    }

    public ColorProtection(int i10, int i11) {
        this(i10);
        setColor(i11);
    }
}
