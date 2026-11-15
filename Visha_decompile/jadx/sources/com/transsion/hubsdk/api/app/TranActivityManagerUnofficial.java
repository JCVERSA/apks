package com.transsion.hubsdk.api.app;

import android.os.IBinder;
import com.transsion.hubsdk.aosp.app.TranAospActivityManagerUnofficial;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubActivityManagerUnofficial;
import com.transsion.hubsdk.interfaces.app.ITranActivityManagerUnofficialAdapter;

public class TranActivityManagerUnofficial {
    private static final String TAG = TranActivityManager.class.getSimpleName();
    private TranAospActivityManagerUnofficial mAospService;
    private TranThubActivityManagerUnofficial mThubService;

    public interface TranForegroundServiceObserver {
        void onForegroundStateChanged(IBinder iBinder, String str, int i, boolean z);
    }

    public ITranActivityManagerUnofficialAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubActivityManager");
            TranThubActivityManagerUnofficial tranThubActivityManagerUnofficial = this.mThubService;
            if (tranThubActivityManagerUnofficial != null) {
                return tranThubActivityManagerUnofficial;
            }
            TranThubActivityManagerUnofficial tranThubActivityManagerUnofficial2 = new TranThubActivityManagerUnofficial();
            this.mThubService = tranThubActivityManagerUnofficial2;
            return tranThubActivityManagerUnofficial2;
        }
        TranSdkLog.i(TAG, "TranAospActivityManager");
        TranAospActivityManagerUnofficial tranAospActivityManagerUnofficial = this.mAospService;
        if (tranAospActivityManagerUnofficial != null) {
            return tranAospActivityManagerUnofficial;
        }
        TranAospActivityManagerUnofficial tranAospActivityManagerUnofficial2 = new TranAospActivityManagerUnofficial();
        this.mAospService = tranAospActivityManagerUnofficial2;
        return tranAospActivityManagerUnofficial2;
    }

    public boolean registerForegroundServiceObserver(TranForegroundServiceObserver tranForegroundServiceObserver) {
        if (tranForegroundServiceObserver != null) {
            return getService(TranVersion.Core.VERSION_33371).registerForegroundServiceObserver(tranForegroundServiceObserver);
        }
        throw new IllegalArgumentException("observer cannot be null");
    }
}
