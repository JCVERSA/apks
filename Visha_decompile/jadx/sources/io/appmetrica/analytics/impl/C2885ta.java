package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;

public final class C2885ta implements Vj {
    @Override
    public final void onCreate() {
        NetworkServiceLocator.getInstance().onCreate();
    }

    @Override
    public final void onDestroy() {
        NetworkServiceLocator.getInstance().onDestroy();
    }
}
