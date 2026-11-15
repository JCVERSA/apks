package com.transsion.hubsdk.aosp.os;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.os.ITranProcessAdapter;
import java.lang.reflect.Method;

public class TranAospProcess implements ITranProcessAdapter {
    private static final String TAG = "TranAospProcess";

    @Override
    public String getAllCpuLoading() {
        try {
            Method method = TranDoorMan.getMethod(TranDoorMan.getClass("android.os.Process"), "getAllCpuLoading", new Class[0]);
            if (method == null) {
                return "";
            }
            Object objInvoke = method.invoke(null, null);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getAllCpuLoading fail:" + th);
            return null;
        }
    }

    @Override
    public double getCpuInfo() {
        try {
            Method method = TranDoorMan.getMethod(TranDoorMan.getClass("android.os.Process"), "getCpuInfo", new Class[0]);
            if (method == null) {
                return -1.0d;
            }
            Object objInvoke = method.invoke(null, null);
            if (objInvoke instanceof Double) {
                return ((Double) objInvoke).doubleValue();
            }
            return -1.0d;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getCpuInfo fail:" + th);
            return -1.0d;
        }
    }
}
