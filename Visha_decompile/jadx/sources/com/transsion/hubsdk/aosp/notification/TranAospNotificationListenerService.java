package com.transsion.hubsdk.aosp.notification;

import android.content.ComponentName;
import android.content.Context;
import android.service.notification.NotificationListenerService;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.notification.ITranNotificationListenerServiceAdapter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class TranAospNotificationListenerService implements ITranNotificationListenerServiceAdapter {
    private static final String TAG = "TranAospNotificationListenerService";
    private static Class<?> sClassName = TranDoorMan.getClass("android.service.notification.NotificationListenerService");
    NotificationListenerService mListenerService;

    public TranAospNotificationListenerService(NotificationListenerService notificationListenerService) {
        this.mListenerService = notificationListenerService;
    }

    @Override
    public void registerAsSystemService(Context context, ComponentName componentName, int i) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "registerAsSystemService", Context.class, ComponentName.class, Integer.TYPE);
            method.setAccessible(true);
            method.invoke(this.mListenerService, context, componentName, Integer.valueOf(i));
        } catch (IllegalAccessException | InvocationTargetException e) {
            TranSdkLog.e(TAG, "registerAsSystemService fail:" + e);
        }
    }

    @Override
    public void unregisterAsSystemService() {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "unregisterAsSystemService", new Class[0]);
            method.setAccessible(true);
            method.invoke(this.mListenerService, null);
        } catch (IllegalAccessException | InvocationTargetException e) {
            TranSdkLog.e(TAG, "unregisterAsSystemService fail:" + e);
        }
    }
}
