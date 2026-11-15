package com.mgmi.ssp;

import android.widget.RelativeLayout;

public interface SplashADListener extends BasicADListener {
    void onADClicked();

    void onADDismissed();

    void onADExposure();

    void onADLoad(int i);

    void onADPresent();

    void onADTick(long j);

    RelativeLayout.LayoutParams setSkipViewLayoutParams();
}
