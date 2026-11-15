package com.transsion.hubsdk.aosp.view;

import android.view.DisplayCutout;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.view.ITranDisplayCutoutAdapter;
import java.lang.reflect.Method;
import java.util.List;

public class TranAospDisplayCutout implements ITranDisplayCutoutAdapter {
    @Override
    public boolean isBoundsEmpty(DisplayCutout displayCutout) {
        List list;
        if (TranThubVersionUtil.isRecentAndroidP()) {
            Method method = TranDoorMan.getMethod(displayCutout.getClass(), "getBoundingRects", new Class[0]);
            if (method != null && (list = (List) TranDoorMan.invokeMethod(method, displayCutout, new Object[0])) != null) {
                return list.isEmpty();
            }
        } else {
            Method method2 = TranDoorMan.getMethod(displayCutout.getClass(), "isBoundsEmpty", new Class[0]);
            if (method2 != null) {
                return ((Boolean) TranDoorMan.invokeMethod(method2, displayCutout, new Object[0])).booleanValue();
            }
        }
        return false;
    }
}
