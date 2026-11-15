package com.transsion.hubsdk.api.internal.policy;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;
import com.transsion.hubsdk.aosp.internal.policy.TranAospPhoneWindow;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.policy.TranThubPhoneWindow;
import com.transsion.hubsdk.interfaces.internal.policy.ITranPhoneWindowAdapter;

public class TranPhoneWindow {
    private static final String TAG = "TranPhoneWindow";
    private TranAospPhoneWindow mAospService;
    private Context mContext;
    private TranThubPhoneWindow mThubService;

    public TranPhoneWindow(Context context) {
        this.mContext = context;
    }

    public View getDecorView() {
        return getService(TranVersion.Core.VERSION_33211).getDecorView();
    }

    public ITranPhoneWindowAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubPhoneWindow");
            TranThubPhoneWindow tranThubPhoneWindow = this.mThubService;
            if (tranThubPhoneWindow != null) {
                return tranThubPhoneWindow;
            }
            TranThubPhoneWindow tranThubPhoneWindow2 = new TranThubPhoneWindow(this.mContext);
            this.mThubService = tranThubPhoneWindow2;
            return tranThubPhoneWindow2;
        }
        TranSdkLog.i(TAG, "TranAospPhoneWindow");
        TranAospPhoneWindow tranAospPhoneWindow = this.mAospService;
        if (tranAospPhoneWindow != null) {
            return tranAospPhoneWindow;
        }
        TranAospPhoneWindow tranAospPhoneWindow2 = new TranAospPhoneWindow(this.mContext);
        this.mAospService = tranAospPhoneWindow2;
        return tranAospPhoneWindow2;
    }

    @TranLevel(level = 1)
    public boolean requestFeature(int i) {
        return getService(TranVersion.Core.VERSION_33211).requestFeature(i);
    }

    public void setBackgroundDrawableResource(int i) {
        getService(TranVersion.Core.VERSION_33211).setBackgroundDrawableResource(i);
    }

    @TranLevel(level = 1)
    public void setWindowManager(WindowManager windowManager, IBinder iBinder, String str) {
        getService(TranVersion.Core.VERSION_33211).setWindowManager(windowManager, iBinder, str);
    }
}
