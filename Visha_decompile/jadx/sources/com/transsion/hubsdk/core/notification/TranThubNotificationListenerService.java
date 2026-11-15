package com.transsion.hubsdk.core.notification;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import android.service.notification.NotificationListenerService;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.notification.ITranNotificationListenerServiceAdapter;
import com.transsion.hubsdk.notification.TranNotificationListenerService;

public class TranThubNotificationListenerService implements ITranNotificationListenerServiceAdapter {
    private static final String TAG = "TranThubNotificationListenerService";
    private TranNotificationListenerService mListenerService;

    public TranThubNotificationListenerService(NotificationListenerService notificationListenerService) {
        this.mListenerService = null;
        this.mListenerService = new TranNotificationListenerService(notificationListenerService);
    }

    @Override
    public void registerAsSystemService(Context context, ComponentName componentName, int i) {
        try {
            this.mListenerService.registerAsSystemService(context, componentName, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerAsSystemService fail" + e);
        }
    }

    @Override
    public void unregisterAsSystemService() {
        try {
            this.mListenerService.unregisterAsSystemService();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "unregisterAsSystemService fail" + e);
        }
    }
}
