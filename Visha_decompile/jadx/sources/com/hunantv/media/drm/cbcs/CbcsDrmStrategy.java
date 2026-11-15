package com.hunantv.media.drm.cbcs;

import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.pragma.DebugLog;
import org.apache.commons.lang3.time.DateUtils;

public class CbcsDrmStrategy {
    public static final int MAX_ERROR_COUNTER = 3;
    public static final int RESUME_INTERVAL = 3600000;
    public static final String TAG = "CbcsDrmStrategy";
    public static int sErrorCounter = 0;
    public static boolean sErrorZone = false;
    public static long sErrorZoneTimestamp;
    public static Object sLocker = new Object();

    public static boolean isCbcsSupported() {
        synchronized (sLocker) {
            try {
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
                return ImgoLibLoader.getInstance().isPlayerLibLoaded();
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
