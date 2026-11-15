package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;

@Keep
@UiThread
public interface AdComponentViewApi extends AdComponentViewParentApi {
    void onAttachedToView(AdComponentView adComponentView, AdComponentViewParentApi adComponentViewParentApi);
}
