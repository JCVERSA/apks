package com.transsion.hubsdk.api.content.pm;

import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import com.transsion.hubsdk.aosp.content.pm.TranAospPackageItemInfo;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.content.pm.TranThubPackageItemInfo;
import com.transsion.hubsdk.interfaces.content.pm.ITranPackageItemInfo;

public class TranPackageItemInfo {
    private static final String TAG = "TranPackageItemInfo";
    private TranAospPackageItemInfo mAospService;
    private TranThubPackageItemInfo mThubService;

    public ITranPackageItemInfo getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubPackageItemInfo");
            TranThubPackageItemInfo tranThubPackageItemInfo = this.mThubService;
            if (tranThubPackageItemInfo != null) {
                return tranThubPackageItemInfo;
            }
            TranThubPackageItemInfo tranThubPackageItemInfo2 = new TranThubPackageItemInfo();
            this.mThubService = tranThubPackageItemInfo2;
            return tranThubPackageItemInfo2;
        }
        TranSdkLog.i(TAG, "TranAospPackageItemInfo");
        TranAospPackageItemInfo tranAospPackageItemInfo = this.mAospService;
        if (tranAospPackageItemInfo != null) {
            return tranAospPackageItemInfo;
        }
        TranAospPackageItemInfo tranAospPackageItemInfo2 = new TranAospPackageItemInfo();
        this.mAospService = tranAospPackageItemInfo2;
        return tranAospPackageItemInfo2;
    }

    public CharSequence loadSafeLabel(PackageItemInfo packageItemInfo, PackageManager packageManager, float f, int i) {
        return getService(TranVersion.Core.VERSION_33161).loadSafeLabel(packageItemInfo, packageManager, f, i);
    }
}
