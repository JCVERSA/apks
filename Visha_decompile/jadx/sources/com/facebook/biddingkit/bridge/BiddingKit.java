package com.facebook.biddingkit.bridge;

import android.content.Context;
import com.facebook.biddingkit.logging.Logging;
import com.facebook.biddingkit.utils.MultiAsyncTaskExecutor;
import com.facebook.biddingkit.utils.Utils;

public class BiddingKit {
    private static boolean initialized = false;
    private static volatile Context sAppContext;
    private static volatile String sConfiguration;

    public static Context getAppContext() {
        return sAppContext;
    }

    public static String getConfiguration() {
        return sConfiguration;
    }

    public static synchronized void init(Context context) {
        init(context, "");
    }

    public static synchronized boolean isDebugBuild() {
        return Logging.isDebugBuild();
    }

    public static synchronized void setDebugBuild(boolean z) {
        Logging.setDebugBuild(z);
    }

    public static synchronized void init(final Context context, final String str) {
        try {
            if (!initialized) {
                if (context != null) {
                    sAppContext = context.getApplicationContext();
                    initialized = true;
                    sConfiguration = str;
                    MultiAsyncTaskExecutor.GENERAL_EXECUTOR.execute(new Runnable() {
                        @Override
                        public void run() {
                            Context context2 = context;
                            Logging.initialize(context2, Utils.getIdfa(context2), BiddingKitSdkVersion.BUILD, str);
                        }
                    });
                } else {
                    throw new IllegalArgumentException("Missing Context");
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
