package com.transsion.hubsdk.aosp.view;

import android.view.Display;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.view.ITranDisplayAddressAdapter;

public class TranAospDisplayAddress implements ITranDisplayAddressAdapter {
    @Override
    public long getPhysicalDisplayId(Display display) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(display.getClass(), "getAddress", new Class[0]), display, new Object[0]);
        return ((Long) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getPhysicalDisplayId", new Class[0]), objInvokeMethod, new Object[0])).longValue();
    }
}
