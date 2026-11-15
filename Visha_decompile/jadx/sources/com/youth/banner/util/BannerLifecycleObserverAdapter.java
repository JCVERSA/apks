package com.youth.banner.util;

import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleObserver;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.OnLifecycleEvent;

public class BannerLifecycleObserverAdapter implements LifecycleObserver {
    private final LifecycleOwner mLifecycleOwner;
    private final BannerLifecycleObserver mObserver;

    public BannerLifecycleObserverAdapter(LifecycleOwner lifecycleOwner, BannerLifecycleObserver bannerLifecycleObserver) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mObserver = bannerLifecycleObserver;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        LogUtils.i("onDestroy");
        this.mObserver.onDestroy(this.mLifecycleOwner);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart() {
        LogUtils.i("onStart");
        this.mObserver.onStart(this.mLifecycleOwner);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop() {
        LogUtils.i("onStop");
        this.mObserver.onStop(this.mLifecycleOwner);
    }
}
