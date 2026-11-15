package com.transsion.hubsdk.api.graphics;

import android.graphics.drawable.VectorDrawable;
import com.transsion.hubsdk.aosp.graphics.TranAospVectorDrawable;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.graphics.TranThubVectorDrawable;
import com.transsion.hubsdk.interfaces.graphics.ITranVectorDrawableAdapter;

public class TranVectorDrawable {
    private static final String TAG = "TranVectorDrawable";
    private static TranAospVectorDrawable sAospService;
    private static TranThubVectorDrawable sThubService;

    public static ITranVectorDrawableAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubVectorDrawable tranThubVectorDrawable = sThubService;
            if (tranThubVectorDrawable != null) {
                return tranThubVectorDrawable;
            }
            TranThubVectorDrawable tranThubVectorDrawable2 = new TranThubVectorDrawable();
            sThubService = tranThubVectorDrawable2;
            return tranThubVectorDrawable2;
        }
        TranSdkLog.i(TAG, "TranAospVectorDrawable");
        TranAospVectorDrawable tranAospVectorDrawable = sAospService;
        if (tranAospVectorDrawable != null) {
            return tranAospVectorDrawable;
        }
        TranAospVectorDrawable tranAospVectorDrawable2 = new TranAospVectorDrawable();
        sAospService = tranAospVectorDrawable2;
        return tranAospVectorDrawable2;
    }

    public boolean updateIconColor(VectorDrawable vectorDrawable, int i, int i2, int i3, String str) {
        if (!TranThubVersionUtil.isRecentAndroidT()) {
            return false;
        }
        if (vectorDrawable != null) {
            return getService(TranVersion.Core.VERSION_33371).updateIconColor(vectorDrawable, i, i2, i3, str);
        }
        throw new NullPointerException("VectorDrawable is null");
    }
}
