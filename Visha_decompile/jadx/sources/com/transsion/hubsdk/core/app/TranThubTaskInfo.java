package com.transsion.hubsdk.core.app;

import android.app.TaskInfo;
import com.transsion.hubsdk.app.TranTaskInfo;
import com.transsion.hubsdk.interfaces.app.ITranTaskInfoAdapter;

public class TranThubTaskInfo implements ITranTaskInfoAdapter {
    private TranTaskInfo mTranTaskInfo = new TranTaskInfo();

    @Override
    public int getDisplayId(TaskInfo taskInfo) {
        TranTaskInfo tranTaskInfo = this.mTranTaskInfo;
        if (tranTaskInfo != null) {
            return tranTaskInfo.getDisplayId(taskInfo);
        }
        return 0;
    }

    @Override
    public boolean getSupportsMultiWindow(TaskInfo taskInfo) {
        TranTaskInfo tranTaskInfo = this.mTranTaskInfo;
        if (tranTaskInfo != null) {
            return tranTaskInfo.getSupportsMultiWindow(taskInfo);
        }
        return false;
    }

    @Override
    public int getUserId(TaskInfo taskInfo) {
        TranTaskInfo tranTaskInfo = this.mTranTaskInfo;
        if (tranTaskInfo != null) {
            return tranTaskInfo.getUserId(taskInfo);
        }
        return 0;
    }
}
