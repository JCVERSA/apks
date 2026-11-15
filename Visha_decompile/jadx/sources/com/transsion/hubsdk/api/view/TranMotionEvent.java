package com.transsion.hubsdk.api.view;

import android.view.InputEvent;
import android.view.MotionEvent;
import com.transsion.hubsdk.aosp.view.TranAospMotionEvent;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubMotionEvent;
import com.transsion.hubsdk.interfaces.view.ITranMotionEventAdapter;

public class TranMotionEvent {
    private static final int FLAG_TOUCH_FROM_CONNECT = 524288;
    private static final int FLAG_TOUCH_FROM_CONNECT_SHOWIM = 2097152;
    private static final int FLAG_TOUCH_FROM_PADEXTEND = 4194304;
    private static final String TAG = "TranMotionEvent";
    private TranAospMotionEvent mAospService;
    private TranThubMotionEvent mThubService;

    public ITranMotionEventAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubMotionEventManager");
            TranThubMotionEvent tranThubMotionEvent = this.mThubService;
            if (tranThubMotionEvent != null) {
                return tranThubMotionEvent;
            }
            TranThubMotionEvent tranThubMotionEvent2 = new TranThubMotionEvent();
            this.mThubService = tranThubMotionEvent2;
            return tranThubMotionEvent2;
        }
        TranSdkLog.i(TAG, "TranAospMotionEventManager");
        TranAospMotionEvent tranAospMotionEvent = this.mAospService;
        if (tranAospMotionEvent != null) {
            return tranAospMotionEvent;
        }
        TranAospMotionEvent tranAospMotionEvent2 = new TranAospMotionEvent();
        this.mAospService = tranAospMotionEvent2;
        return tranAospMotionEvent2;
    }

    public int getSourceConnectMotionFlag() {
        return 524288;
    }

    public int getSourceConnectMotionPadExtendFlag() {
        return 4194304;
    }

    public int getSourceConnectMotionShowIMFlag() {
        return 2097152;
    }

    public MotionEvent obtain(long j, long j2, int i, int i2, MotionEvent.PointerProperties[] pointerPropertiesArr, MotionEvent.PointerCoords[] pointerCoordsArr, int i3, int i4, float f, float f2, int i5, int i6, int i7, int i8, int i9) {
        return getService(TranVersion.Core.VERSION_33181).obtain(j, j2, i, i2, pointerPropertiesArr, pointerCoordsArr, i3, i4, f, f2, i5, i6, i7, i8, i9);
    }

    public void setTouchFromConnect(InputEvent inputEvent, boolean z) {
        getService(TranVersion.Core.VERSION_33181).setTouchFromConnect(inputEvent, z);
    }
}
