package com.transsion.hubsdk.aosp.content.om;

import android.os.IBinder;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.content.om.ITranOverlayManagerAdapter;

public class TranAospOverlayManager implements ITranOverlayManagerAdapter {
    private static final String TAG = "TranAospOverlayManager";
    private static Class<?> sClassServiceManager = TranDoorMan.getClass("android.os.ServiceManager");
    private static Class<?> sClassIOverlayManager = TranDoorMan.getClass("android.content.om.IOverlayManager$Stub");

    @Override
    public void setEnabled(String str, boolean z, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassIOverlayManager, "asInterface", IBinder.class), null, TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassServiceManager, "getService", String.class), null, "overlay"));
        if (objInvokeMethod != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "setEnabled", String.class, Boolean.TYPE, Integer.TYPE), objInvokeMethod, str, Boolean.valueOf(z), Integer.valueOf(i));
        }
    }

    @Override
    public void setEnabledExclusiveInCategory(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassIOverlayManager, "asInterface", IBinder.class), null, TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassServiceManager, "getService", String.class), null, "overlay"));
        if (objInvokeMethod != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "setEnabledExclusiveInCategory", String.class, Integer.TYPE), objInvokeMethod, str, Integer.valueOf(i));
        }
    }
}
