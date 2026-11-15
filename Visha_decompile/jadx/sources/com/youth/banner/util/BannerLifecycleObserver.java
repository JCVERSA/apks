package com.youth.banner.util;

import androidx.p004lifecycle.LifecycleObserver;
import androidx.p004lifecycle.LifecycleOwner;

public interface BannerLifecycleObserver extends LifecycleObserver {
    void onDestroy(LifecycleOwner lifecycleOwner);

    void onStart(LifecycleOwner lifecycleOwner);

    void onStop(LifecycleOwner lifecycleOwner);
}
