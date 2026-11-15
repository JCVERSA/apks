package com.transsion.hubsdk.api.app;

import com.transsion.hubsdk.aosp.app.TranAospAlarmManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubAlarmManager;
import com.transsion.hubsdk.interfaces.app.ITranAlarmManagerAdapter;

public class TranAlarmManager {
    private static final String TAG = "TranAlarmManager";
    private TranAospAlarmManager mAospService;
    private TranThubAlarmManager mThubService;

    public void cancelPoweroffAlarm(String str) {
        if (str == null) {
            throw new IllegalArgumentException("name cannot be null");
        }
        getService(TranVersion.Core.VERSION_33181).cancelPoweroffAlarm(str);
    }

    public ITranAlarmManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubAlarmManager");
            TranThubAlarmManager tranThubAlarmManager = this.mThubService;
            if (tranThubAlarmManager != null) {
                return tranThubAlarmManager;
            }
            TranThubAlarmManager tranThubAlarmManager2 = new TranThubAlarmManager();
            this.mThubService = tranThubAlarmManager2;
            return tranThubAlarmManager2;
        }
        TranSdkLog.i(TAG, "TranAospAlarmManager");
        TranAospAlarmManager tranAospAlarmManager = this.mAospService;
        if (tranAospAlarmManager != null) {
            return tranAospAlarmManager;
        }
        TranAospAlarmManager tranAospAlarmManager2 = new TranAospAlarmManager();
        this.mAospService = tranAospAlarmManager2;
        return tranAospAlarmManager2;
    }
}
