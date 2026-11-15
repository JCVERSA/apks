package com.transsion.hubsdk.api.internal.view;

import android.content.Context;
import com.transsion.hubsdk.aosp.internal.view.TranAospRotationPolicy;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.view.TranThubRotationPolicy;
import com.transsion.hubsdk.interfaces.internal.view.ITranRotationPolicyAdapter;

public class TranRotationPolicy {
    private static final String TAG = "TranRotationPolicy";
    private TranAospRotationPolicy mAospService;
    private TranThubRotationPolicy mThubService;

    public ITranRotationPolicyAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubRotationPolicy");
            TranThubRotationPolicy tranThubRotationPolicy = this.mThubService;
            if (tranThubRotationPolicy != null) {
                return tranThubRotationPolicy;
            }
            TranThubRotationPolicy tranThubRotationPolicy2 = new TranThubRotationPolicy();
            this.mThubService = tranThubRotationPolicy2;
            return tranThubRotationPolicy2;
        }
        TranSdkLog.i(TAG, "TranAospRotationPolicy");
        TranAospRotationPolicy tranAospRotationPolicy = this.mAospService;
        if (tranAospRotationPolicy != null) {
            return tranAospRotationPolicy;
        }
        TranAospRotationPolicy tranAospRotationPolicy2 = new TranAospRotationPolicy();
        this.mAospService = tranAospRotationPolicy2;
        return tranAospRotationPolicy2;
    }

    public boolean isRotationLocked(Context context) {
        return getService(TranVersion.Core.VERSION_33171).isRotationLocked(context);
    }
}
