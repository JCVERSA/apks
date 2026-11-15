package com.transsion.hubsdk.api.app;

import android.service.notification.StatusBarNotification;

public interface ITranRemoveNotificationListener {
    void onNotifyRemoved(StatusBarNotification statusBarNotification, int i);
}
