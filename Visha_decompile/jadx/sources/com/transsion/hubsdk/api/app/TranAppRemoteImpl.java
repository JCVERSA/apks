package com.transsion.hubsdk.api.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.UserHandle;
import android.view.View;
import com.transsion.hubsdk.aosp.app.TranAospAppRemoteImpl;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubAppRemoteImpl;
import com.transsion.hubsdk.interfaces.app.ITranAppRemoteImplAdapter;

public class TranAppRemoteImpl {
    private static final String TAG = "TranAppRemoteImpl";
    private TranAospAppRemoteImpl mAospService;
    private TranThubAppRemoteImpl mThubService;

    private static void requireNonNull(Object... objArr) {
        for (Object obj : objArr) {
            if (obj == null) {
                throw new IllegalArgumentException("argument cannot be null");
            }
        }
    }

    public boolean finishCurrentAnimation() {
        return getService(TranVersion.Core.VERSION_33511).finishCurrentAnimation();
    }

    public ITranAppRemoteImplAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubAppRemoteImpl tranThubAppRemoteImpl = this.mThubService;
            if (tranThubAppRemoteImpl != null) {
                return tranThubAppRemoteImpl;
            }
            TranThubAppRemoteImpl tranThubAppRemoteImpl2 = new TranThubAppRemoteImpl();
            this.mThubService = tranThubAppRemoteImpl2;
            return tranThubAppRemoteImpl2;
        }
        TranSdkLog.i(TAG, "TranAospAppRemoteImpl");
        TranAospAppRemoteImpl tranAospAppRemoteImpl = this.mAospService;
        if (tranAospAppRemoteImpl != null) {
            return tranAospAppRemoteImpl;
        }
        TranAospAppRemoteImpl tranAospAppRemoteImpl2 = new TranAospAppRemoteImpl();
        this.mAospService = tranAospAppRemoteImpl2;
        return tranAospAppRemoteImpl2;
    }

    public boolean isSupported() {
        return getService(TranVersion.Core.VERSION_33511).isSupported();
    }

    public Object newAnimationCallback() {
        return getService(TranVersion.Core.VERSION_33511).newAnimationCallback();
    }

    public boolean setAppRemoteView(View view, Context context, Bundle bundle, Object obj) {
        requireNonNull(view, context);
        return getService(TranVersion.Core.VERSION_33511).setAppRemoteView(view, context, bundle, obj);
    }

    public void skipBackAnim(Activity activity) {
        requireNonNull(activity);
        getService(TranVersion.Core.VERSION_33511).skipBackAnim(activity);
    }

    public void startActivity(Activity activity, Intent intent, View view) {
        requireNonNull(activity, intent, view);
        getService(TranVersion.Core.VERSION_33511).startActivity(activity, intent, view);
    }

    public void startActivityAsUser(Activity activity, Intent intent, UserHandle userHandle, View view) {
        requireNonNull(activity, intent, userHandle, view);
        getService(TranVersion.Core.VERSION_33511).startActivityAsUser(activity, intent, userHandle, view);
    }

    public void startActivityForResult(Activity activity, Intent intent, int i, View view) {
        requireNonNull(activity, intent, view);
        getService(TranVersion.Core.VERSION_33511).startActivityForResult(activity, intent, i, view);
    }

    public void startActivity(Activity activity, Intent intent, Bundle bundle, View view, Bundle bundle2, Object obj) {
        requireNonNull(activity, intent, view);
        getService(TranVersion.Core.VERSION_33511).startActivity(activity, intent, bundle, view, bundle2, obj);
    }

    public void startActivityAsUser(Activity activity, Intent intent, UserHandle userHandle, Bundle bundle, View view, Bundle bundle2, Object obj) {
        requireNonNull(activity, intent, userHandle, view);
        getService(TranVersion.Core.VERSION_33511).startActivityAsUser(activity, intent, userHandle, bundle, view, bundle2, obj);
    }

    public void startActivityForResult(Activity activity, Intent intent, int i, Bundle bundle, View view, Bundle bundle2, Object obj) {
        requireNonNull(activity, intent, view);
        getService(TranVersion.Core.VERSION_33511).startActivityForResult(activity, intent, i, bundle, view, bundle2, obj);
    }
}
