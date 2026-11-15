package com.facebook.biddingkit.logging;

import android.util.Log;

public class BkLog {
    public static void d(String str, String str2) {
        Log.d(str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        EventLog eventLog = new EventLog();
        eventLog.addException(str + ": " + str2 + EventLogUtils.throwableToString(th));
        eventLog.saveEvent();
        if (Logging.isDebugBuild()) {
            Log.e(str, str2, th);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (Logging.isDebugBuild()) {
            Log.d(str, str2, th);
        }
    }

    public static void e(String str, String str2) {
        EventLog eventLog = new EventLog();
        eventLog.addException(str + ": " + str2);
        eventLog.saveEvent();
        if (Logging.isDebugBuild()) {
            Log.e(str, str2);
        }
    }
}
