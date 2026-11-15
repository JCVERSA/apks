package com.transsion.hubsdk.aosp.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.ComponentName;
import android.view.accessibility.AccessibilityManager;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.accessibilityservice.ITranAccessibilityServiceInfoManagerAdapter;
import java.util.ArrayList;
import java.util.List;

public class TranAospAccessibilityServiceInfoManager implements ITranAccessibilityServiceInfoManagerAdapter {
    private static final String TAG = "TranAospAccessibilityServiceInfoManager";
    private final AccessibilityManager mAccessibilityManager = (AccessibilityManager) TranHubSdkManager.getContext().getSystemService("accessibility");

    @Override
    public boolean addAccessibilityService(ComponentName componentName, int i) {
        return false;
    }

    @Override
    public boolean getCrashed(AccessibilityServiceInfo accessibilityServiceInfo) {
        try {
            return TranDoorMan.getField(accessibilityServiceInfo.getClass(), "crashed").getBoolean(accessibilityServiceInfo);
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "getCrashed fail.");
            return false;
        }
    }

    @Override
    public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mAccessibilityManager.getClass(), "getInstalledAccessibilityServiceList", new Class[0]), this.mAccessibilityManager, new Object[0]);
        ArrayList arrayList = new ArrayList();
        if (objInvokeMethod instanceof List) {
            for (Object obj : (List) objInvokeMethod) {
                if (obj.getClass().equals(AccessibilityServiceInfo.class)) {
                    arrayList.add((AccessibilityServiceInfo) AccessibilityServiceInfo.class.cast(obj));
                }
            }
        }
        return arrayList;
    }

    @Override
    public boolean removeAccessibilityService(ComponentName componentName, int i) {
        return false;
    }
}
