package com.transsion.hubsdk.aosp.app;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranFollowDisplayOrientationManagerAdapter;
import java.lang.reflect.Method;

public class TranAospFollowDisplayOrientationManager implements ITranFollowDisplayOrientationManagerAdapter {
    private static Class<?> sClassName = TranDoorMan.getClass("com.transsion.appsettings.FollowDisplayOrientationManager");

    private Object getInstance() {
        Method method;
        Class<?> cls = sClassName;
        if (cls == null || (method = TranDoorMan.getMethod(cls, "instance", new Class[0])) == null) {
            return null;
        }
        return TranDoorMan.invokeMethod(method, null, new Object[0]);
    }

    @Override
    public void commit() {
        Method method;
        Object tranAospFollowDisplayOrientationManager = getInstance();
        if (tranAospFollowDisplayOrientationManager == null || (method = TranDoorMan.getMethod(tranAospFollowDisplayOrientationManager.getClass(), "commit", new Class[0])) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, tranAospFollowDisplayOrientationManager, new Object[0]);
    }

    @Override
    public int getFollowDisplayOrientionType(String str) {
        Method method;
        Object objInvokeMethod;
        Object tranAospFollowDisplayOrientationManager = getInstance();
        if (tranAospFollowDisplayOrientationManager == null || (method = TranDoorMan.getMethod(tranAospFollowDisplayOrientationManager.getClass(), "getFollowDisplayOrientionType", String.class)) == null || (objInvokeMethod = TranDoorMan.invokeMethod(method, tranAospFollowDisplayOrientationManager, str)) == null) {
            return -2;
        }
        return ((Integer) objInvokeMethod).intValue();
    }

    @Override
    public void init() {
        Method method;
        Object tranAospFollowDisplayOrientationManager = getInstance();
        if (tranAospFollowDisplayOrientationManager == null || (method = TranDoorMan.getMethod(tranAospFollowDisplayOrientationManager.getClass(), "init", new Class[0])) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, tranAospFollowDisplayOrientationManager, new Object[0]);
    }

    @Override
    public boolean isEnabledPackage(String str) {
        Method method;
        Object tranAospFollowDisplayOrientationManager = getInstance();
        if (tranAospFollowDisplayOrientationManager == null || (method = TranDoorMan.getMethod(tranAospFollowDisplayOrientationManager.getClass(), "isEnabledPackage", String.class)) == null) {
            return false;
        }
        return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, tranAospFollowDisplayOrientationManager, str));
    }

    @Override
    public Object setEnabledPackage(String str, boolean z) {
        Method method;
        Object tranAospFollowDisplayOrientationManager = getInstance();
        if (tranAospFollowDisplayOrientationManager == null || (method = TranDoorMan.getMethod(tranAospFollowDisplayOrientationManager.getClass(), "setEnabledPackage", String.class, Boolean.TYPE)) == null) {
            return null;
        }
        return TranDoorMan.invokeMethod(method, tranAospFollowDisplayOrientationManager, str, Boolean.valueOf(z));
    }

    @Override
    public Object setFollowDisplayOrientationType(String str, int i) {
        Method method;
        Object tranAospFollowDisplayOrientationManager = getInstance();
        if (tranAospFollowDisplayOrientationManager == null || (method = TranDoorMan.getMethod(tranAospFollowDisplayOrientationManager.getClass(), "setFollowDisplayOrientationType", String.class, Integer.TYPE)) == null) {
            return null;
        }
        return TranDoorMan.invokeMethod(method, tranAospFollowDisplayOrientationManager, str, Integer.valueOf(i));
    }
}
