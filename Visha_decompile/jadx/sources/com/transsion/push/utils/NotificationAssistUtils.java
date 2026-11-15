package com.transsion.push.utils;

import android.app.NotificationManager;
import android.content.Context;

public final class NotificationAssistUtils {
    public static boolean isOpenNotification(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        return notificationManager == null || notificationManager.areNotificationsEnabled();
    }
}
