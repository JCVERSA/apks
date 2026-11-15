package com.transsion.hubsdk.core.internal.app;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.internal.app.TranAssistUtilsManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.internal.app.ITranAssistUtilsAdapter;
import com.transsion.hubsdk.internal.app.ITranAssistUtils;
import com.transsion.hubsdk.internal.app.ITranVoiceInteractionSessionShowCallback;

public class TranThubAssistUtilsService implements ITranAssistUtilsAdapter {
    private static final String TAG = "TranThubAssistUtilsService";
    private ITranAssistUtils mService = ITranAssistUtils.Stub.asInterface(TranServiceManager.getServiceIBinder("assistutils"));

    public class TranThubVoiceInteractionSessionShowCallback extends ITranVoiceInteractionSessionShowCallback.Stub {
        public TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback mShowCallback;

        public TranThubVoiceInteractionSessionShowCallback(TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback) {
            this.mShowCallback = iTranVoiceInteractionSessionShowCallback;
        }

        public void onFailed() throws RemoteException {
            TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback = this.mShowCallback;
            if (iTranVoiceInteractionSessionShowCallback != null) {
                iTranVoiceInteractionSessionShowCallback.onFailed();
            }
        }

        public void onShown() throws RemoteException {
            TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback = this.mShowCallback;
            if (iTranVoiceInteractionSessionShowCallback != null) {
                iTranVoiceInteractionSessionShowCallback.onShown();
            }
        }
    }

    public Object lambda$showSessionForActiveServiceExt$0(Bundle bundle, int i, TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, IBinder iBinder) throws RemoteException {
        ITranAssistUtils iTranAssistUtils = this.mService;
        return iTranAssistUtils != null ? Boolean.valueOf(iTranAssistUtils.showSessionForActiveServiceExt(bundle, i, new TranThubVoiceInteractionSessionShowCallback(iTranVoiceInteractionSessionShowCallback), iBinder)) : Boolean.FALSE;
    }

    @VisibleForTesting
    public void setService(ITranAssistUtils iTranAssistUtils) {
        this.mService = iTranAssistUtils;
    }

    @Override
    public boolean showSessionForActiveService(Bundle bundle, int i, TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, IBinder iBinder) {
        return showSessionForActiveServiceExt(bundle, i, iTranVoiceInteractionSessionShowCallback, iBinder);
    }

    @Override
    public boolean showSessionForActiveServiceExt(final Bundle bundle, final int i, final TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, final IBinder iBinder) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$showSessionForActiveServiceExt$0(bundle, i, iTranVoiceInteractionSessionShowCallback, iBinder);
            }
        }, "assistutils")).booleanValue();
        TranSdkLog.i(TAG, "showSessionForActiveServiceExt result:" + zBooleanValue);
        return zBooleanValue;
    }
}
