package com.transsion.hubsdk.aosp.window;

import android.os.IBinder;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.window.ITranDisplayRotationAdapter;
import java.lang.reflect.Method;

public class TranAospDisplayRotationManager implements ITranDisplayRotationAdapter {
    @Override
    public void onNotifySaveRotation(int i) {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return;
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "display_rotation");
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.window.ITranDisplayRotationManager$Stub");
        if (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "onNotifySaveRotation", Integer.TYPE), objInvokeMethod, Integer.valueOf(i));
    }
}
