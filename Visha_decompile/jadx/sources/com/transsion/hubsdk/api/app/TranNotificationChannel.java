package com.transsion.hubsdk.api.app;

import android.app.NotificationChannel;
import com.transsion.hubsdk.aosp.app.TranAospNotificationChannel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubNotificationChannel;
import com.transsion.hubsdk.interfaces.app.ITranNotificationChannelAdapter;

public class TranNotificationChannel {
    private static final String TAG = "TranNotificationChannel";
    public static final int USER_LOCKED_IMPORTANCE = 4;
    private TranAospNotificationChannel mAospService;
    private TranThubNotificationChannel mThubService;

    public int getOriginalImportance(NotificationChannel notificationChannel) {
        if (notificationChannel != null) {
            return getService(TranVersion.Core.VERSION_33391).getOriginalImportance(notificationChannel);
        }
        throw new IllegalArgumentException("param cannot be null");
    }

    public ITranNotificationChannelAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubNotificationChannel");
            TranThubNotificationChannel tranThubNotificationChannel = this.mThubService;
            if (tranThubNotificationChannel != null) {
                return tranThubNotificationChannel;
            }
            TranThubNotificationChannel tranThubNotificationChannel2 = new TranThubNotificationChannel();
            this.mThubService = tranThubNotificationChannel2;
            return tranThubNotificationChannel2;
        }
        TranSdkLog.i(TAG, "TranAospNotificationChannel");
        TranAospNotificationChannel tranAospNotificationChannel = this.mAospService;
        if (tranAospNotificationChannel != null) {
            return tranAospNotificationChannel;
        }
        TranAospNotificationChannel tranAospNotificationChannel2 = new TranAospNotificationChannel();
        this.mAospService = tranAospNotificationChannel2;
        return tranAospNotificationChannel2;
    }

    public void lockFields(NotificationChannel notificationChannel, int i) {
        if (notificationChannel == null) {
            throw new IllegalArgumentException("channel cannot be null");
        }
        getService(TranVersion.Core.VERSION_33161).lockFields(notificationChannel, i);
    }
}
