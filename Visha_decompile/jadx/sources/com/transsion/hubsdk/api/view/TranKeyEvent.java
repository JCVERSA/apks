package com.transsion.hubsdk.api.view;

import android.view.KeyEvent;
import com.transsion.hubsdk.aosp.view.TranAospTranKeyEvent;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubTranKeyEvent;
import com.transsion.hubsdk.interfaces.view.ITranKeyEventAdapter;

public class TranKeyEvent {
    private static final String TAG = "TranKeyEvent";
    private TranAospTranKeyEvent mAospService;
    private TranThubTranKeyEvent mThubService;

    public ITranKeyEventAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubTranKeyEvent");
            TranThubTranKeyEvent tranThubTranKeyEvent = this.mThubService;
            if (tranThubTranKeyEvent != null) {
                return tranThubTranKeyEvent;
            }
            TranThubTranKeyEvent tranThubTranKeyEvent2 = new TranThubTranKeyEvent();
            this.mThubService = tranThubTranKeyEvent2;
            return tranThubTranKeyEvent2;
        }
        TranSdkLog.i(TAG, "TranAospTranKeyEvent");
        TranAospTranKeyEvent tranAospTranKeyEvent = this.mAospService;
        if (tranAospTranKeyEvent != null) {
            return tranAospTranKeyEvent;
        }
        TranAospTranKeyEvent tranAospTranKeyEvent2 = new TranAospTranKeyEvent();
        this.mAospService = tranAospTranKeyEvent2;
        return tranAospTranKeyEvent2;
    }

    public KeyEvent obtain(long j, long j2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str) {
        return getService(TranVersion.Core.VERSION_33181).obtain(j, j2, i, i2, i3, i4, i5, i6, i7, i8, i9, str);
    }
}
