package com.transsion.hubsdk.api.view;

import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.WindowManager;
import com.transsion.hubsdk.aosp.view.TranAospSurfaceControlViewHost;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubSurfaceControlViewHost;
import com.transsion.hubsdk.interfaces.view.ITranSurfaceControlViewHostAdapter;

public class TranSurfaceControlViewHost {
    private static final String TAG = "TranSurfaceControlViewHost";
    private TranAospSurfaceControlViewHost mAospService;
    private TranThubSurfaceControlViewHost mThubService;

    public ITranSurfaceControlViewHostAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubSurfaceControlViewHost");
            TranThubSurfaceControlViewHost tranThubSurfaceControlViewHost = this.mThubService;
            if (tranThubSurfaceControlViewHost != null) {
                return tranThubSurfaceControlViewHost;
            }
            TranThubSurfaceControlViewHost tranThubSurfaceControlViewHost2 = new TranThubSurfaceControlViewHost();
            this.mThubService = tranThubSurfaceControlViewHost2;
            return tranThubSurfaceControlViewHost2;
        }
        TranSdkLog.i(TAG, "TranAospSurfaceControlViewHost");
        TranAospSurfaceControlViewHost tranAospSurfaceControlViewHost = this.mAospService;
        if (tranAospSurfaceControlViewHost != null) {
            return tranAospSurfaceControlViewHost;
        }
        TranAospSurfaceControlViewHost tranAospSurfaceControlViewHost2 = new TranAospSurfaceControlViewHost();
        this.mAospService = tranAospSurfaceControlViewHost2;
        return tranAospSurfaceControlViewHost2;
    }

    public void relayout(SurfaceControlViewHost surfaceControlViewHost, WindowManager.LayoutParams layoutParams) {
        if (surfaceControlViewHost == null || layoutParams == null) {
            throw new IllegalArgumentException("name or parent should not be null");
        }
        getService(TranVersion.Core.VERSION_33441).relayout(surfaceControlViewHost, layoutParams);
    }

    public void setView(SurfaceControlViewHost surfaceControlViewHost, View view, WindowManager.LayoutParams layoutParams) {
        if (surfaceControlViewHost == null || view == null || layoutParams == null) {
            throw new IllegalArgumentException("name or parent should not be null");
        }
        getService(TranVersion.Core.VERSION_33441).setView(surfaceControlViewHost, view, layoutParams);
    }
}
