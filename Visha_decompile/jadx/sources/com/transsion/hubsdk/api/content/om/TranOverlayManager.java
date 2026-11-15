package com.transsion.hubsdk.api.content.om;

import com.transsion.hubsdk.aosp.content.om.TranAospOverlayManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.content.om.TranThubOverlayManager;
import com.transsion.hubsdk.interfaces.content.om.ITranOverlayManagerAdapter;

public class TranOverlayManager {
    public static final String PACKAGE_NAME_ARGUMENT_EXCEPTION = "package name should not be null";
    private static final String TAG = "TranOverlayManager";
    public static final String USERID_ARGUMENT_EXCEPTION = "userId is wrong";
    private TranAospOverlayManager mAospService;
    private TranThubOverlayManager mThubService;

    public ITranOverlayManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubOverlayManager");
            TranThubOverlayManager tranThubOverlayManager = this.mThubService;
            if (tranThubOverlayManager != null) {
                return tranThubOverlayManager;
            }
            TranThubOverlayManager tranThubOverlayManager2 = new TranThubOverlayManager();
            this.mThubService = tranThubOverlayManager2;
            return tranThubOverlayManager2;
        }
        TranSdkLog.i(TAG, "TranAospOverlayManager");
        TranAospOverlayManager tranAospOverlayManager = this.mAospService;
        if (tranAospOverlayManager != null) {
            return tranAospOverlayManager;
        }
        TranAospOverlayManager tranAospOverlayManager2 = new TranAospOverlayManager();
        this.mAospService = tranAospOverlayManager2;
        return tranAospOverlayManager2;
    }

    @TranLevel(level = 1)
    public void setEnabled(String str, boolean z, int i) {
        if (str == null) {
            throw new IllegalArgumentException("package name should not be null");
        }
        if (i <= Integer.MIN_VALUE || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("userId is wrong");
        }
        getService(TranVersion.Core.VERSION_33451).setEnabled(str, z, i);
    }

    @TranLevel(level = 1)
    public void setEnabledExclusiveInCategory(String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("package name should not be null");
        }
        if (i <= Integer.MIN_VALUE || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("userId is wrong");
        }
        getService(TranVersion.Core.VERSION_33171).setEnabledExclusiveInCategory(str, i);
    }
}
