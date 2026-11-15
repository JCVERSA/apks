package com.yandex.mobile.ads.nativeads;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;

@MainThread
interface CustomClickHandler {
    void handleCustomClick(@NonNull String str, @NonNull CustomClickHandlerEventListener customClickHandlerEventListener);
}
