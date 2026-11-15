package com.transsion.hubsdk.interfaces.app;

import android.app.TaskInfo;

public interface ITranTaskInfoAdapter {
    int getDisplayId(TaskInfo taskInfo);

    boolean getSupportsMultiWindow(TaskInfo taskInfo);

    int getUserId(TaskInfo taskInfo);
}
