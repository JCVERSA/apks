package com.transsion.hubsdk.api.hardware.display;

import android.view.Display;
import com.transsion.hubsdk.aosp.hardware.display.TranAospDisplayManagerGlobalAdapter;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.hardware.display.TranThubDisplayManagerGlobalAdapter;
import com.transsion.hubsdk.interfaces.hardware.display.ITranDisplayManagerGlobalAdapter;

public class TranDisplayManagerGlobal {
    private static final String TAG = "TranDisplayManagerGlobal";
    private TranAospDisplayManagerGlobalAdapter mAospService;
    private TranThubDisplayManagerGlobalAdapter mThubService;

    public Display getRealDisplay(int i) {
        return getService(TranVersion.Core.VERSION_33311).getRealDisplay(i);
    }

    public ITranDisplayManagerGlobalAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubDisplayManagerGlobalAdapter");
            TranThubDisplayManagerGlobalAdapter tranThubDisplayManagerGlobalAdapter = this.mThubService;
            if (tranThubDisplayManagerGlobalAdapter != null) {
                return tranThubDisplayManagerGlobalAdapter;
            }
            TranThubDisplayManagerGlobalAdapter tranThubDisplayManagerGlobalAdapter2 = new TranThubDisplayManagerGlobalAdapter();
            this.mThubService = tranThubDisplayManagerGlobalAdapter2;
            return tranThubDisplayManagerGlobalAdapter2;
        }
        TranSdkLog.i(TAG, "TranAospDisplayManagerGlobalAdapter");
        TranAospDisplayManagerGlobalAdapter tranAospDisplayManagerGlobalAdapter = this.mAospService;
        if (tranAospDisplayManagerGlobalAdapter != null) {
            return tranAospDisplayManagerGlobalAdapter;
        }
        TranAospDisplayManagerGlobalAdapter tranAospDisplayManagerGlobalAdapter2 = new TranAospDisplayManagerGlobalAdapter();
        this.mAospService = tranAospDisplayManagerGlobalAdapter2;
        return tranAospDisplayManagerGlobalAdapter2;
    }
}
