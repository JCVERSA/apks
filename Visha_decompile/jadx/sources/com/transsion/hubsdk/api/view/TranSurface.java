package com.transsion.hubsdk.api.view;

import android.view.Surface;
import com.transsion.hubsdk.aosp.view.TranAospSurface;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubSurface;
import com.transsion.hubsdk.interfaces.view.ITranSurfaceAdapter;

public class TranSurface {
    private static final String TAG = "TranSurface";
    private TranAospSurface mAospService;
    private TranThubSurface mThubService;

    public ITranSurfaceAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubSurface");
            TranThubSurface tranThubSurface = this.mThubService;
            if (tranThubSurface != null) {
                return tranThubSurface;
            }
            TranThubSurface tranThubSurface2 = new TranThubSurface();
            this.mThubService = tranThubSurface2;
            return tranThubSurface2;
        }
        TranSdkLog.i(TAG, "TranAospSurface");
        TranAospSurface tranAospSurface = this.mAospService;
        if (tranAospSurface != null) {
            return tranAospSurface;
        }
        TranAospSurface tranAospSurface2 = new TranAospSurface();
        this.mAospService = tranAospSurface2;
        return tranAospSurface2;
    }

    public int setBuffersFormatOverride(Surface surface, int i) {
        if (surface != null) {
            return getService(TranVersion.Core.VERSION_33471).setBuffersFormatOverride(surface, i);
        }
        throw new IllegalArgumentException("surface cannot be null");
    }
}
