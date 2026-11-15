package com.just.agentweb;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;

public abstract class BaseIndicatorView extends FrameLayout implements BaseIndicatorSpec, LayoutParamsOffer {
    public BaseIndicatorView(Context context) {
        super(context);
    }

    @Override
    public void hide() {
    }

    @Override
    public void reset() {
    }

    @Override
    public void setProgress(int i) {
    }

    @Override
    public void show() {
    }

    public BaseIndicatorView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BaseIndicatorView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
