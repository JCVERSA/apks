package com.transsion.hubsdk.aosp.view;

import android.view.ViewConfiguration;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.view.ITranViewConfigurationAdapter;
import java.lang.reflect.Method;

public class TranAospViewConfiguration implements ITranViewConfigurationAdapter {
    @Override
    public int getHoverTapSlop() {
        Method method = TranDoorMan.getMethod(ViewConfiguration.class, "getHoverTapSlop", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, null, new Object[0])).intValue();
        }
        return 20;
    }

    @Override
    public int getHoverTapTimeout() {
        Method method = TranDoorMan.getMethod(ViewConfiguration.class, "getHoverTapTimeout", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, null, new Object[0])).intValue();
        }
        return 150;
    }
}
