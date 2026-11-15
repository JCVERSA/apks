.class public interface abstract Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
.end method

.method public abstract canPlaySound(Ljava/lang/String;I)Z
.end method

.method public abstract canPlayVibration(Ljava/lang/String;I)Z
.end method

.method public abstract canShowBadge(Ljava/lang/String;I)Z
.end method

.method public abstract cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
.end method

.method public abstract createNotificationChannelsForPackage(Ljava/lang/String;ILjava/util/List;)V
.end method

.method public abstract enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
.end method

.method public abstract getMuteRankingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/TranRanking;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
.end method

.method public abstract getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
.end method

.method public abstract getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
.end method

.method public abstract getNotificationChannelsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationImportanceForPackage(Ljava/lang/String;I)I
.end method

.method public abstract getNotificationMuteGradeForPackage(Ljava/lang/String;I)I
.end method

.method public abstract getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
.end method

.method public abstract getTranNotificationAppGroupForPackage(Ljava/lang/String;I)I
.end method

.method public abstract getZenMode()I
.end method

.method public abstract isImportanceLocked(Ljava/lang/String;I)Z
.end method

.method public abstract isNotificationMuteSilenceStatuForPackage(JLjava/lang/String;I)Z
.end method

.method public abstract notifyTranAppGroupIgnoreForPackage(Ljava/lang/String;I)V
.end method

.method public abstract notifyTranAppGroupTipShowForPackage(Ljava/lang/String;I)V
.end method

.method public abstract onlyHasDefaultChannel(Ljava/lang/String;I)Z
.end method

.method public abstract registerEnqueueNotificationListener(Lcom/transsion/hubsdk/api/app/ITranEnqueueNotificationListener;IIIZ)Z
.end method

.method public abstract registerMuteNotificationListener(Lcom/transsion/hubsdk/api/app/ITranMuteNotificationListener;)V
.end method

.method public abstract registerRemoveNotificationListener(Lcom/transsion/hubsdk/api/app/ITranRemoveNotificationListener;)Z
.end method

.method public abstract registerTranNotificationStatsCallback(Lcom/transsion/hubsdk/api/app/ITranNotificationStatsCallback;)V
.end method

.method public abstract setNotificationImportanceForPackage(Ljava/lang/String;II)V
.end method

.method public abstract setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setNotificationMuteGradeForPackage(Ljava/lang/String;II)V
.end method

.method public abstract setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
.end method

.method public abstract setPlaySound(Ljava/lang/String;IZ)V
.end method

.method public abstract setPlayVibration(Ljava/lang/String;IZ)V
.end method

.method public abstract setShowBadge(Ljava/lang/String;IZ)V
.end method

.method public abstract setTranNotificationAppGroupForPackage(Ljava/lang/String;II)V
.end method

.method public abstract setVisibleToListenerFilter([Ljava/lang/String;IZ)Z
.end method

.method public abstract setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract shouldShowTranAppGroupTipForPackage(Ljava/lang/String;I)I
.end method

.method public abstract unRegisterTranNotificationStatsCallback()V
.end method

.method public abstract unregisterEnqueueNotificationListener()Z
.end method

.method public abstract unregisterMuteNotificationListener()V
.end method

.method public abstract unregisterRemoveNotificationListener()Z
.end method

.method public abstract updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
.end method
