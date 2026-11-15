package com.transsion.widgets;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class SquareFrameLayout extends InterceptFrameLayout {
    public SquareFrameLayout(@NonNull Context context) {
        super(context);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i);
    }

    public SquareFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SquareFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SquareFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
