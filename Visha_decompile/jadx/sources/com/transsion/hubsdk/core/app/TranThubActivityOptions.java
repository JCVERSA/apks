package com.transsion.hubsdk.core.app;

import android.app.ActivityOptions;
import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.app.ITranActivityOptions;
import com.transsion.hubsdk.app.TranActivityOptions;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranActivityOptionsAdapter;

public class TranThubActivityOptions implements ITranActivityOptionsAdapter {
    private static final String TAG = "TranThubActivityOptions";
    protected TranActivityOptions mTranActivityOptions = null;
    private ITranActivityOptions mService = ITranActivityOptions.Stub.asInterface(TranServiceManager.getServiceIBinder("activity_option"));

    public Object lambda$setDisallowEnterPictureInPictureWhileLaunching$0(boolean z) throws RemoteException {
        ITranActivityOptions iTranActivityOptions = this.mService;
        if (iTranActivityOptions == null) {
            return null;
        }
        iTranActivityOptions.setDisallowEnterPictureInPictureWhileLaunching(z);
        return null;
    }

    public Object lambda$setRotationAnimationHint$1(int i) throws RemoteException {
        ITranActivityOptions iTranActivityOptions = this.mService;
        if (iTranActivityOptions == null) {
            return null;
        }
        iTranActivityOptions.setRotationAnimationHint(i);
        return null;
    }

    public Object lambda$toBundle$2() throws RemoteException {
        ITranActivityOptions iTranActivityOptions = this.mService;
        if (iTranActivityOptions != null) {
            return iTranActivityOptions.toBundle();
        }
        return null;
    }

    @Override
    public ActivityOptions fromBundle(Bundle bundle) {
        if (this.mTranActivityOptions == null) {
            this.mTranActivityOptions = new TranActivityOptions();
        }
        return this.mTranActivityOptions.fromBundle(bundle);
    }

    @Override
    public void setActivitySurfaceShownCallback(ActivityOptions activityOptions, Messenger messenger, long j, long j2) {
        if (this.mTranActivityOptions == null) {
            this.mTranActivityOptions = new TranActivityOptions();
        }
        this.mTranActivityOptions.setActivitySurfaceShownCallback(activityOptions, messenger, j, j2);
    }

    @Override
    public void setDisallowEnterPictureInPictureWhileLaunching(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setDisallowEnterPictureInPictureWhileLaunching$0(z);
            }
        }, "accessibility_service_info");
        TranSdkLog.i(TAG, "setDisallowEnterPictureInPictureWhileLaunching disallow:" + z);
    }

    @Override
    public void setLaunchTaskId(ActivityOptions activityOptions, int i) {
        if (this.mTranActivityOptions == null) {
            this.mTranActivityOptions = new TranActivityOptions();
        }
        this.mTranActivityOptions.setLaunchTaskId(activityOptions, i);
    }

    @Override
    public void setLaunchWindowingMode(ActivityOptions activityOptions, int i) {
        if (this.mTranActivityOptions == null) {
            this.mTranActivityOptions = new TranActivityOptions();
        }
        this.mTranActivityOptions.setLaunchWindowingMode(activityOptions, i);
    }

    @Override
    public void setRotationAnimationHint(final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setRotationAnimationHint$1(i);
            }
        }, "accessibility_service_info");
        TranSdkLog.i(TAG, "setRotationAnimationHint hint:" + i);
    }

    @VisibleForTesting
    public void setService(ITranActivityOptions iTranActivityOptions) {
        this.mService = iTranActivityOptions;
    }

    @Override
    public void setStartMultiWindowByRecent(ActivityOptions activityOptions, int i) {
        if (this.mTranActivityOptions == null) {
            this.mTranActivityOptions = new TranActivityOptions();
        }
        this.mTranActivityOptions.setStartMultiWindowByRecent(activityOptions, i);
    }

    @Override
    public void setThunderBackSupport(ActivityOptions activityOptions, boolean z) {
        if (this.mTranActivityOptions == null) {
            this.mTranActivityOptions = new TranActivityOptions();
        }
        this.mTranActivityOptions.setThunderBackSupport(activityOptions, z);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = (Bundle) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$toBundle$2();
            }
        }, "accessibility_service_info");
        TranSdkLog.i(TAG, "toBundle bundle:" + bundle);
        return bundle;
    }
}
