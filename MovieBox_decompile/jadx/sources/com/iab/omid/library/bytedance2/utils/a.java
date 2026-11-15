package com.iab.omid.library.bytedance2.utils;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.bytedance2.adsession.DeviceCategory;

public final class a {

    private static UiModeManager f32655a;

    public static DeviceCategory a() {
        UiModeManager uiModeManager = f32655a;
        if (uiModeManager == null) {
            return DeviceCategory.OTHER;
        }
        int currentModeType = uiModeManager.getCurrentModeType();
        if (currentModeType != 1) {
            return currentModeType != 4 ? DeviceCategory.OTHER : DeviceCategory.CTV;
        }
        return DeviceCategory.MOBILE;
    }

    public static void a(Context context) {
        if (context != null) {
            f32655a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
