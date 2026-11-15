package com.transsion.hubsdk.api.notification;

import android.content.ComponentName;
import android.content.Context;
import android.service.notification.NotificationListenerService;
import com.transsion.hubsdk.aosp.notification.TranAospNotificationListenerService;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.notification.TranThubNotificationListenerService;
import com.transsion.hubsdk.interfaces.notification.ITranNotificationListenerServiceAdapter;

public class TranNotificationListenerService {
    private static final String TAG = "TranNotificationListenerService";
    private TranAospNotificationListenerService mAospService;
    private NotificationListenerService mListenerService;
    private TranThubNotificationListenerService mThubService;

    public TranNotificationListenerService(NotificationListenerService notificationListenerService) {
        this.mListenerService = notificationListenerService;
    }

    public ITranNotificationListenerServiceAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubNotificationListenerService tranThubNotificationListenerService = this.mThubService;
            if (tranThubNotificationListenerService != null) {
                return tranThubNotificationListenerService;
            }
            TranThubNotificationListenerService tranThubNotificationListenerService2 = new TranThubNotificationListenerService(this.mListenerService);
            this.mThubService = tranThubNotificationListenerService2;
            return tranThubNotificationListenerService2;
        }
        TranAospNotificationListenerService tranAospNotificationListenerService = this.mAospService;
        if (tranAospNotificationListenerService != null) {
            return tranAospNotificationListenerService;
        }
        TranAospNotificationListenerService tranAospNotificationListenerService2 = new TranAospNotificationListenerService(this.mListenerService);
        this.mAospService = tranAospNotificationListenerService2;
        return tranAospNotificationListenerService2;
    }

    public void registerAsSystemService(Context context, ComponentName componentName, int i) {
        getService(TranVersion.Core.VERSION_33141).registerAsSystemService(context, componentName, i);
    }

    public void unregisterAsSystemService() {
        getService(TranVersion.Core.VERSION_33141).unregisterAsSystemService();
    }
}
