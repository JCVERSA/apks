package com.transsion.hubsdk.aosp.trandreamanimation;

import android.content.Context;
import android.os.RemoteException;
import android.util.ArrayMap;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.trandreamanimation.ITranDreamAnimationCallback;
import com.transsion.hubsdk.trandreamanimation.ITranDreamAnimationManager;
import com.transsion.hubsdk.trandreamanimation.TranDreamAnimationManager;
import java.util.ArrayList;
import java.util.Iterator;

public class TranAospDreamAnimationManagerExt {
    private static final String TAG = "TranAospDreamAnimationManagerExt";
    private Context mContext;
    private final Object mLock = new Object();
    private final ArrayList<TranCallBack> mTranCallBacks = new ArrayList<>();
    private ITranDreamAnimationCallback.Stub mServiceCallback = new ITranDreamAnimationCallback.Stub() {
        public void onDreamAnimationEvent(int i) {
            synchronized (TranAospDreamAnimationManagerExt.this.mLock) {
                try {
                    Iterator it = TranAospDreamAnimationManagerExt.this.mTranCallBacks.iterator();
                    while (it.hasNext()) {
                        ((TranCallBack) it.next()).onDreamAnimationEvent(i);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };
    private final ArrayMap<TranAospAODStateUpdateCallBack, TranDreamAnimationManager.AODCallBack> mAospAODCallBackList = new ArrayMap<>();
    private TranDreamAnimationManager mDreamAnimationManager = getDreamAnimationManager();
    private ITranDreamAnimationManager mService = ITranDreamAnimationManager.Stub.asInterface(TranServiceManager.getServiceIBinder("dream_animation"));

    public interface TranAospAODStateUpdateCallBack {
        void onUpdateAODState(int i);
    }

    public interface TranCallBack {
        void onDreamAnimationEvent(int i);
    }

    public TranAospDreamAnimationManagerExt(Context context) {
        this.mContext = context;
    }

    private TranDreamAnimationManager getDreamAnimationManager() {
        if (this.mDreamAnimationManager == null) {
            this.mDreamAnimationManager = new TranDreamAnimationManager();
        }
        return this.mDreamAnimationManager;
    }

    public void onUpdateAODState(int i) {
        ITranDreamAnimationManager iTranDreamAnimationManager = this.mService;
        if (iTranDreamAnimationManager != null) {
            try {
                iTranDreamAnimationManager.onUpdateAODState(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "onUpdateAODState fail:" + e);
            }
        }
    }

    public void registerAODCallback(final TranAospAODStateUpdateCallBack tranAospAODStateUpdateCallBack, int i) {
        if (tranAospAODStateUpdateCallBack == null) {
            TranSdkLog.w(TAG, "CallBack is not available while register.");
            return;
        }
        TranDreamAnimationManager.AODCallBack aODCallBack = new TranDreamAnimationManager.AODCallBack() {
        };
        try {
            this.mAospAODCallBackList.put(tranAospAODStateUpdateCallBack, aODCallBack);
            TranDreamAnimationManager tranDreamAnimationManager = this.mDreamAnimationManager;
            if (tranDreamAnimationManager != null) {
                tranDreamAnimationManager.registerAODCallback(aODCallBack, i);
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "registerAODCallback fail:" + e);
        }
    }

    public void registerCallback(TranCallBack tranCallBack, int i) {
        if (tranCallBack == null) {
            TranSdkLog.w(TAG, "CallBack is not available while register.");
            return;
        }
        synchronized (this.mLock) {
            try {
                this.mTranCallBacks.add(tranCallBack);
                if (this.mTranCallBacks.size() == 1) {
                    this.mService.registerCallback(this.mServiceCallback, i);
                }
            } catch (Exception e) {
                TranSdkLog.e(TAG, "registerCallback fail:" + e);
            }
        }
    }

    public void unRegisterAODCallback(TranAospAODStateUpdateCallBack tranAospAODStateUpdateCallBack, int i) {
        if (tranAospAODStateUpdateCallBack == null) {
            TranSdkLog.w(TAG, "CallBack is not available while register.");
            return;
        }
        try {
            TranDreamAnimationManager tranDreamAnimationManager = this.mDreamAnimationManager;
            if (tranDreamAnimationManager != null) {
                tranDreamAnimationManager.unRegisterAODCallback(this.mAospAODCallBackList.get(tranAospAODStateUpdateCallBack), i);
                this.mAospAODCallBackList.remove(tranAospAODStateUpdateCallBack);
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "registerAODCallback fail:" + e);
        }
    }

    public void unRegisterCallback(TranCallBack tranCallBack, int i) {
        if (tranCallBack == null) {
            TranSdkLog.w(TAG, "CallBack is not available while unRegister.");
            return;
        }
        synchronized (this.mLock) {
            try {
                this.mTranCallBacks.remove(tranCallBack);
                if (this.mTranCallBacks.size() == 0) {
                    this.mService.unRegisterCallback(this.mServiceCallback, i);
                }
            } catch (Exception e) {
                TranSdkLog.e(TAG, "unRegisterCallback fail:" + e);
            }
        }
    }
}
