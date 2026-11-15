package com.mgtv.drm.jni;

import com.mgtv.drm.log.LightPlayLogger;

public class LightPlayDrmNativeLog {
    public static void ImgoLogReport(int i, String str, String str2, String str3) {
        if (LightPlayLogger.getLogCallback() != null) {
            if (LightPlayLogger.isDebugMode() || i != 0) {
                LightPlayLogger.getLogCallback().onLogCb(i, str, "[MgtvDRM-" + Thread.currentThread().getId() + "]" + str2, str3);
            }
        }
    }
}
