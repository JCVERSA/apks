package com.bumptech.glide.manager;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(26)
final class FirstFrameAndAfterTrimMemoryWaiter implements FrameWaiter, ComponentCallbacks2 {
    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
    }

    @Override
    public void onLowMemory() {
        onTrimMemory(20);
    }

    @Override
    public void onTrimMemory(int i) {
    }

    @Override
    public void registerSelf(Activity activity) {
    }
}
