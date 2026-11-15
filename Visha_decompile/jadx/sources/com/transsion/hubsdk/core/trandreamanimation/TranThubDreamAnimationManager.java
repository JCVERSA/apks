package com.transsion.hubsdk.core.trandreamanimation;

import android.os.RemoteException;
import android.util.ArrayMap;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.trandreamanimation.TranDreamAnimationManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.trandreamanimation.ITranDreamAnimationManagerAdapter;
import com.transsion.hubsdk.os.TranUserHandle;
import com.transsion.hubsdk.trandreamanimation.ITranDreamAnimationManager;
import java.util.HashMap;
import java.util.Map;

public class TranThubDreamAnimationManager implements ITranDreamAnimationManagerAdapter {
    private static final String TAG = "TranThubDreamAnimationManager";
    private ITranDreamAnimationManager mService;
    private final ArrayMap<TranDreamAnimationManager.TranCallBack, com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager.CallBack> mCallbacks = new ArrayMap<>();
    private Map<TranDreamAnimationManager.TranAODStateUpdateCallBack, ITranAODStateUpdateCallBack> mAODCallbackMap = new HashMap();
    private com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager mTranDreamAnimationManager = new com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager();

    public class ITranAODStateUpdateCallBack implements com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager.AODCallBack {
        private TranDreamAnimationManager.TranAODStateUpdateCallBack mCallback;

        public ITranAODStateUpdateCallBack(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack) {
            this.mCallback = tranAODStateUpdateCallBack;
        }

        public void onUpdateAODState(int i) {
            TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack = this.mCallback;
            if (tranAODStateUpdateCallBack != null) {
                tranAODStateUpdateCallBack.onUpdateAODState(i);
            }
        }
    }

    public ITranDreamAnimationManager getTranDreamAnimationManager() {
        if (this.mService == null) {
            this.mService = ITranDreamAnimationManager.Stub.asInterface(TranServiceManager.getServiceIBinder("dream_animation"));
        }
        return this.mService;
    }

    @Override
    public boolean isFeatureEnabled() {
        com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager tranDreamAnimationManager = this.mTranDreamAnimationManager;
        if (tranDreamAnimationManager == null) {
            return false;
        }
        try {
            return tranDreamAnimationManager.isFeatureEnabled();
        } catch (RuntimeException e) {
            TranSdkLog.e(TAG, "isFeatureEnabled e=" + e);
            return false;
        }
    }

    @Override
    public void onUpdateAODState(int i) throws TranThubIncompatibleException {
        ITranDreamAnimationManager tranDreamAnimationManager = getTranDreamAnimationManager();
        if (tranDreamAnimationManager != null) {
            try {
                tranDreamAnimationManager.onUpdateAODState(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "onUpdateAODState fail: " + e);
            }
        }
    }

    @Override
    public void registerAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack, int i) throws TranThubIncompatibleException {
        ITranAODStateUpdateCallBack iTranAODStateUpdateCallBack = new ITranAODStateUpdateCallBack(tranAODStateUpdateCallBack);
        if (this.mTranDreamAnimationManager != null) {
            this.mAODCallbackMap.put(tranAODStateUpdateCallBack, iTranAODStateUpdateCallBack);
            this.mTranDreamAnimationManager.registerAODCallback(iTranAODStateUpdateCallBack, i);
        }
    }

    @Override
    public void registerCallback(TranDreamAnimationManager.TranCallBack tranCallBack) {
        registerCallback(tranCallBack, TranUserHandle.myUserId());
    }

    @VisibleForTesting
    public void setService(com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager tranDreamAnimationManager) {
        this.mTranDreamAnimationManager = tranDreamAnimationManager;
    }

    @Override
    public void unRegisterAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack, int i) throws TranThubIncompatibleException {
        ITranAODStateUpdateCallBack iTranAODStateUpdateCallBack = this.mAODCallbackMap.get(tranAODStateUpdateCallBack);
        com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager tranDreamAnimationManager = this.mTranDreamAnimationManager;
        if (tranDreamAnimationManager == null || iTranAODStateUpdateCallBack == null) {
            return;
        }
        tranDreamAnimationManager.unRegisterAODCallback(iTranAODStateUpdateCallBack, i);
        this.mAODCallbackMap.remove(iTranAODStateUpdateCallBack);
    }

    @Override
    public void unRegisterCallback(TranDreamAnimationManager.TranCallBack tranCallBack, int i) {
        if (tranCallBack == null) {
            TranSdkLog.w(TAG, "CallBack is not available while unregister.");
        } else {
            this.mTranDreamAnimationManager.unRegisterCallback(this.mCallbacks.get(tranCallBack));
            this.mCallbacks.remove(tranCallBack);
        }
    }

    @Override
    public void registerCallback(final TranDreamAnimationManager.TranCallBack tranCallBack, int i) {
        if (tranCallBack == null) {
            TranSdkLog.w(TAG, "CallBack is not available while register.");
            return;
        }
        com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager.CallBack callBack = new com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager.CallBack() {
            public void onDreamAnimationEvent(int i2) {
                tranCallBack.onDreamAnimationEvent(i2);
            }
        };
        this.mCallbacks.put(tranCallBack, callBack);
        this.mTranDreamAnimationManager.registerCallback(callBack);
    }

    @Override
    public void unRegisterCallback(TranDreamAnimationManager.TranCallBack tranCallBack) {
        unRegisterCallback(tranCallBack, TranUserHandle.myUserId());
    }

    @Override
    public void registerAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack) throws TranThubIncompatibleException {
        ITranAODStateUpdateCallBack iTranAODStateUpdateCallBack = new ITranAODStateUpdateCallBack(tranAODStateUpdateCallBack);
        if (this.mTranDreamAnimationManager != null) {
            this.mAODCallbackMap.put(tranAODStateUpdateCallBack, iTranAODStateUpdateCallBack);
            this.mTranDreamAnimationManager.registerAODCallback(iTranAODStateUpdateCallBack);
        }
    }

    @Override
    public void unRegisterAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack) throws TranThubIncompatibleException {
        ITranAODStateUpdateCallBack iTranAODStateUpdateCallBack = this.mAODCallbackMap.get(tranAODStateUpdateCallBack);
        com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager tranDreamAnimationManager = this.mTranDreamAnimationManager;
        if (tranDreamAnimationManager == null || iTranAODStateUpdateCallBack == null) {
            return;
        }
        tranDreamAnimationManager.unRegisterAODCallback(iTranAODStateUpdateCallBack);
        this.mAODCallbackMap.remove(iTranAODStateUpdateCallBack);
    }
}
