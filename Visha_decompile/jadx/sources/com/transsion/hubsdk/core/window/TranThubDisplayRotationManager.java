package com.transsion.hubsdk.core.window;

import android.os.RemoteException;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.window.ITranDisplayRotationAdapter;
import com.transsion.hubsdk.window.ITranDisplayRotationManager;

public class TranThubDisplayRotationManager implements ITranDisplayRotationAdapter {
    private ITranDisplayRotationManager mDisplayRotationManager = ITranDisplayRotationManager.Stub.asInterface(TranServiceManager.getServiceIBinder("display_rotation"));

    public Object lambda$onNotifySaveRotation$0(int i) throws RemoteException {
        ITranDisplayRotationManager iTranDisplayRotationManager = this.mDisplayRotationManager;
        if (iTranDisplayRotationManager == null) {
            return null;
        }
        iTranDisplayRotationManager.onNotifySaveRotation(i);
        return null;
    }

    @Override
    public void onNotifySaveRotation(final int i) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
                @Override
                public final Object run() {
                    return this.a.lambda$onNotifySaveRotation$0(i);
                }
            }, "display_rotation");
        }
    }
}
