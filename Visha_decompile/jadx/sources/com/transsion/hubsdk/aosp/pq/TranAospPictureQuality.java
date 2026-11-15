package com.transsion.hubsdk.aosp.pq;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.pq.ITranPictureQualityAdapter;
import java.lang.reflect.Method;

public class TranAospPictureQuality implements ITranPictureQualityAdapter {
    private static final String TAG = "TranAospPictureQuality";
    private static Class<?> sClassName = TranDoorMan.getClass("com.mediatek.pq.PictureQuality");

    @Override
    public void enableC3D(boolean z) {
        Method method = TranDoorMan.getMethod(sClassName, "setAALFunction", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, Boolean.valueOf(z));
        }
    }

    @Override
    public int getAALFunction() {
        Method method = TranDoorMan.getMethod(sClassName, "getAALFunction", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, null, new Object[0])).intValue();
        }
        return -1;
    }

    @Override
    public int getGammaIndex() {
        try {
            return ((Integer) TranDoorMan.getMethod(sClassName, "getGammaIndex", new Class[0]).invoke(null, null)).intValue();
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getGammaIndex " + e.toString());
            return 0;
        }
    }

    @Override
    public int getPictureMode() {
        try {
            return ((Integer) TranDoorMan.getMethod(sClassName, "getPictureMode", new Class[0]).invoke(null, null)).intValue();
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getPictureMode " + e.toString());
            return 0;
        }
    }

    @Override
    public void setAALFunction(int i) {
        Method method = TranDoorMan.getMethod(sClassName, "setAALFunction", Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, Integer.valueOf(i));
        }
    }

    @Override
    public void setGammaIndex(int i) {
        try {
            TranDoorMan.getMethod(sClassName, "setGammaIndex", Integer.TYPE).invoke(null, Integer.valueOf(i));
        } catch (Exception e) {
            TranSdkLog.e(TAG, "setGammaIndex " + e.toString());
        }
    }

    @Override
    public void setPictureMode(int i) {
        try {
            TranDoorMan.getMethod(sClassName, "setPictureMode", Integer.TYPE).invoke(null, Integer.valueOf(i));
        } catch (Exception e) {
            TranSdkLog.e(TAG, "setPictureMode " + e.toString());
        }
    }

    @Override
    public void setSmartBacklightStrength(int i) {
        Method method = TranDoorMan.getMethod(sClassName, "setSmartBacklightStrength", Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, Integer.valueOf(i));
        }
    }
}
