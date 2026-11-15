package com.transsion.hubsdk.aosp.content.pm;

import android.content.pm.ApplicationInfo;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.content.pm.ITranApplicationInfoManagerAdapter;
import java.lang.reflect.Field;

public class TranAospApplicationInfo implements ITranApplicationInfoManagerAdapter {
    private static final String TAG = "TranAospApplicationInfo";
    private static Class<?> sClassName = TranDoorMan.getClass("android.content.pm.ApplicationInfo");

    @Override
    public int getIconRes(ApplicationInfo applicationInfo) {
        Field field = TranDoorMan.getField(applicationInfo.getClass(), "iconRes");
        if (field != null) {
            return ((Integer) TranDoorMan.getFieldValue(field, applicationInfo)).intValue();
        }
        return -1;
    }

    @Override
    public boolean isDirectBootAware(ApplicationInfo applicationInfo) {
        return Boolean.TRUE.equals(TranDoorMan.invokeMethod(TranDoorMan.getMethod(applicationInfo.getClass(), "isDirectBootAware", new Class[0]), applicationInfo, new Object[0]));
    }

    @Override
    public boolean isInstantApp(ApplicationInfo applicationInfo) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(applicationInfo.getClass(), "isInstantApp", new Class[0]), applicationInfo, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isPartiallyDirectBootAware(ApplicationInfo applicationInfo) {
        return Boolean.TRUE.equals(TranDoorMan.invokeMethod(TranDoorMan.getMethod(applicationInfo.getClass(), "isPartiallyDirectBootAware", new Class[0]), applicationInfo, new Object[0]));
    }

    @Override
    public boolean isPrivilegedApp(ApplicationInfo applicationInfo) {
        return Boolean.TRUE.equals(TranDoorMan.invokeMethod(TranDoorMan.getMethod(applicationInfo.getClass(), "isPrivilegedApp", new Class[0]), applicationInfo, new Object[0]));
    }

    @Override
    public boolean isProduct(ApplicationInfo applicationInfo) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "isProduct", new Class[0]), applicationInfo, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isSignedWithPlatformKey(ApplicationInfo applicationInfo) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "isSignedWithPlatformKey", new Class[0]), applicationInfo, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isSystemApp(ApplicationInfo applicationInfo) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "isSystemApp", new Class[0]), applicationInfo, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isSystemExt(ApplicationInfo applicationInfo) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "isSystemExt", new Class[0]), applicationInfo, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }
}
