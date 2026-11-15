package com.bumptech.glide.manager;

import android.app.Activity;

final class DoNothingFirstFrameWaiter implements FrameWaiter {
    DoNothingFirstFrameWaiter() {
    }

    @Override
    public void registerSelf(Activity activity) {
    }
}
