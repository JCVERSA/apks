package com.transsion.hubsdk.core.view;

import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.view.TranBrightnessInfo;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranBrightnessInfoAdapter;
import com.transsion.hubsdk.view.ITranDisplay;

public class TranThubBrightnessInfoService implements ITranBrightnessInfoAdapter {
    private static final String TAG = "TranThubBrightnessInfoService";
    private ITranDisplay mService = ITranDisplay.Stub.asInterface(TranServiceManager.getServiceIBinder("tran_display"));

    public Object lambda$getBrightnessInfo$0() throws RemoteException {
        ITranDisplay iTranDisplay = this.mService;
        if (iTranDisplay != null) {
            return iTranDisplay.getBrightnessInfo();
        }
        return null;
    }

    @Override
    public TranBrightnessInfo getBrightnessInfo() {
        com.transsion.hubsdk.view.TranBrightnessInfo tranBrightnessInfo = (com.transsion.hubsdk.view.TranBrightnessInfo) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getBrightnessInfo$0();
            }
        }, "tran_display");
        TranSdkLog.i(TAG, "getBrightnessInfo mTranBrightnessInfo:" + tranBrightnessInfo);
        if (tranBrightnessInfo == null) {
            return null;
        }
        TranBrightnessInfo tranBrightnessInfo2 = new TranBrightnessInfo();
        tranBrightnessInfo2.mBrightness = tranBrightnessInfo.brightness;
        tranBrightnessInfo2.mAdjustedBrightness = tranBrightnessInfo.adjustedBrightness;
        tranBrightnessInfo2.mBrightnessMinimum = tranBrightnessInfo.brightnessMinimum;
        tranBrightnessInfo2.mBrightnessMaximum = tranBrightnessInfo.brightnessMaximum;
        tranBrightnessInfo2.mHighBrightnessTransitionPoint = tranBrightnessInfo.highBrightnessTransitionPoint;
        tranBrightnessInfo2.mHighBrightnessMode = tranBrightnessInfo.highBrightnessMode;
        tranBrightnessInfo2.mBrightnessMaxReason = tranBrightnessInfo.brightnessMaxReason;
        return tranBrightnessInfo2;
    }

    @VisibleForTesting
    public void setService(ITranDisplay iTranDisplay) {
        this.mService = iTranDisplay;
    }
}
