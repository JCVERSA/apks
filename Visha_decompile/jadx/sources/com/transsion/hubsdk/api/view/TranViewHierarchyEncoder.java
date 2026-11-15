package com.transsion.hubsdk.api.view;

import com.transsion.hubsdk.common.reflect.TranDoorMan;

public class TranViewHierarchyEncoder {
    public void addProperty(Object obj, String str, String str2) {
        if (obj != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(obj.getClass(), "addProperty", String.class, String.class), obj, str, str2);
        }
    }

    public void addProperty(Object obj, String str, boolean z) {
        if (obj != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(obj.getClass(), "addProperty", String.class, Boolean.TYPE), obj, str, Boolean.valueOf(z));
        }
    }
}
