package com.transsion.hubsdk.aosp.app;

import android.content.res.Configuration;
import android.graphics.Rect;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranWindowConfigurationAdapter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class TranAospWindowConfiguration implements ITranWindowConfigurationAdapter {
    private static final String TAG = "TranAospWindowConfiguration";
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.WindowConfiguration");

    @Override
    public Rect getBounds(Configuration configuration) {
        Object fieldValue = TranDoorMan.getFieldValue(TranDoorMan.getField(configuration.getClass(), "windowConfiguration"), configuration);
        if (fieldValue != null) {
            return (Rect) TranDoorMan.invokeMethod(TranDoorMan.getMethod(fieldValue.getClass(), "getBounds", new Class[0]), fieldValue, new Object[0]);
        }
        return null;
    }

    @Override
    public int getMultiWindowingId(Configuration configuration) {
        Object fieldValue;
        Method method;
        Method method2 = TranDoorMan.getMethod(configuration.getClass(), "getMultiWindowingId", new Class[0]);
        if (method2 != null) {
            return ((Integer) TranDoorMan.invokeMethod(method2, configuration, new Object[0])).intValue();
        }
        Field field = TranDoorMan.getField(configuration.getClass(), "windowConfiguration");
        if (field == null || (fieldValue = TranDoorMan.getFieldValue(field, configuration)) == null || (method = TranDoorMan.getMethod(fieldValue.getClass(), "getMultiWindowingId", new Class[0])) == null) {
            return 0;
        }
        return ((Integer) TranDoorMan.invokeMethod(method, fieldValue, new Object[0])).intValue();
    }

    @Override
    public int getMultiWindowingMode(Configuration configuration) {
        Object fieldValue;
        Method method;
        Method method2 = TranDoorMan.getMethod(configuration.getClass(), "getMultiWindowingMode", new Class[0]);
        if (method2 != null) {
            return ((Integer) TranDoorMan.invokeMethod(method2, configuration, new Object[0])).intValue();
        }
        Field field = TranDoorMan.getField(configuration.getClass(), "windowConfiguration");
        if (field == null || (fieldValue = TranDoorMan.getFieldValue(field, configuration)) == null || (method = TranDoorMan.getMethod(fieldValue.getClass(), "getMultiWindowingMode", new Class[0])) == null) {
            return 0;
        }
        return ((Integer) TranDoorMan.invokeMethod(method, fieldValue, new Object[0])).intValue();
    }

    @Override
    public boolean inMultiWindowMode(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "inMultiWindowMode", Integer.TYPE), null, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isThunderbackWindow(Configuration configuration) {
        Object fieldValue;
        Method method;
        Method method2 = TranDoorMan.getMethod(configuration.getClass(), "isThunderbackWindow", new Class[0]);
        if (method2 != null) {
            Object objInvokeMethod = TranDoorMan.invokeMethod(method2, configuration, new Object[0]);
            if (objInvokeMethod instanceof Boolean) {
                return ((Boolean) objInvokeMethod).booleanValue();
            }
            return false;
        }
        Field field = TranDoorMan.getField(configuration.getClass(), "windowConfiguration");
        if (field == null || (fieldValue = TranDoorMan.getFieldValue(field, configuration)) == null || (method = TranDoorMan.getMethod(fieldValue.getClass(), "isThunderbackWindow", new Class[0])) == null) {
            return false;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(method, fieldValue, new Object[0]);
        if (objInvokeMethod2 instanceof Boolean) {
            return ((Boolean) objInvokeMethod2).booleanValue();
        }
        return false;
    }
}
