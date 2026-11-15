package com.bumptech.glide.manager;

import androidx.annotation.NonNull;

class ApplicationLifecycle implements Lifecycle {
    @Override
    public void addListener(@NonNull LifecycleListener lifecycleListener) {
        lifecycleListener.onStart();
    }

    @Override
    public void removeListener(@NonNull LifecycleListener lifecycleListener) {
    }
}
