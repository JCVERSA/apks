package com.yandex.mobile.ads.impl;

import androidx.annotation.MainThread;

@MainThread
public interface nu {
    void onVideoCompleted();

    void onVideoError();

    void onVideoPaused();

    void onVideoPrepared();

    void onVideoResumed();
}
