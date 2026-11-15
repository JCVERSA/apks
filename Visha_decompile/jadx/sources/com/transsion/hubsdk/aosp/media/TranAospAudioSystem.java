package com.transsion.hubsdk.aosp.media;

import android.content.Context;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.media.ITranAudioSystemAdapter;
import java.lang.reflect.Method;

public class TranAospAudioSystem implements ITranAudioSystemAdapter {
    private static final String TAG = "TranAospAudioSystem";
    private static Class<?> sClassName = TranDoorMan.getClass("android.media.AudioSystem");
    private Context mContext = TranHubSdkManager.getContext();

    @Override
    public int getForceUse(int i) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "getForceUse", Integer.TYPE);
            method.setAccessible(true);
            Object objInvokeMethod = TranDoorMan.invokeMethod(method, null, Integer.valueOf(i));
            if (objInvokeMethod == null || !(objInvokeMethod instanceof Integer)) {
                return 0;
            }
            return ((Integer) objInvokeMethod).intValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getForceUse fail " + th);
            return 0;
        }
    }

    @Override
    public String getOutputDeviceName(int i) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "getOutputDeviceName", Integer.TYPE);
            method.setAccessible(true);
            Object objInvokeMethod = TranDoorMan.invokeMethod(method, null, Integer.valueOf(i));
            if (objInvokeMethod == null || !(objInvokeMethod instanceof String)) {
                return null;
            }
            return (String) objInvokeMethod;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getOutputDeviceName fail " + th);
            return null;
        }
    }

    @Override
    public boolean isSourceActive(int i) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "isSourceActive", Integer.TYPE);
            method.setAccessible(true);
            Object objInvoke = method.invoke(Integer.valueOf(i), null);
            if (objInvoke == null || !(objInvoke instanceof Boolean)) {
                return false;
            }
            return ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "isSourceActive fail " + th);
            return false;
        }
    }

    @Override
    public int newAudioSessionId() {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "newAudioSessionId", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, null);
            if (objInvoke == null || !(objInvoke instanceof Integer)) {
                return 0;
            }
            return ((Integer) objInvoke).intValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "newAudioSessionId fail " + th);
            return 0;
        }
    }

    @Override
    public int setForceUse(int i, int i2) {
        try {
            Class<?> cls = sClassName;
            Class cls2 = Integer.TYPE;
            Method method = TranDoorMan.getMethod(cls, "setForceUse", cls2, cls2);
            method.setAccessible(true);
            Object objInvokeMethod = TranDoorMan.invokeMethod(method, null, Integer.valueOf(i), Integer.valueOf(i2));
            if (objInvokeMethod == null || !(objInvokeMethod instanceof Integer)) {
                return 0;
            }
            return ((Integer) objInvokeMethod).intValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setForceUse fail " + th);
            return 0;
        }
    }
}
