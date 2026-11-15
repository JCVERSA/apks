package com.transsion.hubsdk.api.trandreamanimation;

import com.transsion.hubsdk.aosp.trandreamanimation.TranAospDreamAnimationManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.trandreamanimation.TranThubDreamAnimationManager;
import com.transsion.hubsdk.interfaces.trandreamanimation.ITranDreamAnimationManagerAdapter;

public class TranDreamAnimationManager {
    public static final String KEY_AOD_IS_SHOW = "aod_is_show";
    public static final String KEY_SELECT_AOD_LIVEWALLPAPER = "select_aod_livewallpaper_key";
    private static final String TAG = "TranDreamAnimationManager";
    private TranAospDreamAnimationManager mAospService;
    private TranThubDreamAnimationManager mThubService;

    public interface TranAODStateUpdateCallBack {
        void onUpdateAODState(int i);
    }

    public interface TranCallBack {
        void onDreamAnimationEvent(int i);
    }

    public ITranDreamAnimationManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubDreamAnimationManager");
            TranThubDreamAnimationManager tranThubDreamAnimationManager = this.mThubService;
            if (tranThubDreamAnimationManager != null) {
                return tranThubDreamAnimationManager;
            }
            TranThubDreamAnimationManager tranThubDreamAnimationManager2 = new TranThubDreamAnimationManager();
            this.mThubService = tranThubDreamAnimationManager2;
            return tranThubDreamAnimationManager2;
        }
        TranSdkLog.i(TAG, "TranAospDreamAnimationManager");
        TranAospDreamAnimationManager tranAospDreamAnimationManager = this.mAospService;
        if (tranAospDreamAnimationManager != null) {
            return tranAospDreamAnimationManager;
        }
        TranAospDreamAnimationManager tranAospDreamAnimationManager2 = new TranAospDreamAnimationManager();
        this.mAospService = tranAospDreamAnimationManager2;
        return tranAospDreamAnimationManager2;
    }

    public boolean isFeatureEnabled() {
        return getService(TranVersion.Core.VERSION_33181).isFeatureEnabled();
    }

    public void onUpdateAODState(int i) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33311).onUpdateAODState(i);
    }

    public void registerAODCallback(TranAODStateUpdateCallBack tranAODStateUpdateCallBack, int i) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33311).registerAODCallback(tranAODStateUpdateCallBack, i);
    }

    public void registerCallback(TranCallBack tranCallBack) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33111).registerCallback(tranCallBack);
    }

    public void unRegisterAODCallback(TranAODStateUpdateCallBack tranAODStateUpdateCallBack, int i) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33311).unRegisterAODCallback(tranAODStateUpdateCallBack, i);
    }

    @TranLevel(level = 1)
    public void unRegisterCallback(TranCallBack tranCallBack) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33111).unRegisterCallback(tranCallBack);
    }

    public void registerAODCallback(TranAODStateUpdateCallBack tranAODStateUpdateCallBack) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33311).registerAODCallback(tranAODStateUpdateCallBack);
    }

    public void registerCallback(TranCallBack tranCallBack, int i) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33111).registerCallback(tranCallBack, i);
    }

    public void unRegisterAODCallback(TranAODStateUpdateCallBack tranAODStateUpdateCallBack) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33311).unRegisterAODCallback(tranAODStateUpdateCallBack);
    }

    @TranLevel(level = 1)
    public void unRegisterCallback(TranCallBack tranCallBack, int i) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33111).unRegisterCallback(tranCallBack, i);
    }
}
