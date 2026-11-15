package com.transsion.hubsdk.api.window;

import android.graphics.Rect;
import android.view.SurfaceControl;
import com.transsion.hubsdk.aosp.window.TranAospScreenCapture;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.window.TranThubScreenCapture;
import com.transsion.hubsdk.interfaces.window.ITranScreenCaptureAdapter;

public class TranScreenCapture {
    private static final String TAG = "TranScreenCapture";
    private TranAospScreenCapture mAospService;
    private TranThubScreenCapture mThubService;

    public boolean containsSecureLayers(Object obj) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return false;
        }
        if (obj != null) {
            return getService(TranVersion.Core.VERSION_33371).containsSecureLayers(obj);
        }
        throw new IllegalArgumentException("obj should not be null");
    }

    public Object getCaptureArgs(SurfaceControl surfaceControl, Rect rect) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return null;
        }
        if (surfaceControl == null || rect == null) {
            throw new IllegalArgumentException("appSurface or rect should not be null");
        }
        return getService(TranVersion.Core.VERSION_33371).getCaptureArgs(surfaceControl, rect);
    }

    public ITranScreenCaptureAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubScreenCapture tranThubScreenCapture = this.mThubService;
            if (tranThubScreenCapture != null) {
                return tranThubScreenCapture;
            }
            TranThubScreenCapture tranThubScreenCapture2 = new TranThubScreenCapture();
            this.mThubService = tranThubScreenCapture2;
            return tranThubScreenCapture2;
        }
        TranSdkLog.i(TAG, "TranAospSurfaceControl");
        TranAospScreenCapture tranAospScreenCapture = this.mAospService;
        if (tranAospScreenCapture != null) {
            return tranAospScreenCapture;
        }
        TranAospScreenCapture tranAospScreenCapture2 = new TranAospScreenCapture();
        this.mAospService = tranAospScreenCapture2;
        return tranAospScreenCapture2;
    }
}
