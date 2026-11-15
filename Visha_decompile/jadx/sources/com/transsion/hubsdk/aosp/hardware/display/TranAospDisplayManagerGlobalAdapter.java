package com.transsion.hubsdk.aosp.hardware.display;

import android.view.Display;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.hardware.display.ITranDisplayManagerGlobalAdapter;
import java.lang.reflect.Method;

public class TranAospDisplayManagerGlobalAdapter implements ITranDisplayManagerGlobalAdapter {
    @Override
    public Display getRealDisplay(int i) {
        Object objInvokeMethod;
        Method method;
        Method method2 = TranDoorMan.getMethod(TranDoorMan.getClass("android.hardware.display.DisplayManagerGlobal"), "getInstance", new Class[0]);
        if (method2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(method2, null, new Object[0])) == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getRealDisplay", Integer.TYPE)) == null) {
            return null;
        }
        return (Display) TranDoorMan.invokeMethod(method, objInvokeMethod, Integer.valueOf(i));
    }
}
