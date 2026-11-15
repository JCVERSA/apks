package com.transsion.hubsdk.interfaces.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.ComponentName;
import android.net.Uri;
import com.transsion.hubsdk.api.app.ITranEnqueueNotificationListener;
import com.transsion.hubsdk.api.app.ITranMuteNotificationListener;
import com.transsion.hubsdk.api.app.ITranNotificationStatsCallback;
import com.transsion.hubsdk.api.app.ITranRemoveNotificationListener;
import com.transsion.hubsdk.api.app.TranRanking;
import com.transsion.hubsdk.api.content.pm.TranParceledListSlice;
import java.util.List;

public interface ITranNotificationManagerAdapter {
    boolean areNotificationsEnabledForPackage(String str, int i);

    boolean canPlaySound(String str, int i);

    boolean canPlayVibration(String str, int i);

    boolean canShowBadge(String str, int i);

    void cancelNotification(String str, String str2, int i, int i2, String str3, int i3, int i4);

    void createNotificationChannelsForPackage(String str, int i, List list);

    void enqueueNotification(String str, String str2, int i, int i2, String str3, int i3, Notification notification, int i4);

    List<TranRanking> getMuteRankingList();

    NotificationChannel getNotificationChannelForPackage(String str, int i, String str2, String str3, boolean z);

    TranParceledListSlice getNotificationChannelGroupsForPackage(String str, int i, boolean z);

    TranParceledListSlice getNotificationChannels(String str, String str2, int i);

    TranParceledListSlice<NotificationChannel> getNotificationChannelsForPackage(String str, int i, boolean z);

    int getNotificationImportanceForPackage(String str, int i);

    int getNotificationMuteGradeForPackage(String str, int i);

    int getNumNotificationChannelsForPackage(String str, int i, boolean z);

    int getTranNotificationAppGroupForPackage(String str, int i);

    int getZenMode();

    boolean isImportanceLocked(String str, int i);

    boolean isNotificationMuteSilenceStatuForPackage(long j, String str, int i);

    void notifyTranAppGroupIgnoreForPackage(String str, int i);

    void notifyTranAppGroupTipShowForPackage(String str, int i);

    boolean onlyHasDefaultChannel(String str, int i);

    boolean registerEnqueueNotificationListener(ITranEnqueueNotificationListener iTranEnqueueNotificationListener, int i, int i2, int i3, boolean z);

    void registerMuteNotificationListener(ITranMuteNotificationListener iTranMuteNotificationListener);

    boolean registerRemoveNotificationListener(ITranRemoveNotificationListener iTranRemoveNotificationListener);

    void registerTranNotificationStatsCallback(ITranNotificationStatsCallback iTranNotificationStatsCallback);

    void setNotificationImportanceForPackage(String str, int i, int i2);

    void setNotificationListenerAccessGranted(ComponentName componentName, boolean z);

    void setNotificationMuteGradeForPackage(String str, int i, int i2);

    void setNotificationsEnabledForPackage(String str, int i, boolean z);

    void setPlaySound(String str, int i, boolean z);

    void setPlayVibration(String str, int i, boolean z);

    void setShowBadge(String str, int i, boolean z);

    void setTranNotificationAppGroupForPackage(String str, int i, int i2);

    boolean setVisibleToListenerFilter(String[] strArr, int i, boolean z);

    void setZenMode(int i, Uri uri, String str);

    int shouldShowTranAppGroupTipForPackage(String str, int i);

    void unRegisterTranNotificationStatsCallback();

    boolean unregisterEnqueueNotificationListener();

    void unregisterMuteNotificationListener();

    boolean unregisterRemoveNotificationListener();

    void updateNotificationChannelForPackage(String str, int i, NotificationChannel notificationChannel);
}
