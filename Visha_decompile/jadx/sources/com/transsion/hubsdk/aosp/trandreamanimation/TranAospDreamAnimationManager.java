package com.transsion.hubsdk.aosp.trandreamanimation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.ArrayMap;
import com.transsion.hubsdk.api.trandreamanimation.TranDreamAnimationManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.trandreamanimation.ITranDreamAnimationManagerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

public class TranAospDreamAnimationManager implements ITranDreamAnimationManagerAdapter {
    private static final String FAIL_MSG = "Version below 3.1.1 does not have this interface, please implement it yourself";
    private static final String TAG = "TranAospDreamAnimationManager";
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.DreamAnimationManager");
    private TranAospDreamAnimationManagerExt mTranAospDreamAnimationManagerExt;
    private final ArrayList<TranDreamAnimationManager.TranCallBack> mCallBacks = new ArrayList<>();
    private final TranAospDreamAnimationManagerExt.TranCallBack mTranCallBack = new TranAospDreamAnimationManagerExt.TranCallBack() {
        @Override
        public void onDreamAnimationEvent(int i) {
            Iterator it = TranAospDreamAnimationManager.this.mCallBacks.iterator();
            while (it.hasNext()) {
                ((TranDreamAnimationManager.TranCallBack) it.next()).onDreamAnimationEvent(i);
            }
        }
    };
    private final ArrayMap<TranDreamAnimationManager.TranAODStateUpdateCallBack, TranAospDreamAnimationManagerExt.TranAospAODStateUpdateCallBack> mAODCallBacksListeners = new ArrayMap<>();
    private Context mContext = TranHubSdkManager.getContext();

    private TranAospDreamAnimationManagerExt getTranAospDreamAnimationManagerExt() {
        if (this.mTranAospDreamAnimationManagerExt == null) {
            this.mTranAospDreamAnimationManagerExt = new TranAospDreamAnimationManagerExt(this.mContext);
        }
        return this.mTranAospDreamAnimationManagerExt;
    }

    private int getUserId() {
        return ((Integer) TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.os.UserHandle"), "myUserId", new Class[0]), null, new Object[0])).intValue();
    }

    @Override
    @SuppressLint({"WrongConstant"})
    public boolean isFeatureEnabled() {
        try {
            Object objInvoke = TranDoorMan.getMethod(sClassName, "isFeatureEnabled", new Class[0]).invoke(this.mContext.getSystemService("dream_animation"), null);
            if (objInvoke instanceof Boolean) {
                return ((Boolean) objInvoke).booleanValue();
            }
            return false;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "isFeatureEnabled fail " + th);
            return false;
        }
    }

    @Override
    public void onUpdateAODState(int i) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isRecentAndroidT()) {
            throw new TranThubIncompatibleException(FAIL_MSG);
        }
        getTranAospDreamAnimationManagerExt().onUpdateAODState(i);
    }

    @Override
    public void registerAODCallback(final TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack, int i) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isRecentAndroidT()) {
            throw new TranThubIncompatibleException(FAIL_MSG);
        }
        TranAospDreamAnimationManagerExt.TranAospAODStateUpdateCallBack tranAospAODStateUpdateCallBack = new TranAospDreamAnimationManagerExt.TranAospAODStateUpdateCallBack() {
            @Override
            public void onUpdateAODState(int i2) {
                tranAODStateUpdateCallBack.onUpdateAODState(i2);
            }
        };
        this.mAODCallBacksListeners.put(tranAODStateUpdateCallBack, tranAospAODStateUpdateCallBack);
        getTranAospDreamAnimationManagerExt().registerAODCallback(tranAospAODStateUpdateCallBack, i);
    }

    @Override
    public void registerCallback(TranDreamAnimationManager.TranCallBack tranCallBack) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isAndroidS()) {
            throw new TranThubIncompatibleException("can not find method registerCallback");
        }
        registerCallback(tranCallBack, getUserId());
    }

    @Override
    public void unRegisterAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack, int i) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isRecentAndroidT()) {
            throw new TranThubIncompatibleException(FAIL_MSG);
        }
        getTranAospDreamAnimationManagerExt().unRegisterAODCallback(this.mAODCallBacksListeners.get(tranAODStateUpdateCallBack), i);
        this.mAODCallBacksListeners.remove(tranAODStateUpdateCallBack);
    }

    @Override
    public void unRegisterCallback(TranDreamAnimationManager.TranCallBack tranCallBack, int i) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isAndroidS()) {
            throw new TranThubIncompatibleException("can not find method unRegisterCallback");
        }
        this.mCallBacks.remove(tranCallBack);
        getTranAospDreamAnimationManagerExt().unRegisterCallback(this.mTranCallBack, i);
    }

    @Override
    public void registerCallback(TranDreamAnimationManager.TranCallBack tranCallBack, int i) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isAndroidS()) {
            this.mCallBacks.add(tranCallBack);
            getTranAospDreamAnimationManagerExt().registerCallback(this.mTranCallBack, i);
            return;
        }
        throw new TranThubIncompatibleException("can not find method registerCallback");
    }

    @Override
    public void unRegisterAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            unRegisterAODCallback(tranAODStateUpdateCallBack, getUserId());
            return;
        }
        throw new TranThubIncompatibleException(FAIL_MSG);
    }

    @Override
    public void unRegisterCallback(TranDreamAnimationManager.TranCallBack tranCallBack) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isAndroidS()) {
            unRegisterCallback(tranCallBack, getUserId());
            return;
        }
        throw new TranThubIncompatibleException("can not find method unRegisterCallback");
    }

    @Override
    public void registerAODCallback(TranDreamAnimationManager.TranAODStateUpdateCallBack tranAODStateUpdateCallBack) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            registerAODCallback(tranAODStateUpdateCallBack, getUserId());
            return;
        }
        throw new TranThubIncompatibleException(FAIL_MSG);
    }
}
