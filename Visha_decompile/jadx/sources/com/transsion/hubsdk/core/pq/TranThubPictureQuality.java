package com.transsion.hubsdk.core.pq;

import android.os.RemoteException;
import com.transsion.hubsdk.TranContext;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.pq.ITranPictureQualityAdapter;
import com.transsion.hubsdk.pq.ITranPictureQuality;

public class TranThubPictureQuality implements ITranPictureQualityAdapter {
    private static final String TAG = "TranThubPictureQuality";
    private ITranPictureQuality mService = ITranPictureQuality.Stub.asInterface(TranServiceManager.getServiceIBinder("picture_quality"));
    private TranContext mTranContext;

    public Object lambda$enableC3D$3(boolean z) throws RemoteException {
        ITranPictureQuality iTranPictureQuality = this.mService;
        if (iTranPictureQuality == null) {
            return null;
        }
        iTranPictureQuality.enableC3D(z);
        return null;
    }

    public Object lambda$getAALFunction$1() throws RemoteException {
        ITranPictureQuality iTranPictureQuality = this.mService;
        if (iTranPictureQuality != null) {
            return Integer.valueOf(iTranPictureQuality.getAALFunction());
        }
        return -1;
    }

    public Object lambda$setAALFunction$2(int i) throws RemoteException {
        ITranPictureQuality iTranPictureQuality = this.mService;
        if (iTranPictureQuality == null) {
            return null;
        }
        iTranPictureQuality.setAALFunction(i);
        return null;
    }

    public Object lambda$setSmartBacklightStrength$0(int i) throws RemoteException {
        ITranPictureQuality iTranPictureQuality = this.mService;
        if (iTranPictureQuality == null) {
            return null;
        }
        iTranPictureQuality.setSmartBacklightStrength(i);
        return null;
    }

    @Override
    public void enableC3D(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$enableC3D$3(z);
            }
        }, "picture_quality");
    }

    @Override
    public int getAALFunction() {
        return ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getAALFunction$1();
            }
        }, "picture_quality")).intValue();
    }

    @Override
    public int getGammaIndex() {
        ITranPictureQuality iTranPictureQuality = this.mService;
        if (iTranPictureQuality == null) {
            return 0;
        }
        try {
            return iTranPictureQuality.getGammaIndex();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getGammaIndex fail:" + e);
            return 0;
        }
    }

    @Override
    public int getPictureMode() {
        ITranPictureQuality iTranPictureQuality = this.mService;
        if (iTranPictureQuality == null) {
            return 0;
        }
        try {
            return iTranPictureQuality.getPictureMode();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getPictureMode fail:" + e);
            return 0;
        }
    }

    @Override
    public void setAALFunction(final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setAALFunction$2(i);
            }
        }, "picture_quality");
    }

    @Override
    public void setGammaIndex(int i) {
        ITranPictureQuality iTranPictureQuality = this.mService;
        if (iTranPictureQuality != null) {
            try {
                iTranPictureQuality.setGammaIndex(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setGammaIndex fail:" + e);
            }
        }
    }

    @Override
    public void setPictureMode(int i) {
        ITranPictureQuality iTranPictureQuality = this.mService;
        if (iTranPictureQuality != null) {
            try {
                iTranPictureQuality.setPictureMode(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setPictureMode fail:" + e);
            }
        }
    }

    @Override
    public void setSmartBacklightStrength(final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setSmartBacklightStrength$0(i);
            }
        }, "picture_quality");
    }
}
