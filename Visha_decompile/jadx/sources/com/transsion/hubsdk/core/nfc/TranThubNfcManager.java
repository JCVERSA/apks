package com.transsion.hubsdk.core.nfc;

import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.nfc.ITranNfcManagerAdapter;
import com.transsion.hubsdk.nfc.ITranNfcManager;

public class TranThubNfcManager implements ITranNfcManagerAdapter {
    private static final String TAG = "TranThubNfcManager";
    private ITranNfcManager mService = ITranNfcManager.Stub.asInterface(TranServiceManager.getServiceIBinder("nfc"));

    public Object lambda$disable$1() throws RemoteException {
        ITranNfcManager iTranNfcManager = this.mService;
        return iTranNfcManager != null ? Boolean.valueOf(iTranNfcManager.disable()) : Boolean.FALSE;
    }

    public Object lambda$enable$0() throws RemoteException {
        ITranNfcManager iTranNfcManager = this.mService;
        return iTranNfcManager != null ? Boolean.valueOf(iTranNfcManager.enable()) : Boolean.FALSE;
    }

    @Override
    public boolean disable() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$disable$1();
            }
        }, "nfc")).booleanValue();
        TranSdkLog.d(TAG, "disable result:" + zBooleanValue);
        return zBooleanValue;
    }

    @Override
    public boolean enable() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$enable$0();
            }
        }, "nfc")).booleanValue();
        TranSdkLog.d(TAG, "enable result:" + zBooleanValue);
        return zBooleanValue;
    }

    @VisibleForTesting
    public void setService(ITranNfcManager iTranNfcManager) {
        this.mService = iTranNfcManager;
    }
}
