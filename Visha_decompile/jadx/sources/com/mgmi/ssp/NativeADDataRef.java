package com.mgmi.ssp;

import android.view.View;

public interface NativeADDataRef {
    String getDesc();

    String getImgUrl();

    String getTitle();

    void onClicked(View view);

    void onExposured(View view);
}
