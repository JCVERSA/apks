package com.bumptech.glide.manager;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

final class FirstFrameWaiter implements FrameWaiter {
    volatile boolean isFirstFrameSet;
    final Set<Activity> pendingActivities = Collections.newSetFromMap(new WeakHashMap());

    FirstFrameWaiter() {
    }

    static void removeListener(View view, ViewTreeObserver.OnDrawListener onDrawListener) {
        view.getViewTreeObserver().removeOnDrawListener(onDrawListener);
    }

    @Override
    public void registerSelf(Activity activity) {
        if (!this.isFirstFrameSet && this.pendingActivities.add(activity)) {
            final View decorView = activity.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new ViewTreeObserver.OnDrawListener() {
                @Override
                public void onDraw() {
                    Util.postOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            HardwareConfigState.getInstance().unblockHardwareBitmaps();
                            FirstFrameWaiter.this.isFirstFrameSet = true;
                            FirstFrameWaiter.removeListener(decorView, this);
                            FirstFrameWaiter.this.pendingActivities.clear();
                        }
                    });
                }
            });
        }
    }
}
