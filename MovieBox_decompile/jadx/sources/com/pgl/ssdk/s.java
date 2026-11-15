package com.pgl.ssdk;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

public class s {

    private static AccessibilityManager f39362a;

    private static AccessibilityManager a(Context context) {
        if (f39362a == null) {
            f39362a = (AccessibilityManager) context.getSystemService("accessibility");
        }
        return f39362a;
    }

    public static String b(Context context) {
        AccessibilityManager accessibilityManagerA;
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        if (context == null || (accessibilityManagerA = a(context)) == null || (enabledAccessibilityServiceList = accessibilityManagerA.getEnabledAccessibilityServiceList(-1)) == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < enabledAccessibilityServiceList.size(); i10++) {
            AccessibilityServiceInfo accessibilityServiceInfo = enabledAccessibilityServiceList.get(i10);
            if (accessibilityServiceInfo != null) {
                sb2.append(String.format("%s#%s", accessibilityServiceInfo.getResolveInfo().serviceInfo.packageName, accessibilityServiceInfo.getResolveInfo().serviceInfo.name));
                if (i10 != enabledAccessibilityServiceList.size() - 1) {
                    sb2.append(",");
                }
            }
        }
        return sb2.toString();
    }
}
