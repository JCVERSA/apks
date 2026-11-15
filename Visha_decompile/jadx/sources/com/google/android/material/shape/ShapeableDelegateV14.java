package com.google.android.material.shape;

import android.view.View;
import androidx.annotation.NonNull;

class ShapeableDelegateV14 extends ShapeableDelegate {
    @Override
    public void invalidateClippingMethod(@NonNull View view) {
        if (this.shapeAppearanceModel == null || this.maskBounds.isEmpty() || !shouldUseCompatClipping()) {
            return;
        }
        view.invalidate();
    }

    @Override
    public boolean shouldUseCompatClipping() {
        return true;
    }
}
