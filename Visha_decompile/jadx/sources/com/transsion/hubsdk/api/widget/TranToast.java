package com.transsion.hubsdk.api.widget;

import android.view.WindowManager;
import android.widget.Toast;
import com.transsion.hubsdk.aosp.widget.TranAospToast;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.widget.TranThubToast;
import com.transsion.hubsdk.interfaces.widget.ITranToastAdapter;

public class TranToast {
    private static final String TAG = "TranToast";
    private TranAospToast mAospService;
    private TranThubToast mThubService;

    public ITranToastAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubToast");
            TranThubToast tranThubToast = this.mThubService;
            if (tranThubToast != null) {
                return tranThubToast;
            }
            TranThubToast tranThubToast2 = new TranThubToast();
            this.mThubService = tranThubToast2;
            return tranThubToast2;
        }
        TranSdkLog.i(TAG, "TranAospToast");
        TranAospToast tranAospToast = this.mAospService;
        if (tranAospToast != null) {
            return tranAospToast;
        }
        TranAospToast tranAospToast2 = new TranAospToast();
        this.mAospService = tranAospToast2;
        return tranAospToast2;
    }

    public WindowManager.LayoutParams getWindowParams(Toast toast) {
        if (toast != null) {
            return getService(TranVersion.Core.VERSION_33311).getWindowParams(toast);
        }
        throw new IllegalArgumentException("toast is null");
    }
}
