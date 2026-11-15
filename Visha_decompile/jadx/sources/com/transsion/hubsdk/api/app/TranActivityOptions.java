package com.transsion.hubsdk.api.app;

import android.app.ActivityOptions;
import android.os.Bundle;
import android.os.Messenger;
import com.transsion.hubsdk.aosp.app.TranAospActivityOptions;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubActivityOptions;
import com.transsion.hubsdk.interfaces.app.ITranActivityOptionsAdapter;

public class TranActivityOptions {
    public static final String KEY_OVERRIDE_TASK_TRANSITION = "android:activity.overrideTaskTransition";
    private static final String TAG = "TranActivityOptions";
    protected TranAospActivityOptions mAospService = null;
    private TranThubActivityOptions mThubService = null;

    public ActivityOptions fromBundle(Bundle bundle) {
        return getService(TranVersion.Core.VERSION_33141).fromBundle(bundle);
    }

    public ITranActivityOptionsAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubActivityOptions");
            TranThubActivityOptions tranThubActivityOptions = this.mThubService;
            if (tranThubActivityOptions != null) {
                return tranThubActivityOptions;
            }
            TranThubActivityOptions tranThubActivityOptions2 = new TranThubActivityOptions();
            this.mThubService = tranThubActivityOptions2;
            return tranThubActivityOptions2;
        }
        TranSdkLog.i(TAG, "TranAospActivityOptions");
        TranAospActivityOptions tranAospActivityOptions = this.mAospService;
        if (tranAospActivityOptions != null) {
            return tranAospActivityOptions;
        }
        TranAospActivityOptions tranAospActivityOptions2 = new TranAospActivityOptions();
        this.mAospService = tranAospActivityOptions2;
        return tranAospActivityOptions2;
    }

    @Deprecated
    public void setActivitySurfaceShownCallback(ActivityOptions activityOptions, Messenger messenger, long j, long j2) {
        if (activityOptions == null) {
            throw new NullPointerException("ActivityOptions cannot be null");
        }
        getService(TranVersion.Core.VERSION_33271).setActivitySurfaceShownCallback(activityOptions, messenger, j, j2);
    }

    public void setDisallowEnterPictureInPictureWhileLaunching(boolean z) {
        getService(TranVersion.Core.VERSION_33171).setDisallowEnterPictureInPictureWhileLaunching(z);
    }

    public void setLaunchTaskId(ActivityOptions activityOptions, int i) {
        getService(TranVersion.Core.VERSION_33141).setLaunchTaskId(activityOptions, i);
    }

    public void setLaunchWindowingMode(ActivityOptions activityOptions, int i) {
        getService(TranVersion.Core.VERSION_33141).setLaunchWindowingMode(activityOptions, i);
    }

    public void setRotationAnimationHint(int i) {
        getService(TranVersion.Core.VERSION_33171).setRotationAnimationHint(i);
    }

    public void setStartMultiWindowByRecent(ActivityOptions activityOptions, int i) {
        if (activityOptions == null) {
            throw new IllegalArgumentException("ActivityOptions cannot be null");
        }
        getService(TranVersion.Core.VERSION_33371).setStartMultiWindowByRecent(activityOptions, i);
    }

    public void setThunderBackSupport(ActivityOptions activityOptions, boolean z) {
        if (activityOptions == null) {
            throw new IllegalArgumentException("ActivityOptions cannot be null");
        }
        getService(TranVersion.Core.VERSION_33311).setThunderBackSupport(activityOptions, z);
    }

    public Bundle toBundle() {
        return getService(TranVersion.Core.VERSION_33171).toBundle();
    }
}
