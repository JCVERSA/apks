package com.transsion.hubsdk.interfaces.app;

import android.app.NotificationChannel;

public interface ITranNotificationChannelAdapter {
    int getOriginalImportance(NotificationChannel notificationChannel);

    void lockFields(NotificationChannel notificationChannel, int i);
}
