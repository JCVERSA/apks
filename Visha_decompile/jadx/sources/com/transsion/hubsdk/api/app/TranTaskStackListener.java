package com.transsion.hubsdk.api.app;

import android.content.ComponentName;

public interface TranTaskStackListener {
    void onLockTaskModeChanged(int i);

    void onTaskCreated(int i, ComponentName componentName);

    void onTaskFocusChanged(int i, boolean z);
}
