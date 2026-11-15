package com.transsion.hubsdk.interfaces.trandreamanimation;

import com.transsion.hubsdk.api.trandreamanimation.TranDreamAnimationManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranDreamAnimationManagerAdapter {
    boolean isFeatureEnabled();

    void onUpdateAODState(int i) throws TranThubIncompatibleException;

    void registerAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack) throws TranThubIncompatibleException;

    void registerAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack, int i) throws TranThubIncompatibleException;

    void registerCallback(TranDreamAnimationManager.TranCallBack tranCallBack) throws TranThubIncompatibleException;

    void registerCallback(TranDreamAnimationManager.TranCallBack tranCallBack, int i) throws TranThubIncompatibleException;

    void unRegisterAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack) throws TranThubIncompatibleException;

    void unRegisterAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack, int i) throws TranThubIncompatibleException;

    void unRegisterCallback(TranDreamAnimationManager.TranCallBack tranCallBack) throws TranThubIncompatibleException;

    void unRegisterCallback(TranDreamAnimationManager.TranCallBack tranCallBack, int i) throws TranThubIncompatibleException;
}
