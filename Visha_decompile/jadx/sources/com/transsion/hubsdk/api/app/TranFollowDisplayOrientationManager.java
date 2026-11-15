package com.transsion.hubsdk.api.app;

import com.transsion.hubsdk.aosp.app.TranAospFollowDisplayOrientationManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubFollowDisplayOrientationManager;
import com.transsion.hubsdk.interfaces.app.ITranFollowDisplayOrientationManagerAdapter;

public class TranFollowDisplayOrientationManager {
    private static final String TAG = "TranFollowDisplayOrientationManager";
    private TranAospFollowDisplayOrientationManager mAospService;
    private TranThubFollowDisplayOrientationManager mThubService;

    public void commit() {
        getService(TranVersion.Core.VERSION_33281).commit();
    }

    public int getFollowDisplayOrientionType(String str) {
        return getService(TranVersion.Core.VERSION_33281).getFollowDisplayOrientionType(str);
    }

    public ITranFollowDisplayOrientationManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubFollowDisplayOrientationManager");
            TranThubFollowDisplayOrientationManager tranThubFollowDisplayOrientationManager = this.mThubService;
            if (tranThubFollowDisplayOrientationManager != null) {
                return tranThubFollowDisplayOrientationManager;
            }
            TranThubFollowDisplayOrientationManager tranThubFollowDisplayOrientationManager2 = new TranThubFollowDisplayOrientationManager();
            this.mThubService = tranThubFollowDisplayOrientationManager2;
            return tranThubFollowDisplayOrientationManager2;
        }
        TranSdkLog.i(TAG, "TranAospFollowDisplayOrientationManager");
        TranAospFollowDisplayOrientationManager tranAospFollowDisplayOrientationManager = this.mAospService;
        if (tranAospFollowDisplayOrientationManager != null) {
            return tranAospFollowDisplayOrientationManager;
        }
        TranAospFollowDisplayOrientationManager tranAospFollowDisplayOrientationManager2 = new TranAospFollowDisplayOrientationManager();
        this.mAospService = tranAospFollowDisplayOrientationManager2;
        return tranAospFollowDisplayOrientationManager2;
    }

    public void init() {
        getService(TranVersion.Core.VERSION_33281).init();
    }

    public boolean isEnabledPackage(String str) {
        return getService(TranVersion.Core.VERSION_33281).isEnabledPackage(str);
    }

    public Object setEnabledPackage(String str, boolean z) {
        return getService(TranVersion.Core.VERSION_33281).setEnabledPackage(str, z);
    }

    public Object setFollowDisplayOrientationType(String str, int i) {
        return getService(TranVersion.Core.VERSION_33281).setFollowDisplayOrientationType(str, i);
    }
}
