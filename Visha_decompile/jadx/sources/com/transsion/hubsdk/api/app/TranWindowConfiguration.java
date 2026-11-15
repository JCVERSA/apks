package com.transsion.hubsdk.api.app;

import android.content.res.Configuration;
import android.graphics.Rect;
import com.transsion.hubsdk.aosp.app.TranAospWindowConfiguration;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubWindowConfiguration;
import com.transsion.hubsdk.interfaces.app.ITranWindowConfigurationAdapter;

public class TranWindowConfiguration {
    public static final int ACTIVITY_TYPE_HOME = 2;
    public static final int ACTIVITY_TYPE_RECENTS = 3;
    public static final int ACTIVITY_TYPE_STANDARD = 1;
    public static final int MULTI_WINDOW_BIG = 16;
    public static final int MULTI_WINDOW_INLARGESCREEN = 8192;
    public static final int MULTI_WINDOW_INTERACTIVE = 8;
    public static final int MULTI_WINDOW_MODE_LIGHTING = 2;
    public static final int MULTI_WINDOW_NOTINLARGESCREEN = 1;
    public static final int MULTI_WINDOW_SMALL = 32;
    private static final String TAG = "TranWindowConfiguration";
    public static final int TRIGGER_MODE_FOUR_FINGER = 9;
    public static final int TRIGGER_MODE_FULLSCREEN_MULTITASK_BTN = 13;
    public static final int TRIGGER_MODE_SMARTPANEL = 2;
    public static final int TRIGGER_MODE_SPLITSCREEN_DRAG = 11;
    public static final int TRIGGER_MODE_SPLITSCREEN_MULTITASK_BTN = 12;
    public static final int WINDOWING_MODE_FULLSCREEN = 1;
    public static final int WINDOWING_MODE_MULTI_WINDOW = 6;
    public static final int WINDOWING_MODE_UNDEFINED = 0;
    private TranAospWindowConfiguration mAospService;
    private TranThubWindowConfiguration mThubService;

    public Rect getBounds(Configuration configuration) {
        return getService(TranVersion.Core.VERSION_33131).getBounds(configuration);
    }

    public int getMultiWindowingId(Configuration configuration) {
        if (configuration != null) {
            return getService(TranVersion.Core.VERSION_33461).getMultiWindowingId(configuration);
        }
        throw new IllegalArgumentException("configuration cannot null");
    }

    public int getMultiWindowingMode(Configuration configuration) {
        if (configuration != null) {
            return getService(TranVersion.Core.VERSION_33461).getMultiWindowingMode(configuration);
        }
        throw new IllegalArgumentException("configuration cannot null");
    }

    public ITranWindowConfigurationAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubWindowConfiguration");
            TranThubWindowConfiguration tranThubWindowConfiguration = this.mThubService;
            if (tranThubWindowConfiguration != null) {
                return tranThubWindowConfiguration;
            }
            TranThubWindowConfiguration tranThubWindowConfiguration2 = new TranThubWindowConfiguration();
            this.mThubService = tranThubWindowConfiguration2;
            return tranThubWindowConfiguration2;
        }
        TranSdkLog.i(TAG, "TranAospWindowConfiguration");
        TranAospWindowConfiguration tranAospWindowConfiguration = this.mAospService;
        if (tranAospWindowConfiguration != null) {
            return tranAospWindowConfiguration;
        }
        TranAospWindowConfiguration tranAospWindowConfiguration2 = new TranAospWindowConfiguration();
        this.mAospService = tranAospWindowConfiguration2;
        return tranAospWindowConfiguration2;
    }

    public boolean inMultiWindowMode(int i) {
        return getService(TranVersion.Core.VERSION_33171).inMultiWindowMode(i);
    }

    public boolean isThunderbackWindow(Configuration configuration) {
        if (configuration != null) {
            return getService(TranVersion.Core.VERSION_33161).isThunderbackWindow(configuration);
        }
        throw new IllegalArgumentException("configuration cannot null");
    }
}
