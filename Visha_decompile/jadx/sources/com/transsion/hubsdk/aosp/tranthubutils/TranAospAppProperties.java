package com.transsion.hubsdk.aosp.tranthubutils;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.tranthubutils.ITranAppPropertiesAdapter;

public class TranAospAppProperties implements ITranAppPropertiesAdapter {
    private static Class sClass = TranDoorMan.getClass("com.transsion.hubsdk.tranthubutils.TranAppProperties");

    @Override
    public String get(String str) {
        Class cls = sClass;
        return cls == null ? "" : (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "get", String.class), sClass, str);
    }

    @Override
    public boolean getBoolean(String str, boolean z) {
        Class cls = sClass;
        if (cls == null) {
            return false;
        }
        return Boolean.TRUE.equals(TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getBoolean", String.class, Boolean.TYPE), sClass, str, Boolean.valueOf(z)));
    }

    @Override
    public void initialize(String str) {
        Class cls = sClass;
        if (cls == null) {
            return;
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "initialize", String.class), sClass, str);
    }
}
