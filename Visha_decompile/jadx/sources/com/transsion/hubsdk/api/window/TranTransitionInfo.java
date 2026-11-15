package com.transsion.hubsdk.api.window;

import android.os.Parcel;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import com.transsion.hubsdk.common.util.TranSdkLog;

public class TranTransitionInfo {
    private static final String TAG = "TranTransitionInfo";
    private com.transsion.hubsdk.window.TranTransitionInfo mTranTransitionInfo;

    public SurfaceControl getChangeLeash(TransitionInfo.Change change) {
        if (change == null) {
            throw new IllegalArgumentException("name or parent should not be null");
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            change.writeToParcel(parcelObtain, 0);
            parcelObtain.setDataPosition(0);
            return getInstance().getChangeLeash(parcelObtain);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getChangeLeash error", e);
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    public com.transsion.hubsdk.window.TranTransitionInfo getInstance() {
        if (this.mTranTransitionInfo == null) {
            this.mTranTransitionInfo = new com.transsion.hubsdk.window.TranTransitionInfo();
        }
        return this.mTranTransitionInfo;
    }
}
