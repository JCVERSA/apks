package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;

@Keep
@UiThread
public interface AdComponentViewApiProvider {
    AdComponentViewApi getAdComponentViewApi();
}
