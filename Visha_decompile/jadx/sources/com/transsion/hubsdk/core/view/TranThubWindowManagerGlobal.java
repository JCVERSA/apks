package com.transsion.hubsdk.core.view;

import android.os.IBinder;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranWindowManagerGlobalAdapter;
import com.transsion.hubsdk.view.TranWindowManagerGlobal;

public class TranThubWindowManagerGlobal implements ITranWindowManagerGlobalAdapter {
    private static final String TAG = "TranThubWindowManagerGlobal";
    private TranWindowManagerGlobal mService = new TranWindowManagerGlobal();

    @Override
    public void closeAll(IBinder iBinder, String str, String str2) {
        TranWindowManagerGlobal tranWindowManagerGlobal = this.mService;
        if (tranWindowManagerGlobal != null) {
            try {
                tranWindowManagerGlobal.closeAll(iBinder, str, str2);
            } catch (RuntimeException e) {
                TranSdkLog.e(TAG, "captureDisplayAsBitmap: e = " + e);
            }
        }
    }

    @VisibleForTesting
    public void setService(TranWindowManagerGlobal tranWindowManagerGlobal) {
        this.mService = tranWindowManagerGlobal;
    }
}
