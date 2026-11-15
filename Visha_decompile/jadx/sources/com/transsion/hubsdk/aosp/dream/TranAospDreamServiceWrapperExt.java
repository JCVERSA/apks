package com.transsion.hubsdk.aosp.dream;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IRemoteCallback;
import android.os.Looper;
import android.os.RemoteException;
import android.service.dreams.IDreamService;
import com.transsion.hubsdk.aosp.dream.TranAospDreamServiceWrapperExt;
import com.transsion.hubsdk.common.util.TranSdkLog;

public class TranAospDreamServiceWrapperExt {
    private static final String TAG = "TranAospDreamServiceWrapperExt";

    public interface ITranDreamService {
        void attach(IBinder iBinder, boolean z, ITranRemoteCallback iTranRemoteCallback);

        void detach();

        void notifyAodAction(int i);

        void wakeUp();
    }

    public interface ITranRemoteCallback {
        void sendResult(Bundle bundle);
    }

    public static class TranDreamServiceWrapper extends IDreamService.Stub {
        private final Handler mHandler = new Handler(Looper.getMainLooper());
        private ITranDreamService mTranDreamService;

        public TranDreamServiceWrapper(ITranDreamService iTranDreamService) {
            this.mTranDreamService = iTranDreamService;
        }

        public static void lambda$attach$0(IRemoteCallback iRemoteCallback, Bundle bundle) {
            if (iRemoteCallback != null) {
                try {
                    TranSdkLog.d(TranAospDreamServiceWrapperExt.TAG, "sendResult started:" + iRemoteCallback);
                    iRemoteCallback.sendResult(bundle);
                } catch (Exception e) {
                    TranSdkLog.d(TranAospDreamServiceWrapperExt.TAG, "IRemoteCallback  sendResult fail" + e);
                }
            }
        }

        public void lambda$attach$1(IBinder iBinder, boolean z, final IRemoteCallback iRemoteCallback) {
            this.mTranDreamService.attach(iBinder, z, new ITranRemoteCallback() {
                @Override
                public final void sendResult(Bundle bundle) {
                    TranAospDreamServiceWrapperExt.TranDreamServiceWrapper.lambda$attach$0(iRemoteCallback, bundle);
                }
            });
        }

        public void lambda$detach$2() {
            this.mTranDreamService.detach();
        }

        public void lambda$wakeUp$3() {
            this.mTranDreamService.wakeUp();
        }

        public void attach(final IBinder iBinder, final boolean z, boolean z2, final IRemoteCallback iRemoteCallback) throws RemoteException {
            TranSdkLog.d(TranAospDreamServiceWrapperExt.TAG, "attach started:" + iRemoteCallback);
            if (this.mTranDreamService != null) {
                this.mHandler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$attach$1(iBinder, z, iRemoteCallback);
                    }
                });
            }
        }

        public void comeToFront() throws RemoteException {
        }

        public void detach() {
            TranSdkLog.d(TranAospDreamServiceWrapperExt.TAG, "detach");
            if (this.mTranDreamService != null) {
                this.mHandler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$detach$2();
                    }
                });
            }
        }

        public void wakeUp() {
            TranSdkLog.d(TranAospDreamServiceWrapperExt.TAG, "wakeUp");
            if (this.mTranDreamService != null) {
                this.mHandler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$wakeUp$3();
                    }
                });
            }
        }
    }

    public IBinder getTranDreamServiceWrapper(ITranDreamService iTranDreamService) {
        return new TranDreamServiceWrapper(iTranDreamService);
    }
}
