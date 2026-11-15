package com.transsion.hubsdk.aosp.content.pm;

import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.content.pm.ITranPackageItemInfo;

public class TranAospPackageItemInfo implements ITranPackageItemInfo {
    private static final String TAG = "TranAospPackageItemInfo";
    private static Class<?> sClassName = TranDoorMan.getClass("android.content.pm.PackageItemInfo");

    @Override
    public CharSequence loadSafeLabel(PackageItemInfo packageItemInfo, PackageManager packageManager, float f, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "loadSafeLabel", PackageManager.class, Float.TYPE, Integer.TYPE), packageItemInfo, packageManager, Float.valueOf(f), Integer.valueOf(i));
        if (objInvokeMethod instanceof CharSequence) {
            return (CharSequence) objInvokeMethod;
        }
        return null;
    }
}
