package com.transsion.hubsdk.interfaces.content.pm;

import android.content.pm.ActivityInfo;

public interface ITranActivityInfoAdapter {
    boolean isResizeableMode(int i);

    int resizeMode(ActivityInfo activityInfo);
}
