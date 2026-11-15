package com.transsion.hubsdk.core.content.pm;

import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import com.transsion.hubsdk.content.pm.TranPackageItemInfo;
import com.transsion.hubsdk.interfaces.content.pm.ITranPackageItemInfo;

public class TranThubPackageItemInfo implements ITranPackageItemInfo {
    private TranPackageItemInfo mTranPackageItemInfo;

    public TranThubPackageItemInfo() {
        this.mTranPackageItemInfo = null;
        this.mTranPackageItemInfo = new TranPackageItemInfo();
    }

    @Override
    public CharSequence loadSafeLabel(PackageItemInfo packageItemInfo, PackageManager packageManager, float f, int i) {
        return this.mTranPackageItemInfo.loadSafeLabel(packageItemInfo, packageManager, f, i);
    }
}
