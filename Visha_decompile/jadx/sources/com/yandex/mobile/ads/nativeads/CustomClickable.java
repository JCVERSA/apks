package com.yandex.mobile.ads.nativeads;

import androidx.annotation.MainThread;
import androidx.annotation.Nullable;

@MainThread
interface CustomClickable {
    void setCustomClickHandler(@Nullable CustomClickHandler customClickHandler);
}
