package com.just.agentweb;

import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public interface LayoutParamsOffer<T extends FrameLayout.LayoutParams> {
    T offerLayoutParams();
}
