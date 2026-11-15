package com.transsion.hubsdk.aosp.view;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.view.ITranDisplayCutoutManagerAdapter;
import java.lang.reflect.Method;
import java.util.Map;

public class TranAospDisplayCutoutManager implements ITranDisplayCutoutManagerAdapter {
    private static final Class<?> CLASS;
    private static final Object INSTANCE;
    private static final Method METHOD_getDisplayCutoutModeSettings;
    private static final Method METHOD_instance;
    private static final Method METHOD_putDisplayCutoutModeSettings;

    static {
        Class<?> cls = TranDoorMan.getClass("com.transsion.view.DisplayCutoutManager");
        CLASS = cls;
        METHOD_getDisplayCutoutModeSettings = TranDoorMan.getMethod(cls, "getDisplayCutoutModeSettings", new Class[0]);
        METHOD_putDisplayCutoutModeSettings = TranDoorMan.getMethod(cls, "putDisplayCutoutModeSettings", Map.class);
        Method method = TranDoorMan.getMethod(cls, "instance", new Class[0]);
        METHOD_instance = method;
        INSTANCE = TranDoorMan.invokeMethod(method, null, new Object[0]);
    }

    @Override
    public void clean() {
    }

    @Override
    public Map<String, Integer> getDisplayCutoutModeSettings() {
        return (Map) TranDoorMan.invokeMethod(METHOD_getDisplayCutoutModeSettings, INSTANCE, new Object[0]);
    }

    @Override
    public void putDisplayCutoutModeSettings(Map<String, Integer> map) {
        TranDoorMan.invokeMethod(METHOD_putDisplayCutoutModeSettings, INSTANCE, map);
    }
}
