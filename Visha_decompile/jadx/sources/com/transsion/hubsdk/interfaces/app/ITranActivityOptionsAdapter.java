package com.transsion.hubsdk.interfaces.app;

import android.app.ActivityOptions;
import android.os.Bundle;
import android.os.Messenger;

public interface ITranActivityOptionsAdapter {
    ActivityOptions fromBundle(Bundle bundle);

    void setActivitySurfaceShownCallback(ActivityOptions activityOptions, Messenger messenger, long j, long j2);

    void setDisallowEnterPictureInPictureWhileLaunching(boolean z);

    void setLaunchTaskId(ActivityOptions activityOptions, int i);

    void setLaunchWindowingMode(ActivityOptions activityOptions, int i);

    void setRotationAnimationHint(int i);

    void setStartMultiWindowByRecent(ActivityOptions activityOptions, int i);

    void setThunderBackSupport(ActivityOptions activityOptions, boolean z);

    Bundle toBundle();
}
