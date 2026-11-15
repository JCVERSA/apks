package com.transsion.hubsdk.api.app;

import android.app.Notification;
import android.os.RemoteException;

public interface ITranEnqueueNotificationReceipt {
    void handleNotifyNotification(Notification notification) throws RemoteException;
}
