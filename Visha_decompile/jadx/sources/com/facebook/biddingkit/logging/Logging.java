package com.facebook.biddingkit.logging;

import android.annotation.SuppressLint;
import android.content.Context;

public class Logging {
    private static final String TAG = "Logging";
    private static boolean sDebugBuild = false;

    @SuppressLint({"CatchGeneralException"})
    public static void initialize(Context context, String str, String str2, String str3) {
        try {
            BiddingStaticEnvironmentData.initialize(context, str, str2);
            EventLogDispatcher.startDispatcher(new LoggingConfig(str3));
            EventLogDatabaseAdapter.initialize(context);
            CrashReportHandler.initialize();
        } catch (Exception e) {
            BkLog.e(TAG, "Failed to initialize", e);
        }
    }

    public static synchronized boolean isDebugBuild() {
        return sDebugBuild;
    }

    public static synchronized void setDebugBuild(boolean z) {
        sDebugBuild = z;
    }
}
