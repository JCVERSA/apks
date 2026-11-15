package com.transsion.hubsdk.interfaces.notification;

import android.content.ComponentName;
import android.content.Context;

public interface ITranNotificationListenerServiceAdapter {
    void registerAsSystemService(Context context, ComponentName componentName, int i);

    void unregisterAsSystemService();
}
