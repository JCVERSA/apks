package com.transsion.hubsdk.api.nfc;

import com.transsion.hubsdk.aosp.nfc.TranAospNfcManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.nfc.TranThubNfcManager;
import com.transsion.hubsdk.interfaces.nfc.ITranNfcManagerAdapter;

public class TranNfcManager {
    private static final String TAG = "TranNfcManager";
    private TranAospNfcManager mAospService;
    private TranThubNfcManager mThubService;

    public boolean disable() {
        return getService(TranVersion.Core.VERSION_33181).disable();
    }

    public boolean enable() {
        return getService(TranVersion.Core.VERSION_33181).enable();
    }

    public ITranNfcManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubNfcManager");
            TranThubNfcManager tranThubNfcManager = this.mThubService;
            if (tranThubNfcManager != null) {
                return tranThubNfcManager;
            }
            TranThubNfcManager tranThubNfcManager2 = new TranThubNfcManager();
            this.mThubService = tranThubNfcManager2;
            return tranThubNfcManager2;
        }
        TranSdkLog.i(TAG, "TranAospNfcManager");
        TranAospNfcManager tranAospNfcManager = this.mAospService;
        if (tranAospNfcManager != null) {
            return tranAospNfcManager;
        }
        TranAospNfcManager tranAospNfcManager2 = new TranAospNfcManager();
        this.mAospService = tranAospNfcManager2;
        return tranAospNfcManager2;
    }
}
