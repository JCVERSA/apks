package com.yandex.mobile.ads.impl;

import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleObserver;
import androidx.p004lifecycle.LifecycleOwner;
import defpackage.y45;

public final class sb0 implements LifecycleOwner {
    private final a a = new a();

    public static final class a extends Lifecycle {
        private final Lifecycle.State a = Lifecycle.State.STARTED;

        @Override
        public final void addObserver(LifecycleObserver lifecycleObserver) {
            y45.j(lifecycleObserver, "observer");
        }

        @Override
        public final Lifecycle.State getCurrentState() {
            return this.a;
        }

        @Override
        public final void removeObserver(LifecycleObserver lifecycleObserver) {
            y45.j(lifecycleObserver, "observer");
        }
    }

    @Override
    public final Lifecycle getLifecycle() {
        return this.a;
    }
}
