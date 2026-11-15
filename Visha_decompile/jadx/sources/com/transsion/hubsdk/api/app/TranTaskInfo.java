package com.transsion.hubsdk.api.app;

import android.app.TaskInfo;
import com.transsion.hubsdk.aosp.app.TranAospTaskInfo;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubTaskInfo;
import com.transsion.hubsdk.interfaces.app.ITranTaskInfoAdapter;

public class TranTaskInfo {
    private static final String TAG = "TranTaskInfo";
    private TranAospTaskInfo mAospService;
    private TranThubTaskInfo mThubService;

    public int getDisplayId(TaskInfo taskInfo) {
        if (taskInfo != null) {
            return getService(TranVersion.Core.VERSION_33371).getDisplayId(taskInfo);
        }
        throw new NullPointerException("taskInfo is null");
    }

    public ITranTaskInfoAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubTaskInfo");
            TranThubTaskInfo tranThubTaskInfo = this.mThubService;
            if (tranThubTaskInfo != null) {
                return tranThubTaskInfo;
            }
            TranThubTaskInfo tranThubTaskInfo2 = new TranThubTaskInfo();
            this.mThubService = tranThubTaskInfo2;
            return tranThubTaskInfo2;
        }
        TranSdkLog.i(TAG, "TranAospTaskInfo");
        TranAospTaskInfo tranAospTaskInfo = this.mAospService;
        if (tranAospTaskInfo != null) {
            return tranAospTaskInfo;
        }
        TranAospTaskInfo tranAospTaskInfo2 = new TranAospTaskInfo();
        this.mAospService = tranAospTaskInfo2;
        return tranAospTaskInfo2;
    }

    public boolean getSupportsMultiWindow(TaskInfo taskInfo) {
        if (taskInfo != null) {
            return getService(TranVersion.Core.VERSION_33341).getSupportsMultiWindow(taskInfo);
        }
        throw new NullPointerException("taskInfo is null");
    }

    public int getUserId(TaskInfo taskInfo) {
        if (taskInfo != null) {
            return getService(TranVersion.Core.VERSION_33311).getUserId(taskInfo);
        }
        throw new IllegalArgumentException("taskInfo is null");
    }
}
