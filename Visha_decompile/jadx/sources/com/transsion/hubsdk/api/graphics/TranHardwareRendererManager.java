package com.transsion.hubsdk.api.graphics;

import android.graphics.Bitmap;
import android.graphics.RenderNode;
import com.transsion.hubsdk.aosp.graphics.TranAospHardwareRendererManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.graphics.TranThubHardwareRendererManager;
import com.transsion.hubsdk.interfaces.graphics.ITranHardwareRendererManagerAdapter;

public class TranHardwareRendererManager {
    private static final String TAG = "TranHardwareRendererManager";
    private static TranAospHardwareRendererManager sAospService;
    private static TranThubHardwareRendererManager sThubService;

    public static Bitmap createHardwareBitmap(RenderNode renderNode, int i, int i2) {
        if (renderNode != null) {
            return getService(TranVersion.Core.VERSION_33211).createHardwareBitmap(renderNode, i, i2);
        }
        throw new IllegalArgumentException("RenderNode is null.");
    }

    public static ITranHardwareRendererManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubHardwareRendererManager");
            TranThubHardwareRendererManager tranThubHardwareRendererManager = sThubService;
            if (tranThubHardwareRendererManager != null) {
                return tranThubHardwareRendererManager;
            }
            TranThubHardwareRendererManager tranThubHardwareRendererManager2 = new TranThubHardwareRendererManager();
            sThubService = tranThubHardwareRendererManager2;
            return tranThubHardwareRendererManager2;
        }
        TranSdkLog.i(TAG, "TranAospHardwareRendererManager");
        TranAospHardwareRendererManager tranAospHardwareRendererManager = sAospService;
        if (tranAospHardwareRendererManager != null) {
            return tranAospHardwareRendererManager;
        }
        TranAospHardwareRendererManager tranAospHardwareRendererManager2 = new TranAospHardwareRendererManager();
        sAospService = tranAospHardwareRendererManager2;
        return tranAospHardwareRendererManager2;
    }
}
