package com.transsion.hubsdk.api.hardware.tp;

import com.transsion.hubsdk.aosp.hardware.tp.TranAospTpManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.hardware.tp.TranThubTpManager;
import com.transsion.hubsdk.interfaces.hardware.tp.ITranTpManagerAdapter;

public class TranTpManager {
    private static final String TAG = "TranTpManager";
    private TranAospTpManager mAospService;
    private TranThubTpManager mThubService;

    public interface TranTpCallback {
        void onEvent(int i, String str);
    }

    public ITranTpManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubTpManager");
            TranThubTpManager tranThubTpManager = this.mThubService;
            if (tranThubTpManager != null) {
                return tranThubTpManager;
            }
            TranThubTpManager tranThubTpManager2 = new TranThubTpManager();
            this.mThubService = tranThubTpManager2;
            return tranThubTpManager2;
        }
        TranSdkLog.i(TAG, "TranAospTpManager");
        TranAospTpManager tranAospTpManager = this.mAospService;
        if (tranAospTpManager != null) {
            return tranAospTpManager;
        }
        TranAospTpManager tranAospTpManager2 = new TranAospTpManager();
        this.mAospService = tranAospTpManager2;
        return tranAospTpManager2;
    }

    public String getValue(int i) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isRecentAndroidT()) {
            return null;
        }
        if (i >= 0) {
            return getService(TranVersion.Core.VERSION_33351).getValue(i);
        }
        throw new IllegalArgumentException("type should be greater than 0");
    }

    public boolean setValue(int i, String str) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isRecentAndroidT()) {
            return false;
        }
        if (i < 0 || str == null) {
            throw new IllegalArgumentException("type should be greater than 0 and data should not be null");
        }
        return getService(TranVersion.Core.VERSION_33351).setValue(i, str);
    }
}
