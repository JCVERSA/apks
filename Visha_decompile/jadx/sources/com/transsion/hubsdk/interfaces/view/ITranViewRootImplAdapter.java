package com.transsion.hubsdk.interfaces.view;

import android.graphics.drawable.Drawable;
import android.view.View;

public interface ITranViewRootImplAdapter {
    Drawable createBackgroundBlurDrawable(View view, int i);

    Drawable createBackgroundBlurDrawable(View view, int i, int i2, float f);

    void notifyInsetsChanged(View view);
}
