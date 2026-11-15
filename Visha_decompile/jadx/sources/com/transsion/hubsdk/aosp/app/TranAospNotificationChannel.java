package com.transsion.hubsdk.aosp.app;

import android.app.NotificationChannel;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranNotificationChannelAdapter;

public class TranAospNotificationChannel implements ITranNotificationChannelAdapter {
    private static final String TAG = "TranAospNotificationChannel";
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.NotificationChannel");

    @Override
    public int getOriginalImportance(NotificationChannel notificationChannel) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(notificationChannel.getClass(), "getOriginalImportance", new Class[0]), notificationChannel, new Object[0]);
        if (objInvokeMethod != null) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return -1000;
    }

    @Override
    public void lockFields(NotificationChannel notificationChannel, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "lockFields", Integer.TYPE), notificationChannel, Integer.valueOf(i));
    }
}
