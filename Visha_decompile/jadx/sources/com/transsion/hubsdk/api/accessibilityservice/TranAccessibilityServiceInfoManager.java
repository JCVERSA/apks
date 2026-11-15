package com.transsion.hubsdk.api.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.ComponentName;
import com.transsion.hubsdk.aosp.accessibilityservice.TranAospAccessibilityServiceInfoManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.accessibilityservice.TranThubAccessibilityServiceInfoManager;
import com.transsion.hubsdk.interfaces.accessibilityservice.ITranAccessibilityServiceInfoManagerAdapter;
import java.util.List;

public class TranAccessibilityServiceInfoManager {
    private static final String TAG = "TranAccessibilityServiceInfoManager";
    private TranAospAccessibilityServiceInfoManager mAospService;
    private TranThubAccessibilityServiceInfoManager mThubService;

    public boolean addAccessibilityService(ComponentName componentName, int i) {
        if (componentName == null) {
            return false;
        }
        return getService(TranVersion.Core.VERSION_33421).addAccessibilityService(componentName, i);
    }

    @TranLevel(level = 1)
    public boolean getCrashed(AccessibilityServiceInfo accessibilityServiceInfo) {
        return getService(TranVersion.Core.VERSION_33121).getCrashed(accessibilityServiceInfo);
    }

    public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList() {
        return getService(TranVersion.Core.VERSION_33151).getInstalledAccessibilityServiceList();
    }

    public ITranAccessibilityServiceInfoManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubAccessibilityServiceInfoManager");
            TranThubAccessibilityServiceInfoManager tranThubAccessibilityServiceInfoManager = this.mThubService;
            if (tranThubAccessibilityServiceInfoManager != null) {
                return tranThubAccessibilityServiceInfoManager;
            }
            TranThubAccessibilityServiceInfoManager tranThubAccessibilityServiceInfoManager2 = new TranThubAccessibilityServiceInfoManager();
            this.mThubService = tranThubAccessibilityServiceInfoManager2;
            return tranThubAccessibilityServiceInfoManager2;
        }
        TranSdkLog.i(TAG, "TranAospAccessibilityServiceInfoManager");
        TranAospAccessibilityServiceInfoManager tranAospAccessibilityServiceInfoManager = this.mAospService;
        if (tranAospAccessibilityServiceInfoManager != null) {
            return tranAospAccessibilityServiceInfoManager;
        }
        TranAospAccessibilityServiceInfoManager tranAospAccessibilityServiceInfoManager2 = new TranAospAccessibilityServiceInfoManager();
        this.mAospService = tranAospAccessibilityServiceInfoManager2;
        return tranAospAccessibilityServiceInfoManager2;
    }

    public boolean removeAccessibilityService(ComponentName componentName, int i) {
        if (componentName == null) {
            return false;
        }
        return getService(TranVersion.Core.VERSION_33421).removeAccessibilityService(componentName, i);
    }
}
