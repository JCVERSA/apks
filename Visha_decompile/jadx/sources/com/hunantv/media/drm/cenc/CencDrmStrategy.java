package com.hunantv.media.drm.cenc;

import com.hunantv.media.drm.MgtvDrmConstans;
import com.hunantv.media.drm.utils.MgtvDrmUtils;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.report.c.h;
import org.apache.commons.lang3.time.DateUtils;

public class CencDrmStrategy {
    public static final int MAX_ERROR_COUNTER = 3;
    public static final int RESUME_INTERVAL = 3600000;
    public static final String TAG = "CencDrmStrategy";
    public static int sErrorCounter = 0;
    public static boolean sErrorZone = false;
    public static long sErrorZoneTimestamp;
    public static Object sLocker = new Object();

    public static boolean isCencSupported() {
        synchronized (sLocker) {
            try {
                boolean z = false;
                if (sErrorZone) {
                    if (sErrorZoneTimestamp > 0 && System.currentTimeMillis() - sErrorZoneTimestamp < DateUtils.MILLIS_PER_HOUR) {
                        DebugLog.i(TAG, "not support because in error zone");
                        return false;
                    }
                    DebugLog.i(TAG, "jump error zone cause beyond time");
                    sErrorCounter = 0;
                    sErrorZone = false;
                    sErrorZoneTimestamp = 0L;
                }
                if ("HUAWEI".equalsIgnoreCase(h.a()) && MgtvDrmUtils.isCryptoSchemeSupported(MgtvDrmConstans.CHINADRM_UUID)) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void notifyError() {
        synchronized (sLocker) {
            try {
                sErrorCounter++;
                DebugLog.i(TAG, "notifyError sErrorCounter:" + sErrorCounter);
                if (sErrorCounter >= 3) {
                    DebugLog.i(TAG, "goto Error Zone");
                    sErrorZone = true;
                    sErrorZoneTimestamp = System.currentTimeMillis();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void notifySuccess() {
        synchronized (sLocker) {
            DebugLog.i(TAG, "notifySuccess");
            sErrorCounter = 0;
            sErrorZone = false;
            sErrorZoneTimestamp = 0L;
        }
    }
}
