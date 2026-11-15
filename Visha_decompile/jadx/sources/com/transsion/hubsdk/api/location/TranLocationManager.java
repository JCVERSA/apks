package com.transsion.hubsdk.api.location;

import android.os.UserHandle;
import com.transsion.hubsdk.aosp.location.TranAospLocationManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.location.TranThubLocationManager;
import com.transsion.hubsdk.interfaces.location.ITranLocationManagerAdapter;

public class TranLocationManager {
    public static final String PACKAGE_NAME_ARGUMENT_EXCEPTION = "package name should not be null";
    private static final String TAG = "TranLocationManager";
    private TranAospLocationManager mAospService;
    private TranThubLocationManager mThubService;

    public ITranLocationManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubLocationManager");
            TranThubLocationManager tranThubLocationManager = this.mThubService;
            if (tranThubLocationManager != null) {
                return tranThubLocationManager;
            }
            TranThubLocationManager tranThubLocationManager2 = new TranThubLocationManager();
            this.mThubService = tranThubLocationManager2;
            return tranThubLocationManager2;
        }
        TranSdkLog.i(TAG, "TranAospLocationManager");
        TranAospLocationManager tranAospLocationManager = this.mAospService;
        if (tranAospLocationManager != null) {
            return tranAospLocationManager;
        }
        TranAospLocationManager tranAospLocationManager2 = new TranAospLocationManager();
        this.mAospService = tranAospLocationManager2;
        return tranAospLocationManager2;
    }

    @TranLevel(level = 2)
    public void setLocationEnabledForUser(boolean z, UserHandle userHandle) {
        getService(TranVersion.Core.VERSION_33181).setLocationEnabledForUser(z, userHandle);
    }
}
