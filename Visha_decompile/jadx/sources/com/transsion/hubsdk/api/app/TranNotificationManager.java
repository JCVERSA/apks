package com.transsion.hubsdk.api.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.service.notification.Condition;
import com.transsion.hubsdk.aosp.app.TranAospNotificationManager;
import com.transsion.hubsdk.aosp.notification.TranAospZenModeConfigExt;
import com.transsion.hubsdk.api.content.pm.TranParceledListSlice;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubNotificationManager;
import com.transsion.hubsdk.interfaces.app.ITranNotificationManagerAdapter;
import java.util.List;

public class TranNotificationManager {
    private static final String TAG = "TranNotificationManager";
    public static final int TRAN_MUTE_GRADE_DAY = 2;
    public static final int TRAN_MUTE_GRADE_HOUR = 1;
    public static final int TRAN_MUTE_GRADE_NONE = 3;
    private TranAospNotificationManager mAospService;
    private TranThubNotificationManager mThubService;

    public static Condition toTimeCondition(Context context, int i, int i2) {
        return TranAospZenModeConfigExt.toTimeCondition(context, i, i2);
    }

    @TranLevel(level = 1)
    public boolean areNotificationsEnabledForPackage(String str, int i) {
        return getService(TranVersion.Core.VERSION_33181).areNotificationsEnabledForPackage(str, i);
    }

    public boolean canPlaySound(String str, int i) {
        return getService(TranVersion.Core.VERSION_33281).canPlaySound(str, i);
    }

    public boolean canPlayVibration(String str, int i) {
        return getService(TranVersion.Core.VERSION_33281).canPlayVibration(str, i);
    }

    @TranLevel(level = 1)
    public boolean canShowBadge(String str, int i) {
        return getService(TranVersion.Core.VERSION_33181).canShowBadge(str, i);
    }

    public void cancelNotification(String str, String str2, int i, int i2, String str3, int i3, int i4) {
        getService(TranVersion.Core.VERSION_33501).cancelNotification(str, str2, i, i2, str3, i3, i4);
    }

    public void createNotificationChannelsForPackage(String str, int i, List list) {
        if (str == null || list == null) {
            throw new IllegalArgumentException("params cannot be null");
        }
        getService(TranVersion.Core.VERSION_33391).createNotificationChannelsForPackage(str, i, list);
    }

    public void enqueueNotification(String str, String str2, int i, int i2, String str3, int i3, Notification notification, int i4) {
        getService(TranVersion.Core.VERSION_33511).enqueueNotification(str, str2, i, i2, str3, i3, notification, i4);
    }

    public List<TranRanking> getMuteRankingList() {
        return getService(TranVersion.Core.VERSION_33501).getMuteRankingList();
    }

    @TranLevel(level = 1)
    public NotificationChannel getNotificationChannelForPackage(String str, int i, String str2, String str3, boolean z) {
        return getService(TranVersion.Core.VERSION_33181).getNotificationChannelForPackage(str, i, str2, str3, z);
    }

    @TranLevel(level = 1)
    public TranParceledListSlice<NotificationChannelGroup> getNotificationChannelGroupsForPackage(String str, int i, boolean z) {
        return getService(TranVersion.Core.VERSION_33181).getNotificationChannelGroupsForPackage(str, i, z);
    }

    @TranLevel(level = 1)
    public TranParceledListSlice getNotificationChannels(String str, String str2, int i) {
        return getService(TranVersion.Core.VERSION_33181).getNotificationChannels(str, str2, i);
    }

    public TranParceledListSlice<NotificationChannel> getNotificationChannelsForPackage(String str, int i, boolean z) {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33311).getNotificationChannelsForPackage(str, i, z);
        }
        throw new IllegalArgumentException("package cannot be null");
    }

    public int getNotificationImportanceForPackage(String str, int i) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            return getService(TranVersion.Core.VERSION_33311).getNotificationImportanceForPackage(str, i);
        }
        return 0;
    }

    public int getNotificationMuteGradeForPackage(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getNotificationMuteGradeForPackage(str, i);
    }

    @TranLevel(level = 1)
    public int getNumNotificationChannelsForPackage(String str, int i, boolean z) {
        return getService(TranVersion.Core.VERSION_33181).getNumNotificationChannelsForPackage(str, i, z);
    }

    public ITranNotificationManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubNotificationManager");
            TranThubNotificationManager tranThubNotificationManager = this.mThubService;
            if (tranThubNotificationManager != null) {
                return tranThubNotificationManager;
            }
            TranThubNotificationManager tranThubNotificationManager2 = new TranThubNotificationManager();
            this.mThubService = tranThubNotificationManager2;
            return tranThubNotificationManager2;
        }
        TranSdkLog.i(TAG, "TranAospNotificationManager");
        TranAospNotificationManager tranAospNotificationManager = this.mAospService;
        if (tranAospNotificationManager != null) {
            return tranAospNotificationManager;
        }
        TranAospNotificationManager tranAospNotificationManager2 = new TranAospNotificationManager();
        this.mAospService = tranAospNotificationManager2;
        return tranAospNotificationManager2;
    }

    public int getTranNotificationAppGroupForPackage(String str, int i) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            return getService(TranVersion.Core.VERSION_33411).getTranNotificationAppGroupForPackage(str, i);
        }
        return -1;
    }

    public int getZenMode() {
        return getService(TranVersion.Core.VERSION_33131).getZenMode();
    }

    @TranLevel(level = 1)
    public boolean isImportanceLocked(String str, int i) {
        return getService(TranVersion.Core.VERSION_33181).isImportanceLocked(str, i);
    }

    public boolean isNotificationMuteSilenceStatuForPackage(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).isNotificationMuteSilenceStatuForPackage(System.currentTimeMillis(), str, i);
    }

    public void notifyTranAppGroupIgnoreForPackage(String str, int i) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            getService(TranVersion.Core.VERSION_33411).notifyTranAppGroupIgnoreForPackage(str, i);
        }
    }

    public void notifyTranAppGroupTipShowForPackage(String str, int i) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            getService(TranVersion.Core.VERSION_33411).notifyTranAppGroupTipShowForPackage(str, i);
        }
    }

    public boolean onlyHasDefaultChannel(String str, int i) {
        return getService(TranVersion.Core.VERSION_33181).onlyHasDefaultChannel(str, i);
    }

    public boolean registerEnqueueNotificationListener(ITranEnqueueNotificationListener iTranEnqueueNotificationListener, int i, int i2, int i3, boolean z) {
        return getService(TranVersion.Core.VERSION_33501).registerEnqueueNotificationListener(iTranEnqueueNotificationListener, i, i2, i3, z);
    }

    public void registerMuteNotificationListener(ITranMuteNotificationListener iTranMuteNotificationListener) {
        getService(TranVersion.Core.VERSION_33501).registerMuteNotificationListener(iTranMuteNotificationListener);
    }

    public boolean registerRemoveNotificationListener(ITranRemoveNotificationListener iTranRemoveNotificationListener) {
        return getService(TranVersion.Core.VERSION_33501).registerRemoveNotificationListener(iTranRemoveNotificationListener);
    }

    public void registerTranNotificationStatsCallback(ITranNotificationStatsCallback iTranNotificationStatsCallback) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            getService(TranVersion.Core.VERSION_33411).registerTranNotificationStatsCallback(iTranNotificationStatsCallback);
        }
    }

    public void setNotificationImportanceForPackage(String str, int i, int i2) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            getService(TranVersion.Core.VERSION_33311).setNotificationImportanceForPackage(str, i, i2);
        }
    }

    public void setNotificationListenerAccessGranted(ComponentName componentName, boolean z) {
        getService(TranVersion.Core.VERSION_33161).setNotificationListenerAccessGranted(componentName, z);
    }

    public void setNotificationMuteGradeForPackage(String str, int i, int i2) {
        getService(TranVersion.Core.VERSION_33501).setNotificationMuteGradeForPackage(str, i, i2);
    }

    @TranLevel(level = 2)
    public void setNotificationsEnabledForPackage(String str, int i, boolean z) {
        getService(TranVersion.Core.VERSION_33181).setNotificationsEnabledForPackage(str, i, z);
    }

    public void setPlaySound(String str, int i, boolean z) {
        getService(TranVersion.Core.VERSION_33281).setPlaySound(str, i, z);
    }

    public void setPlayVibration(String str, int i, boolean z) {
        getService(TranVersion.Core.VERSION_33281).setPlayVibration(str, i, z);
    }

    @TranLevel(level = 2)
    public void setShowBadge(String str, int i, boolean z) {
        getService(TranVersion.Core.VERSION_33181).setShowBadge(str, i, z);
    }

    public void setTranNotificationAppGroupForPackage(String str, int i, int i2) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            getService(TranVersion.Core.VERSION_33411).setTranNotificationAppGroupForPackage(str, i, i2);
        }
    }

    public boolean setVisibleToListenerFilter(String[] strArr, int i, boolean z) {
        return getService(TranVersion.Core.VERSION_33501).setVisibleToListenerFilter(strArr, i, z);
    }

    public void setZenMode(int i, Uri uri, String str) {
        getService(TranVersion.Core.VERSION_33131).setZenMode(i, uri, str);
    }

    public int shouldShowTranAppGroupTipForPackage(String str, int i) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            return getService(TranVersion.Core.VERSION_33431).shouldShowTranAppGroupTipForPackage(str, i);
        }
        return -1;
    }

    public void unRegisterTranNotificationStatsCallback() {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            getService(TranVersion.Core.VERSION_33411).unRegisterTranNotificationStatsCallback();
        }
    }

    public boolean unregisterEnqueueNotificationListener() {
        return getService(TranVersion.Core.VERSION_33501).unregisterEnqueueNotificationListener();
    }

    public void unregisterMuteNotificationListener() {
        getService(TranVersion.Core.VERSION_33501).unregisterMuteNotificationListener();
    }

    public boolean unregisterRemoveNotificationListener() {
        return getService(TranVersion.Core.VERSION_33501).unregisterRemoveNotificationListener();
    }

    public void updateNotificationChannelForPackage(String str, int i, NotificationChannel notificationChannel) {
        getService(TranVersion.Core.VERSION_33161).updateNotificationChannelForPackage(str, i, notificationChannel);
    }
}
