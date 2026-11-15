package com.transsion.hubsdk.core.service.dream;

import android.os.IBinder;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.aosp.dream.TranAospDreamServiceWrapperExt;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.dreams.ITranDreamManager;
import com.transsion.hubsdk.interfaces.service.dream.ITranDreamServiceAdapter;

public class TranThubDreamService implements ITranDreamServiceAdapter {
    private static final String TAG = "TranThubDreamService";
    private ITranDreamManager mService = ITranDreamManager.Stub.asInterface(TranServiceManager.getServiceIBinder("dream"));
    private TranAospDreamServiceWrapperExt mTranAospDreamServiceWrapperExt;

    private TranAospDreamServiceWrapperExt getTranAospDreamServiceWrapperExt() {
        if (this.mTranAospDreamServiceWrapperExt == null) {
            this.mTranAospDreamServiceWrapperExt = new TranAospDreamServiceWrapperExt();
        }
        return this.mTranAospDreamServiceWrapperExt;
    }

    @Override
    public void finishSelf(IBinder iBinder, boolean z) {
        ITranDreamManager iTranDreamManager = this.mService;
        if (iTranDreamManager != null) {
            try {
                iTranDreamManager.finishSelf(iBinder, z);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "finishSelf fail " + e);
            }
        }
    }

    @Override
    public IBinder getTranDreamServiceWrapper(TranAospDreamServiceWrapperExt.ITranDreamService iTranDreamService) {
        return getTranAospDreamServiceWrapperExt().getTranDreamServiceWrapper(iTranDreamService);
    }

    @VisibleForTesting
    public void setService(ITranDreamManager iTranDreamManager) {
        this.mService = iTranDreamManager;
    }

    @Override
    public void startDozing(IBinder iBinder, int i, int i2) {
        ITranDreamManager iTranDreamManager = this.mService;
        if (iTranDreamManager != null) {
            try {
                iTranDreamManager.startDozing(iBinder, i, i2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "startDozing fail " + e);
            }
        }
    }

    @Override
    public void stopDozing(IBinder iBinder) {
        ITranDreamManager iTranDreamManager = this.mService;
        if (iTranDreamManager != null) {
            try {
                iTranDreamManager.stopDozing(iBinder);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "stopDozing fail " + e);
            }
        }
    }
}
