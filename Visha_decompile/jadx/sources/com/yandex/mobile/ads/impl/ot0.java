package com.yandex.mobile.ads.impl;

import androidx.annotation.MainThread;

@MainThread
public interface ot0 {
    void onInstreamAdBreakCompleted();

    void onInstreamAdBreakError(String str);

    void onInstreamAdBreakPrepared();

    void onInstreamAdBreakStarted();
}
