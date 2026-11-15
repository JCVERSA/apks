package com.transsion.hubsdk.core.app;

import android.app.NotificationChannel;
import com.transsion.hubsdk.app.TranNotificationChannel;
import com.transsion.hubsdk.interfaces.app.ITranNotificationChannelAdapter;

public class TranThubNotificationChannel implements ITranNotificationChannelAdapter {
    private TranNotificationChannel mNotificationChannel;

    public TranThubNotificationChannel() {
        this.mNotificationChannel = null;
        this.mNotificationChannel = new TranNotificationChannel();
    }

    @Override
    public int getOriginalImportance(NotificationChannel notificationChannel) {
        TranNotificationChannel tranNotificationChannel = this.mNotificationChannel;
        if (tranNotificationChannel != null) {
            return tranNotificationChannel.getOriginalImportance(notificationChannel);
        }
        return -1000;
    }

    @Override
    public void lockFields(NotificationChannel notificationChannel, int i) {
        this.mNotificationChannel.lockFields(notificationChannel, i);
    }
}
