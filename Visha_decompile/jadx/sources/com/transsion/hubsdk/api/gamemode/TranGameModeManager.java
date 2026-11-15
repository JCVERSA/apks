package com.transsion.hubsdk.api.gamemode;

import android.content.Context;
import android.os.Binder;
import com.transsion.hubsdk.aosp.gamemode.TranAospGameModeManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.gamemode.TranThubGameModeManager;
import com.transsion.hubsdk.interfaces.gamemode.ITranGameModeManagerAdapter;

public class TranGameModeManager {
    public static final int GESTURE_TYPE_OS_GESTURE = 2;
    public static final int GESTURE_TYPE_SYSTEM = 1;
    public static final int GESTURE_TYPE_SYSTEM_SHOW_NAV_BAR = 8;
    public static final int GESTURE_TYPE_SYSTEM_SHOW_STATUS_BAR = 4;
    private static final String TAG = "TranGameModeManager";
    private TranAospGameModeManager mAospService;
    private final Context mContext;
    private TranThubGameModeManager mThubService;

    public TranGameModeManager(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        this.mContext = context.getApplicationContext();
    }

    public Binder acquireGestureBlocker(int i) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).acquireGestureBlocker(i);
        }
        return null;
    }

    public ITranGameModeManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubGameModeManager tranThubGameModeManager = this.mThubService;
            if (tranThubGameModeManager != null) {
                return tranThubGameModeManager;
            }
            TranThubGameModeManager tranThubGameModeManager2 = new TranThubGameModeManager(this.mContext);
            this.mThubService = tranThubGameModeManager2;
            return tranThubGameModeManager2;
        }
        TranSdkLog.i(TAG, "TranAospGameModeManager");
        TranAospGameModeManager tranAospGameModeManager = this.mAospService;
        if (tranAospGameModeManager != null) {
            return tranAospGameModeManager;
        }
        TranAospGameModeManager tranAospGameModeManager2 = new TranAospGameModeManager(this.mContext);
        this.mAospService = tranAospGameModeManager2;
        return tranAospGameModeManager2;
    }

    public boolean isGameModeEnable() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).isGameModeEnable();
        }
        return false;
    }

    public boolean isOperationRejected(int i) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).isOperationRejected(i);
        }
        return false;
    }

    public void releaseGestureBlocker(Binder binder) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33511).releaseGestureBlocker(binder);
        }
    }
}
