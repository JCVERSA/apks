package com.transsion.hubsdk.api.service.dream;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.transsion.hubsdk.aosp.dream.TranAospDreamServiceWrapperExt;
import com.transsion.hubsdk.aosp.service.dream.TranAospDreamService;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.service.dream.TranThubDreamService;
import com.transsion.hubsdk.interfaces.service.dream.ITranDreamServiceAdapter;
import java.util.Objects;

public class TranDreamService {
    private static final String TAG = "TranDreamService";
    private TranAospDreamService mAospService;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private TranThubDreamService mThubService;

    public class AnonymousClass1 implements TranAospDreamServiceWrapperExt.ITranDreamService {
        final ITranDreamService val$iTranDreamService;

        public AnonymousClass1(ITranDreamService iTranDreamService) {
            this.val$iTranDreamService = iTranDreamService;
        }

        public static void lambda$attach$0(ITranDreamService iTranDreamService, IBinder iBinder, boolean z, final TranAospDreamServiceWrapperExt.ITranRemoteCallback iTranRemoteCallback) {
            Objects.requireNonNull(iTranRemoteCallback);
            iTranDreamService.attach(iBinder, z, new ITranRemoteCallback() {
                @Override
                public final void sendResult(Bundle bundle) {
                    iTranRemoteCallback.sendResult(bundle);
                }
            });
        }

        @Override
        public void attach(final IBinder iBinder, final boolean z, final TranAospDreamServiceWrapperExt.ITranRemoteCallback iTranRemoteCallback) {
            if (this.val$iTranDreamService != null) {
                Handler handler = TranDreamService.this.mHandler;
                final ITranDreamService iTranDreamService = this.val$iTranDreamService;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        TranDreamService.AnonymousClass1.lambda$attach$0(iTranDreamService, iBinder, z, iTranRemoteCallback);
                    }
                });
            }
        }

        @Override
        public void detach() {
            if (this.val$iTranDreamService != null) {
                Handler handler = TranDreamService.this.mHandler;
                final ITranDreamService iTranDreamService = this.val$iTranDreamService;
                Objects.requireNonNull(iTranDreamService);
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        iTranDreamService.detach();
                    }
                });
            }
        }

        @Override
        public void notifyAodAction(final int i) {
            if (this.val$iTranDreamService != null) {
                Handler handler = TranDreamService.this.mHandler;
                final ITranDreamService iTranDreamService = this.val$iTranDreamService;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        iTranDreamService.notifyAodAction(i);
                    }
                });
            }
        }

        @Override
        public void wakeUp() {
            if (this.val$iTranDreamService != null) {
                Handler handler = TranDreamService.this.mHandler;
                final ITranDreamService iTranDreamService = this.val$iTranDreamService;
                Objects.requireNonNull(iTranDreamService);
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        iTranDreamService.wakeUp();
                    }
                });
            }
        }
    }

    public interface ITranDreamService {
        void attach(IBinder iBinder, boolean z, ITranRemoteCallback iTranRemoteCallback);

        void detach();

        void notifyAodAction(int i);

        void wakeUp();
    }

    public interface ITranRemoteCallback {
        void sendResult(Bundle bundle);
    }

    @TranLevel(level = 1)
    public void finishSelf(IBinder iBinder, boolean z) {
        getService(TranVersion.Core.VERSION_33181).finishSelf(iBinder, z);
    }

    public ITranDreamServiceAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubDreamService");
            TranThubDreamService tranThubDreamService = this.mThubService;
            if (tranThubDreamService != null) {
                return tranThubDreamService;
            }
            TranThubDreamService tranThubDreamService2 = new TranThubDreamService();
            this.mThubService = tranThubDreamService2;
            return tranThubDreamService2;
        }
        TranSdkLog.i(TAG, "TranAospDreamService");
        TranAospDreamService tranAospDreamService = this.mAospService;
        if (tranAospDreamService != null) {
            return tranAospDreamService;
        }
        TranAospDreamService tranAospDreamService2 = new TranAospDreamService();
        this.mAospService = tranAospDreamService2;
        return tranAospDreamService2;
    }

    public IBinder getTranDreamServiceWrapper(ITranDreamService iTranDreamService) {
        return getService(TranVersion.Core.VERSION_33181).getTranDreamServiceWrapper(new AnonymousClass1(iTranDreamService));
    }

    public void startDozing(IBinder iBinder, int i, int i2) {
        getService(TranVersion.Core.VERSION_33181).startDozing(iBinder, i, i2);
    }

    public void stopDozing(IBinder iBinder) {
        getService(TranVersion.Core.VERSION_33181).stopDozing(iBinder);
    }
}
