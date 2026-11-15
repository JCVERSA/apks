package com.transsion.hubsdk.core.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.ComponentName;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.accessibilityservice.ITranAccessibilityServiceInfoManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.accessibilityservice.ITranAccessibilityServiceInfoManagerAdapter;
import java.util.List;

public class TranThubAccessibilityServiceInfoManager implements ITranAccessibilityServiceInfoManagerAdapter {
    private static final String TAG = "TranThubAccessibilityServiceInfoManager";
    private ITranAccessibilityServiceInfoManager mService = ITranAccessibilityServiceInfoManager.Stub.asInterface(TranServiceManager.getServiceIBinder("accessibility_service_info"));

    public Object lambda$getInstalledAccessibilityServiceList$0() throws RemoteException {
        ITranAccessibilityServiceInfoManager iTranAccessibilityServiceInfoManager = this.mService;
        if (iTranAccessibilityServiceInfoManager != null) {
            return iTranAccessibilityServiceInfoManager.getInstalledAccessibilityServiceList();
        }
        return null;
    }

    @Override
    public boolean addAccessibilityService(ComponentName componentName, int i) {
        ITranAccessibilityServiceInfoManager iTranAccessibilityServiceInfoManager = this.mService;
        if (iTranAccessibilityServiceInfoManager == null) {
            return false;
        }
        try {
            return iTranAccessibilityServiceInfoManager.addAccessibilityService(componentName, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "addAccessibilityService:" + e);
            return false;
        }
    }

    @Override
    public boolean getCrashed(AccessibilityServiceInfo accessibilityServiceInfo) {
        ITranAccessibilityServiceInfoManager iTranAccessibilityServiceInfoManager = this.mService;
        if (iTranAccessibilityServiceInfoManager == null) {
            return false;
        }
        try {
            return iTranAccessibilityServiceInfoManager.getCrashed(accessibilityServiceInfo);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getCrashed:" + e);
            return false;
        }
    }

    @Override
    public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList() {
        List<AccessibilityServiceInfo> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getInstalledAccessibilityServiceList$0();
            }
        }, "accessibility_service_info");
        TranSdkLog.i(TAG, "getInstalledAccessibilityServiceList mAccessibilityServiceInfos:" + list);
        return list;
    }

    @Override
    public boolean removeAccessibilityService(ComponentName componentName, int i) {
        ITranAccessibilityServiceInfoManager iTranAccessibilityServiceInfoManager = this.mService;
        if (iTranAccessibilityServiceInfoManager == null) {
            return false;
        }
        try {
            return iTranAccessibilityServiceInfoManager.removeAccessibilityService(componentName, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "removeAccessibilityService:" + e);
            return false;
        }
    }

    @VisibleForTesting
    public void setService(ITranAccessibilityServiceInfoManager iTranAccessibilityServiceInfoManager) {
        this.mService = iTranAccessibilityServiceInfoManager;
    }
}
