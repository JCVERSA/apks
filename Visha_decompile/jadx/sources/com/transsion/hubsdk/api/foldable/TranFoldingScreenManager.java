package com.transsion.hubsdk.api.foldable;

import android.content.Context;
import com.transsion.hubsdk.aosp.foldable.TranAospFoldingScreenManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.foldable.TranThubFoldingScreenManager;
import com.transsion.hubsdk.interfaces.foldable.ITranFoldingScreenAdapter;

public class TranFoldingScreenManager {
    private static final String TAG = "TranFoldingScreenManager";
    private TranAospFoldingScreenManager mAospService;
    private TranThubFoldingScreenManager mThubService;

    public void addActivityEmbeddingPkg(Context context, String str) throws TranThubIncompatibleException {
        if (context == null || str == null) {
            throw new IllegalArgumentException("addActivityEmbeddingPkg invalid param");
        }
        getService(TranVersion.Core.VERSION_33171).addActivityEmbeddingPkg(context, str);
    }

    public String getActivityEmbeddingPkgs(Context context) throws TranThubIncompatibleException {
        if (context != null) {
            return getService(TranVersion.Core.VERSION_33171).getActivityEmbeddingPkgs(context);
        }
        throw new IllegalArgumentException("getActivityEmbeddingPkgs invalid param");
    }

    public int getCompatibleMode(Context context, String str) throws TranThubIncompatibleException {
        if (context == null || str == null) {
            throw new IllegalArgumentException("getCompatibleMode invalid param");
        }
        return getService(TranVersion.Core.VERSION_33171).getCompatibleMode(context, str);
    }

    public boolean getHoverModeStateForPackage(Context context, String str) throws TranThubIncompatibleException {
        if (context == null || str == null) {
            throw new NullPointerException("Params cannot be null");
        }
        return getService(TranVersion.Core.VERSION_33251).getHoverModeStateForPackage(context, str);
    }

    public int getScreenRelayMode(Context context) throws TranThubIncompatibleException {
        if (context != null) {
            return getService(TranVersion.Core.VERSION_33171).getScreenRelayMode(context);
        }
        throw new IllegalArgumentException("getScreenRelayMode invalid param");
    }

    public ITranFoldingScreenAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubFoldingScreenManager");
            TranThubFoldingScreenManager tranThubFoldingScreenManager = this.mThubService;
            if (tranThubFoldingScreenManager != null) {
                return tranThubFoldingScreenManager;
            }
            TranThubFoldingScreenManager tranThubFoldingScreenManager2 = new TranThubFoldingScreenManager();
            this.mThubService = tranThubFoldingScreenManager2;
            return tranThubFoldingScreenManager2;
        }
        TranSdkLog.i(TAG, "TranAospFoldingScreenManager");
        TranAospFoldingScreenManager tranAospFoldingScreenManager = this.mAospService;
        if (tranAospFoldingScreenManager != null) {
            return tranAospFoldingScreenManager;
        }
        TranAospFoldingScreenManager tranAospFoldingScreenManager2 = new TranAospFoldingScreenManager();
        this.mAospService = tranAospFoldingScreenManager2;
        return tranAospFoldingScreenManager2;
    }

    public boolean isPkgInActivityEmbedding(Context context, String str) throws TranThubIncompatibleException {
        if (context == null || str == null) {
            throw new IllegalArgumentException("isPkgInActivityEmbedding invalid param");
        }
        return getService(TranVersion.Core.VERSION_33171).isPkgInActivityEmbedding(context, str);
    }

    public void removeActivityEmbeddingPkg(Context context, String str) throws TranThubIncompatibleException {
        if (context == null || str == null) {
            throw new IllegalArgumentException("removeActivityEmbeddingPkg invalid param");
        }
        getService(TranVersion.Core.VERSION_33181).removeActivityEmbeddingPkg(context, str);
    }

    public void setCompatibleMode(Context context, String str, int i) throws TranThubIncompatibleException {
        if (context == null || str == null || i < -1 || i > 2) {
            throw new IllegalArgumentException("getCompatibleMode invalid param");
        }
        getService(TranVersion.Core.VERSION_33171).setCompatibleMode(context, str, i);
    }

    public void setHoverModeStateForPackage(Context context, String str, boolean z, boolean z2) throws TranThubIncompatibleException {
        if (context == null || str == null) {
            throw new NullPointerException("Params cannot be null");
        }
        getService(TranVersion.Core.VERSION_33251).setHoverModeStateForPackage(context, str, z, z2);
    }

    public void setScreenRelayMode(Context context, int i) throws TranThubIncompatibleException {
        if (context == null || i < 0 || i > 3) {
            throw new IllegalArgumentException("setScreenRelayMode invalid param");
        }
        getService(TranVersion.Core.VERSION_33171).setScreenRelayMode(context, i);
    }

    public void setCompatibleMode(Context context, String str, int i, boolean z) throws TranThubIncompatibleException {
        if (context != null && str != null && i >= 0 && i <= 3) {
            getService(TranVersion.Core.VERSION_33251).setCompatibleMode(context, str, i, z);
            return;
        }
        throw new NullPointerException("Params cannot is illegal");
    }
}
