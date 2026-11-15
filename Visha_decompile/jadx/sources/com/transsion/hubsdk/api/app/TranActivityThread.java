package com.transsion.hubsdk.api.app;

import android.app.Application;
import com.transsion.hubsdk.aosp.app.TranAospActivityThread;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubActivityThread;
import com.transsion.hubsdk.interfaces.app.ITranActivityThreadAdapter;

public class TranActivityThread {
    private static final String TAG = "TranActivityThread";
    private TranAospActivityThread mAospService;
    private TranThubActivityThread mThubService;

    @TranLevel(level = 1)
    public Application currentApplication() {
        return getService(TranVersion.Core.VERSION_33181).currentApplication();
    }

    public Application getApplication() {
        return getService(TranVersion.Core.VERSION_33181).getApplication();
    }

    public ITranActivityThreadAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubActivityThread");
            TranThubActivityThread tranThubActivityThread = this.mThubService;
            if (tranThubActivityThread != null) {
                return tranThubActivityThread;
            }
            TranThubActivityThread tranThubActivityThread2 = new TranThubActivityThread();
            this.mThubService = tranThubActivityThread2;
            return tranThubActivityThread2;
        }
        TranSdkLog.i(TAG, "TranAospActivityThread");
        TranAospActivityThread tranAospActivityThread = this.mAospService;
        if (tranAospActivityThread != null) {
            return tranAospActivityThread;
        }
        TranAospActivityThread tranAospActivityThread2 = new TranAospActivityThread();
        this.mAospService = tranAospActivityThread2;
        return tranAospActivityThread2;
    }
}
