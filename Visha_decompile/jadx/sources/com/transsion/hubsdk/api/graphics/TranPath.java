package com.transsion.hubsdk.api.graphics;

import android.graphics.Path;
import com.transsion.hubsdk.aosp.graphics.TranAospPath;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.graphics.TranThubPath;
import com.transsion.hubsdk.interfaces.graphics.ITranPathAdapter;

public class TranPath {
    private static final boolean ENABLED;
    private static final TranPath INSTANCE;
    private static final String TAG = "TranPath";
    private TranAospPath mAospService;
    private TranThubPath mThubService;

    static {
        ENABLED = TranVersion.isIntegratedThubCore(TranVersion.Core.VERSION_33511) && TranCanvas.getInstance().smoothcornerCubicEdgeEnabled();
        INSTANCE = new TranPath();
    }

    public static TranPath getInstance() {
        return INSTANCE;
    }

    public static boolean smoothCapsuleEnabled() {
        return ENABLED && getInstance().getService().smoothCapsuleEnabled();
    }

    public ITranPathAdapter getService() {
        if (ENABLED) {
            TranSdkLog.i(TAG, "TranThubPath");
            TranThubPath tranThubPath = this.mThubService;
            if (tranThubPath != null) {
                return tranThubPath;
            }
            TranThubPath tranThubPath2 = new TranThubPath();
            this.mThubService = tranThubPath2;
            return tranThubPath2;
        }
        TranSdkLog.i(TAG, "TranAospPath");
        TranAospPath tranAospPath = this.mAospService;
        if (tranAospPath != null) {
            return tranAospPath;
        }
        TranAospPath tranAospPath2 = new TranAospPath();
        this.mAospService = tranAospPath2;
        return tranAospPath2;
    }

    public Path getSmoothCapsule(float f, float f2, float f3, float f4, float f5) {
        return getSmoothCapsule(f, f2, f3, f4, f5, 0.6f);
    }

    public Path getSmoothCapsule(float f, float f2, float f3, float f4, float f5, float f6) {
        return getService().getSmoothCapsule(f, f2, f3, f4, f5, f6);
    }
}
