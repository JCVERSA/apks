package com.transsion.hubsdk.api.os;

import android.os.Bundle;
import com.transsion.hubsdk.aosp.os.TranAospVibratorManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.os.TranThubVibratorManager;
import com.transsion.hubsdk.interfaces.os.ITranVibratorManagerAdapter;

public class TranVibratorManager {
    private static final String TAG = "TranVibratorManager";
    public static final int TYPE_FLICK_LIGHT = 3;
    public static final int TYPE_FLICK_NORMAL = 2;
    public static final int TYPE_HOLD = 11;
    public static final int TYPE_LONG_PRESS = 9;
    public static final int TYPE_MESH_HEAVY = 5;
    public static final int TYPE_MESH_LIGHT = 8;
    public static final int TYPE_MESH_NORMAL = 7;
    public static final int TYPE_PICK_UP = 10;
    public static final int TYPE_POPUP_LIGHT = 13;
    public static final int TYPE_POPUP_NORMAL = 12;
    public static final int TYPE_SCROLL_EDGE = 6;
    public static final int TYPE_SWITCH = 4;
    public static final int TYPE_TAP_LIGHT = 1;
    public static final int TYPE_TAP_NORMAL = 0;
    private TranAospVibratorManager mAospService;
    private TranThubVibratorManager mThubService;

    public interface IMediaCallback {
        int getCurrentPosition();
    }

    public ITranVibratorManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubVibratorManager tranThubVibratorManager = this.mThubService;
            if (tranThubVibratorManager != null) {
                return tranThubVibratorManager;
            }
            TranThubVibratorManager tranThubVibratorManager2 = new TranThubVibratorManager();
            this.mThubService = tranThubVibratorManager2;
            return tranThubVibratorManager2;
        }
        TranSdkLog.i(TAG, "TranAospVibratorManager");
        TranAospVibratorManager tranAospVibratorManager = this.mAospService;
        if (tranAospVibratorManager != null) {
            return tranAospVibratorManager;
        }
        TranAospVibratorManager tranAospVibratorManager2 = new TranAospVibratorManager();
        this.mAospService = tranAospVibratorManager2;
        return tranAospVibratorManager2;
    }

    public void stop() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).stop();
        }
    }

    public void vibrate(int i) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
                throw new IllegalArgumentException("type could not out of range!");
            }
            getService(TranVersion.Core.VERSION_33341).vibrate(i);
        }
    }

    public void vibrate(String str, IMediaCallback iMediaCallback) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            if (str != null) {
                getService(TranVersion.Core.VERSION_33341).vibrate(str, iMediaCallback);
                return;
            }
            throw new IllegalArgumentException("param file could not be null!");
        }
    }

    public void vibrate(String str) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).vibrate(str);
        }
    }

    public void vibrate(String str, IMediaCallback iMediaCallback, Bundle bundle) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            if (str != null) {
                getService(TranVersion.Core.VERSION_33361).vibrate(str, iMediaCallback, bundle);
                return;
            }
            throw new IllegalArgumentException("param file could not be null!");
        }
    }

    public void vibrate(String str, Bundle bundle) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33361).vibrate(str, bundle);
        }
    }
}
