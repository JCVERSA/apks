package com.transsion.hubsdk.common.init;

import android.content.Context;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.verifykey.TranVerifyKeyManager;

public class TranHubSdkManager {
    private static final String TAG = "TranHubSdkManager";
    private static Context sContext;
    private static TranHubSdkManager sInstance;

    private TranHubSdkManager() {
    }

    public static Context getContext() {
        return sContext;
    }

    public static TranHubSdkManager getInstance() {
        if (sInstance == null) {
            sInstance = new TranHubSdkManager();
        }
        return sInstance;
    }

    public void init(Context context) {
        Context applicationContext = context.getApplicationContext();
        sContext = applicationContext;
        TranVerifyKeyManager.verify(applicationContext);
        TranSdkLog.setLogLevel(0);
    }
}
