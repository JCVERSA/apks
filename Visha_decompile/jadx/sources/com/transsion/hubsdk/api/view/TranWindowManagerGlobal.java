package com.transsion.hubsdk.api.view;

import android.os.IBinder;
import com.transsion.hubsdk.aosp.view.TranAospWindowManagerGlobal;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubWindowManagerGlobal;
import com.transsion.hubsdk.interfaces.view.ITranWindowManagerGlobalAdapter;

public class TranWindowManagerGlobal {
    private static final String TAG = "TranWindowManagerGlobal";
    private TranAospWindowManagerGlobal mAospService;
    private TranThubWindowManagerGlobal mThubService;

    @TranLevel(level = 1)
    public void closeAll(IBinder iBinder, String str, String str2) {
        getService(TranVersion.Core.VERSION_33181).closeAll(iBinder, str, str2);
    }

    public ITranWindowManagerGlobalAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubToastPresenter");
            TranThubWindowManagerGlobal tranThubWindowManagerGlobal = this.mThubService;
            if (tranThubWindowManagerGlobal != null) {
                return tranThubWindowManagerGlobal;
            }
            TranThubWindowManagerGlobal tranThubWindowManagerGlobal2 = new TranThubWindowManagerGlobal();
            this.mThubService = tranThubWindowManagerGlobal2;
            return tranThubWindowManagerGlobal2;
        }
        TranSdkLog.i(TAG, "TranAospToastPresenter");
        TranAospWindowManagerGlobal tranAospWindowManagerGlobal = this.mAospService;
        if (tranAospWindowManagerGlobal != null) {
            return tranAospWindowManagerGlobal;
        }
        TranAospWindowManagerGlobal tranAospWindowManagerGlobal2 = new TranAospWindowManagerGlobal();
        this.mAospService = tranAospWindowManagerGlobal2;
        return tranAospWindowManagerGlobal2;
    }
}
