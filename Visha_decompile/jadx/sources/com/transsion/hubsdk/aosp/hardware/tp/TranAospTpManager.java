package com.transsion.hubsdk.aosp.hardware.tp;

import android.os.IBinder;
import com.transsion.hubsdk.api.hardware.tp.TranTpManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.hardware.tp.ITranTpManagerAdapter;
import java.lang.reflect.Method;

public class TranAospTpManager implements ITranTpManagerAdapter {
    private static final String EXCEPTION_MESSAGE = "TP cannot implement, please implement yourself";

    private Object getBinderObject() {
        Method method;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls != null && (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) != null) {
            IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "trantp");
            Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.hardware.tp.ITranTpManager$Stub");
            if (iBinder != null && cls2 != null) {
                return TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder);
            }
        }
        return null;
    }

    @Override
    public String getValue(int i) throws TranThubIncompatibleException {
        Method method;
        Object binderObject = getBinderObject();
        if (binderObject == null || (method = TranDoorMan.getMethod(binderObject.getClass(), "getValue", Integer.TYPE)) == null) {
            return null;
        }
        return (String) TranDoorMan.invokeMethod(method, binderObject, Integer.valueOf(i));
    }

    @Override
    public void registerCallback(int i, TranTpManager.TranTpCallback tranTpCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException(EXCEPTION_MESSAGE);
    }

    @Override
    public boolean setValue(int i, String str) throws TranThubIncompatibleException {
        Method method;
        Object binderObject = getBinderObject();
        if (binderObject == null || (method = TranDoorMan.getMethod(binderObject.getClass(), "setValue", Integer.TYPE, String.class)) == null) {
            return false;
        }
        return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, binderObject, Integer.valueOf(i), str));
    }

    @Override
    public void unregisterCallback(TranTpManager.TranTpCallback tranTpCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException(EXCEPTION_MESSAGE);
    }
}
