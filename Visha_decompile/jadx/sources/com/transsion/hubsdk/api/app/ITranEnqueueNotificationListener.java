package com.transsion.hubsdk.api.app;

import android.app.NotificationChannel;
import android.service.notification.StatusBarNotification;

public interface ITranEnqueueNotificationListener {
    void onNotifyNotification(StatusBarNotification statusBarNotification, NotificationChannel notificationChannel, int i, ITranEnqueueNotificationReceipt iTranEnqueueNotificationReceipt, int i2);
}
