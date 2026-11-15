package com.transsion.hubsdk.aosp.statusbar;

import android.content.Context;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.api.app.ITranStatusBar;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.statusbar.ITranStatusBarManagerAdapter;
import java.lang.reflect.Method;

public class TranAospStatusBarManager implements ITranStatusBarManagerAdapter {
    private static final String TAG = "TranAospStatusBarManager";
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.StatusBarManager");
    private Context mContext = TranHubSdkManager.getContext();
    private Object mInstanceObject;

    @Override
    public void autoStartFullIntent(String str, boolean z, String str2) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "autoStartFullIntent", String.class, Boolean.TYPE, String.class);
            if (method != null) {
                TranDoorMan.invokeMethod(method, this.mInstanceObject, str, Boolean.valueOf(z), str2);
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "autoStartFullIntent fail " + e);
        }
    }

    @Override
    public void collapsePanels() {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "collapsePanels", new Class[0]);
            method.setAccessible(true);
            method.invoke(this.mInstanceObject, null);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "collapsePanels fail " + th);
        }
    }

    @Override
    public void customGesturesEnable(String str, boolean z) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "customGesturesEnable", String.class, Boolean.TYPE);
            if (method != null) {
                TranDoorMan.invokeMethod(method, this.mInstanceObject, str, Boolean.valueOf(z));
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "customGesturesEnable fail " + e);
        }
    }

    @Override
    public void customHeadsUp(String str, boolean z, String str2) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "customHeadsUp", String.class, Boolean.TYPE, String.class);
            if (method != null) {
                TranDoorMan.invokeMethod(method, this.mInstanceObject, str, Boolean.valueOf(z), str2);
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "customHeadsUp fail " + e);
        }
    }

    @Override
    public void customNotificationStyle(String str, boolean z) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "customNotificationStyle", String.class, Boolean.TYPE);
            if (method != null) {
                TranDoorMan.invokeMethod(method, this.mInstanceObject, str, Boolean.valueOf(z));
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "customNotificationStyle fail " + e);
        }
    }

    @Override
    public void customPanelEnable(String str, boolean z) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "customPanelEnable", String.class, Boolean.TYPE);
            if (method != null) {
                TranDoorMan.invokeMethod(method, this.mInstanceObject, str, Boolean.valueOf(z));
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "customPanelEnable fail " + e);
        }
    }

    @Override
    public void disable(int i) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "disable", Integer.TYPE);
            method.setAccessible(true);
            method.invoke(this.mInstanceObject, Integer.valueOf(i));
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "disable fail " + th);
        }
    }

    @Override
    public void disable2(int i) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "disable2", Integer.TYPE);
            method.setAccessible(true);
            method.invoke(this.mInstanceObject, Integer.valueOf(i));
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "disable2 fail " + th);
        }
    }

    @Override
    public void enableAction(String str, String str2, boolean z) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "enableAction", String.class, String.class, Boolean.TYPE);
            if (method != null) {
                TranDoorMan.invokeMethod(method, this.mInstanceObject, str, str2, Boolean.valueOf(z));
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "enableAction fail " + e);
        }
    }

    @Override
    public void enableActionWithUrl(String str, String str2, boolean z, String str3) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "enableActionWithUrl", String.class, String.class, Boolean.TYPE, String.class);
            if (method != null) {
                TranDoorMan.invokeMethod(method, this.mInstanceObject, str, str2, Boolean.valueOf(z), str3);
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "enableActionWithUrl fail " + e);
        }
    }

    @Override
    public void expandNotificationsPanel() {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "expandNotificationsPanel", new Class[0]);
            method.setAccessible(true);
            method.invoke(this.mInstanceObject, null);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "expandNotificationsPanel fail " + th);
        }
    }

    @Override
    public void expandSettingsPanel() {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "expandSettingsPanel", new Class[0]);
            method.setAccessible(true);
            method.invoke(this.mInstanceObject, null);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "expandSettingsPanel fail " + th);
        }
    }

    @Override
    public void onDestoryCallback(String str) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "onDestoryCallback", String.class);
            if (method != null) {
                TranDoorMan.invokeMethod(method, this.mInstanceObject, str);
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "onDestoryCallback fail " + e);
        }
    }

    @Override
    public void registerTranStatusBar(ITranStatusBar iTranStatusBar) {
        TranSdkLog.w(TAG, "can not find method registerTranStatusBar");
    }

    @VisibleForTesting
    public void setClassObject(Object obj) {
        this.mInstanceObject = obj;
    }

    @Override
    public void setIcon(String str, int i, int i2, String str2) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Class<?> cls = this.mInstanceObject.getClass();
            Class cls2 = Integer.TYPE;
            Method method = TranDoorMan.getMethod(cls, "setIcon", String.class, cls2, cls2, String.class);
            method.setAccessible(true);
            method.invoke(this.mInstanceObject, str, Integer.valueOf(i), Integer.valueOf(i2), str2);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setIcon fail " + th);
        }
    }

    @Override
    public void setIconVisibility(String str, boolean z) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "setIconVisibility", String.class, Boolean.TYPE);
            method.setAccessible(true);
            method.invoke(this.mInstanceObject, str, Boolean.valueOf(z));
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setIconVisibility fail " + th);
        }
    }

    @Override
    public void showPinningEscapeToast() {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "showPinningEscapeToast", new Class[0]);
            method.setAccessible(true);
            method.invoke(this.mInstanceObject, null);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "showPinningEscapeToast fail " + th);
        }
    }

    @Override
    public void updateCloseHeadsUp(String str, boolean z, String str2) {
        try {
            if (this.mInstanceObject == null) {
                this.mInstanceObject = TranDoorMan.getConstructor(sClassName, new Class[]{Context.class}).newInstance(this.mContext);
            }
            Method method = TranDoorMan.getMethod(this.mInstanceObject.getClass(), "updateCloseHeadsUp", String.class, Boolean.TYPE, String.class);
            if (method != null) {
                TranDoorMan.invokeMethod(method, this.mInstanceObject, str, Boolean.valueOf(z), str2);
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "updateCloseHeadsUp fail " + e);
        }
    }
}
