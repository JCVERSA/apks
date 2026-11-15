package com.transsion.hubsdk.api.app;

import android.app.Activity;
import com.transsion.hubsdk.aosp.app.TranAospActivity;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubActivity;
import com.transsion.hubsdk.interfaces.app.ITranActivityAdapter;

public class TranActivity {
    private static final String TAG = "TranActivity";
    private TranAospActivity mAospService;
    private TranThubActivity mThubService;

    public String getReferrer(Activity activity) {
        if (activity == null) {
            throw new IllegalArgumentException("activity cannot be null");
        }
        if (this.mAospService == null) {
            this.mAospService = new TranAospActivity();
        }
        return this.mAospService.getReferrer(activity);
    }

    public ITranActivityAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubActivity");
            TranThubActivity tranThubActivity = this.mThubService;
            if (tranThubActivity != null) {
                return tranThubActivity;
            }
            TranThubActivity tranThubActivity2 = new TranThubActivity();
            this.mThubService = tranThubActivity2;
            return tranThubActivity2;
        }
        TranSdkLog.i(TAG, "TranAospActivity");
        TranAospActivity tranAospActivity = this.mAospService;
        if (tranAospActivity != null) {
            return tranAospActivity;
        }
        TranAospActivity tranAospActivity2 = new TranAospActivity();
        this.mAospService = tranAospActivity2;
        return tranAospActivity2;
    }

    @Deprecated
    public void sceneHappen(int i, String str, String str2, String str3, boolean z) throws TranThubIncompatibleException {
        if (i < 0 || i > 100) {
            throw new IllegalArgumentException("sceneID must be between 0 and 100");
        }
        if (str == null || str2 == null || str3 == null) {
            throw new IllegalArgumentException("param cannot be null");
        }
        getService(TranVersion.Core.VERSION_33311).sceneHappen(i, str, str2, str3, z);
    }

    public void setupAlert(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("alertActivity cannot be null");
        }
        getService(TranVersion.Core.VERSION_33271).setupAlert(obj);
    }
}
