package com.yandex.mobile.ads.nativeads;

import androidx.annotation.MainThread;

@MainThread
interface CustomClickHandlerEventListener {
    void onLeftApplication();

    void onReturnedToApplication();
}
