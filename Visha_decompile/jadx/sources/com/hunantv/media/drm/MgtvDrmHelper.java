package com.hunantv.media.drm;

import android.media.MediaDrm;
import java.util.UUID;

public class MgtvDrmHelper {
    private static final UUID WIDEVINE_UUID = new UUID(-1301668207276963122L, -6645017420763422227L);
    private static final UUID WISEPLAY_DRM_UUID = new UUID(4422091961135677928L, -5169044695670406100L);
    private static String sWpSupportMsg;
    private static String sWvSupportMsg;

    public static synchronized String getWidevineSupportMsg() {
        return sWvSupportMsg;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public static synchronized String getWisePlaySupportMsg() {
        return "ng";
    }

    public static void updateWidevineSupportMsg() {
        if (sWvSupportMsg == null) {
            int i = 0;
            try {
                UUID uuid = WIDEVINE_UUID;
                if (MediaDrm.isCryptoSchemeSupported(uuid)) {
                    MediaDrm mediaDrm = new MediaDrm(uuid);
                    i = 1;
                    String propertyString = mediaDrm.getPropertyString("securityLevel");
                    mediaDrm.release();
                    sWvSupportMsg = "1_" + propertyString;
                    return;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            sWvSupportMsg = i + "";
        }
    }
}
