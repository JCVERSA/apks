package com.transsion.hubsdk.aosp.hardware.display;

import android.content.Context;
import android.os.Bundle;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.hardware.display.ITranColorDisplayManagerAdapter;

public class TranAospColorDisplayManager implements ITranColorDisplayManagerAdapter {
    private static final String TAG = "TranAospColorDisplayManager";
    private static Class<?> sClassName = TranDoorMan.getClass("android.hardware.display.ColorDisplayManager");
    private Object mInstanceObject = getInstanceObject();

    private Object getInstanceObject() {
        if (this.mInstanceObject == null) {
            try {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[0]).newInstance(null);
            } catch (Exception e) {
                TranSdkLog.e(TAG, "newInstance fail :" + e);
            }
        }
        return this.mInstanceObject;
    }

    @Override
    public int getMaximumColorTemperature(Context context) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getMaximumColorTemperature", Context.class), this.mInstanceObject, context);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public int getMinimumColorTemperature(Context context) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getMinimumColorTemperature", Context.class), this.mInstanceObject, context);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public int getNightDisplayColorTemperature() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getNightDisplayColorTemperature", new Class[0]), this.mInstanceObject, new Object[0]);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public boolean isNightDisplayActivated() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "isNightDisplayActivated", new Class[0]), this.mInstanceObject, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isNightDisplayAvailable(Context context) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "isNightDisplayAvailable", Context.class), this.mInstanceObject, context);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @VisibleForTesting
    public void setClassObject(Object obj) {
        this.mInstanceObject = obj;
    }

    @Override
    public void setEyeCareEnabled(String str, int i, boolean z, int i2, int i3, Bundle bundle) {
        Class<?> cls = sClassName;
        Class cls2 = Integer.TYPE;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setEyeCareEnabled", String.class, cls2, Boolean.TYPE, cls2, cls2, Bundle.class), this.mInstanceObject, str, Integer.valueOf(i), Boolean.valueOf(z), Integer.valueOf(i2), Integer.valueOf(i3), bundle);
    }

    @Override
    public boolean setNightDisplayActivated(boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "setNightDisplayActivated", Boolean.TYPE), this.mInstanceObject, Boolean.valueOf(z));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean setNightDisplayColorTemperature(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "setNightDisplayColorTemperature", Integer.TYPE), this.mInstanceObject, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }
}
