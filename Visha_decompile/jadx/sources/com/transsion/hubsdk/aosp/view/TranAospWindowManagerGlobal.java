package com.transsion.hubsdk.aosp.view;

import android.os.IBinder;
import com.transsion.hubsdk.aosp.statusbar.TranAospStatusBarManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranWindowManagerGlobalAdapter;
import java.lang.reflect.Method;

public class TranAospWindowManagerGlobal implements ITranWindowManagerGlobalAdapter {
    private static final String TAG = TranAospStatusBarManager.class.getSimpleName();
    private static Class<?> sClassName = TranDoorMan.getClass("android.view.WindowManagerGlobal");

    @Override
    public void closeAll(IBinder iBinder, String str, String str2) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "getInstance", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, null);
            Method method2 = TranDoorMan.getMethod(sClassName, "closeAll", IBinder.class, String.class, String.class);
            method2.setAccessible(true);
            method2.invoke(objInvoke, iBinder, str, str2);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "closeAll fail " + th);
        }
    }
}
