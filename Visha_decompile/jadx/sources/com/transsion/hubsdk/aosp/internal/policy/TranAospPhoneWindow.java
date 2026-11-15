package com.transsion.hubsdk.aosp.internal.policy;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.internal.policy.ITranPhoneWindowAdapter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class TranAospPhoneWindow implements ITranPhoneWindowAdapter {
    private static final String TAG = "TranAospPhoneWindow";
    private static Class<?> sClassName = TranDoorMan.getClass("com.android.internal.policy.PhoneWindow");
    private Object mPhoneWindow;

    public TranAospPhoneWindow(Context context) {
        try {
            Constructor constructor = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class});
            constructor.setAccessible(true);
            this.mPhoneWindow = constructor.newInstance(context);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "TranAospPhoneWindow fail" + th);
        }
    }

    @Override
    public View getDecorView() {
        try {
            if (this.mPhoneWindow != null) {
                Method method = TranDoorMan.getMethod(sClassName, "getDecorView", new Class[0]);
                method.setAccessible(true);
                Object objInvoke = method.invoke(this.mPhoneWindow, null);
                if (objInvoke == null || !(objInvoke instanceof View)) {
                    return null;
                }
                return (View) objInvoke;
            }
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getDecorView fail" + th);
        }
        return null;
    }

    @Override
    public boolean requestFeature(int i) {
        try {
            if (this.mPhoneWindow != null) {
                Method method = TranDoorMan.getMethod(sClassName, "requestFeature", Integer.TYPE);
                method.setAccessible(true);
                Object objInvoke = method.invoke(this.mPhoneWindow, Integer.valueOf(i));
                if (objInvoke == null || !(objInvoke instanceof Boolean)) {
                    return false;
                }
                return ((Boolean) objInvoke).booleanValue();
            }
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "requestFeature fail" + th);
        }
        return false;
    }

    @Override
    public void setBackgroundDrawableResource(int i) {
        Class cls = TranDoorMan.getClass("android.view.Window");
        try {
            if (this.mPhoneWindow != null) {
                Method method = TranDoorMan.getMethod(cls, "setBackgroundDrawableResource", Integer.TYPE);
                method.setAccessible(true);
                method.invoke(this.mPhoneWindow, Integer.valueOf(i));
            }
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setBackgroundDrawableResource fail:" + th);
        }
    }

    @Override
    public void setWindowManager(WindowManager windowManager, IBinder iBinder, String str) {
        try {
            if (this.mPhoneWindow != null) {
                Method method = TranDoorMan.getMethod(sClassName, "setWindowManager", WindowManager.class, IBinder.class, String.class);
                method.setAccessible(true);
                method.invoke(this.mPhoneWindow, windowManager, iBinder, str);
            }
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setWindowManager fail" + th);
        }
    }
}
