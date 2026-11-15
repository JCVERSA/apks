package com.transsion.hubsdk.interfaces.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.ComponentName;
import java.util.List;

public interface ITranAccessibilityServiceInfoManagerAdapter {
    boolean addAccessibilityService(ComponentName componentName, int i);

    boolean getCrashed(AccessibilityServiceInfo accessibilityServiceInfo);

    List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList();

    boolean removeAccessibilityService(ComponentName componentName, int i);
}
