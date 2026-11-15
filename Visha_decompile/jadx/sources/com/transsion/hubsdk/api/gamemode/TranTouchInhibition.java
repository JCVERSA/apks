package com.transsion.hubsdk.api.gamemode;

import android.content.Context;
import android.graphics.Rect;
import com.transsion.hubsdk.aosp.gamemode.TranAospTouchInhibition;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.gamemode.TranThubTouchInhibition;
import com.transsion.hubsdk.interfaces.gamemode.ITranTouchInhibitionAdapter;

public class TranTouchInhibition {
    private static final String TAG = "TranTouchInhibition";
    private TranAospTouchInhibition mAospService;
    private final Context mContext;
    private TranThubTouchInhibition mThubService;

    public TranTouchInhibition(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        this.mContext = context.getApplicationContext();
    }

    public boolean acquire() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33511).acquire();
        }
        return false;
    }

    public void clear() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33511).clear();
        }
    }

    public ITranTouchInhibitionAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubTouchInhibition tranThubTouchInhibition = this.mThubService;
            if (tranThubTouchInhibition != null) {
                return tranThubTouchInhibition;
            }
            TranThubTouchInhibition tranThubTouchInhibition2 = new TranThubTouchInhibition(this.mContext);
            this.mThubService = tranThubTouchInhibition2;
            return tranThubTouchInhibition2;
        }
        TranSdkLog.i(TAG, "TranAospTouchInhibition");
        TranAospTouchInhibition tranAospTouchInhibition = this.mAospService;
        if (tranAospTouchInhibition != null) {
            return tranAospTouchInhibition;
        }
        TranAospTouchInhibition tranAospTouchInhibition2 = new TranAospTouchInhibition(this.mContext);
        this.mAospService = tranAospTouchInhibition2;
        return tranAospTouchInhibition2;
    }

    public void inhibit(Rect rect, int i) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            if (rect == null) {
                throw new IllegalArgumentException("region cannot be null");
            }
            getService(TranVersion.Core.VERSION_33511).inhibit(rect, i);
        }
    }

    public void release() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33511).release();
        }
    }

    public void submit() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33511).submit();
        }
    }

    public void inhibit(Rect rect, int i, int i2) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            if (rect != null) {
                getService(TranVersion.Core.VERSION_33511).inhibit(rect, i, i2);
                return;
            }
            throw new IllegalArgumentException("region cannot be null");
        }
    }
}
