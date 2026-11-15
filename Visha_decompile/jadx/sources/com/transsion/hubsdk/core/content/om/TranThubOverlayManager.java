package com.transsion.hubsdk.core.content.om;

import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.content.om.ITranOverlayManager;
import com.transsion.hubsdk.interfaces.content.om.ITranOverlayManagerAdapter;

public class TranThubOverlayManager implements ITranOverlayManagerAdapter {
    private static final String TAG = "TranThubOverlayManager";
    private ITranOverlayManager mService = ITranOverlayManager.Stub.asInterface(TranServiceManager.getServiceIBinder("overlay"));

    public Object lambda$setEnabled$1(String str, boolean z, int i) throws RemoteException {
        ITranOverlayManager iTranOverlayManager = this.mService;
        if (iTranOverlayManager == null) {
            return null;
        }
        iTranOverlayManager.setEnabled(str, z, i);
        return null;
    }

    public Object lambda$setEnabledExclusiveInCategory$0(String str, int i) throws RemoteException {
        ITranOverlayManager iTranOverlayManager = this.mService;
        if (iTranOverlayManager == null) {
            return null;
        }
        iTranOverlayManager.setEnabledExclusiveInCategory(str, i);
        return null;
    }

    @Override
    public void setEnabled(final String str, final boolean z, final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setEnabled$1(str, z, i);
            }
        }, "overlay");
        TranSdkLog.i(TAG, "setEnabled packageName:" + str + ", enable:" + z);
    }

    @Override
    public void setEnabledExclusiveInCategory(final String str, final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setEnabledExclusiveInCategory$0(str, i);
            }
        }, "overlay");
        TranSdkLog.i(TAG, "setEnabledExclusiveInCategory packageName:" + str);
    }

    @VisibleForTesting
    public void setService(ITranOverlayManager iTranOverlayManager) {
        this.mService = iTranOverlayManager;
    }
}
