package com.mgmi.ssp;

import androidx.annotation.NonNull;

public interface IncentiveVideoListener extends BasicADListener {
    void onAdClick();

    void onAdClosed();

    void onAdComplete();

    void onAdError(@NonNull AdError adError);

    void onAdPrepared();

    void onAdStart();

    void onUpdateAdTime(int i);
}
