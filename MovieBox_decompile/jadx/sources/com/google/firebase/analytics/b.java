package com.google.firebase.analytics;

import java.util.concurrent.Callable;

final class b implements Callable {

    private final FirebaseAnalytics f30226a;

    b(FirebaseAnalytics firebaseAnalytics) {
        this.f30226a = firebaseAnalytics;
    }

    @Override
    public final Object call() {
        return this.f30226a.f30224a.zzc();
    }
}
