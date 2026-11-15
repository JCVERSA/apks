package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class ClippableRoundedCornerLayout extends FrameLayout {

    private Path f28262a;

    private float f28263b;

    public ClippableRoundedCornerLayout(@NonNull Context context) {
        super(context);
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        if (this.f28262a == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipPath(this.f28262a);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    public float getCornerRadius() {
        return this.f28263b;
    }

    public void resetClipBoundsAndCornerRadius() {
        this.f28262a = null;
        this.f28263b = 0.0f;
        invalidate();
    }

    public void updateClipBoundsAndCornerRadius(@NonNull Rect rect, float f10) {
        updateClipBoundsAndCornerRadius(rect.left, rect.top, rect.right, rect.bottom, f10);
    }

    public void updateCornerRadius(float f10) {
        updateClipBoundsAndCornerRadius(getLeft(), getTop(), getRight(), getBottom(), f10);
    }

    public ClippableRoundedCornerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void updateClipBoundsAndCornerRadius(float f10, float f11, float f12, float f13, float f14) {
        updateClipBoundsAndCornerRadius(new RectF(f10, f11, f12, f13), f14);
    }

    public ClippableRoundedCornerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public void updateClipBoundsAndCornerRadius(@NonNull RectF rectF, float f10) {
        if (this.f28262a == null) {
            this.f28262a = new Path();
        }
        this.f28263b = f10;
        this.f28262a.reset();
        this.f28262a.addRoundRect(rectF, f10, f10, Path.Direction.CW);
        this.f28262a.close();
        invalidate();
    }
}
