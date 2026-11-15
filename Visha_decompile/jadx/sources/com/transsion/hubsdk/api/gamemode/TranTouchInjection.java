package com.transsion.hubsdk.api.gamemode;

import android.content.Context;
import android.os.Bundle;
import com.transsion.hubsdk.aosp.gamemode.TranAospTouchInjection;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.gamemode.TranThubTouchInjection;
import com.transsion.hubsdk.interfaces.gamemode.ITranTouchInjectionAdapter;

public class TranTouchInjection {
    private static final String TAG = "TranTouchInjection";
    private TranAospTouchInjection mAospService;
    private final Context mContext;
    private TranThubTouchInjection mThubService;

    public TranTouchInjection(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        this.mContext = context.getApplicationContext();
    }

    public void closeChannel() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33511).closeChannel();
        }
    }

    public ITranTouchInjectionAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubTouchInjection tranThubTouchInjection = this.mThubService;
            if (tranThubTouchInjection != null) {
                return tranThubTouchInjection;
            }
            TranThubTouchInjection tranThubTouchInjection2 = new TranThubTouchInjection(this.mContext);
            this.mThubService = tranThubTouchInjection2;
            return tranThubTouchInjection2;
        }
        TranSdkLog.i(TAG, "TranAospTouchInjection");
        TranAospTouchInjection tranAospTouchInjection = this.mAospService;
        if (tranAospTouchInjection != null) {
            return tranAospTouchInjection;
        }
        TranAospTouchInjection tranAospTouchInjection2 = new TranAospTouchInjection(this.mContext);
        this.mAospService = tranAospTouchInjection2;
        return tranAospTouchInjection2;
    }

    public boolean inject(int i, int i2, int i3) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).inject(i, i2, i3);
        }
        return false;
    }

    public boolean injectViaChannel(int i, int i2, int i3, int i4) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).injectViaChannel(i, i2, i3, i4);
        }
        return false;
    }

    @Deprecated
    public boolean injectVieChanel(int i, int i2, int i3, int i4) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).injectVieChanel(i, i2, i3, i4);
        }
        return false;
    }

    public void openChannel() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33511).openChannel();
        }
    }

    public boolean inject(int i, int i2) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).inject(i, i2);
        }
        return false;
    }

    public boolean inject(int i, int i2, int i3, Bundle bundle) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).inject(i, i2, i3, bundle);
        }
        return false;
    }

    public boolean inject(int i, int i2, int i3, int i4) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).inject(i, i2, i3, i4);
        }
        return false;
    }

    public boolean inject(int i, int i2, int i3, int i4, Bundle bundle) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).inject(i, i2, i3, i4, bundle);
        }
        return false;
    }
}
