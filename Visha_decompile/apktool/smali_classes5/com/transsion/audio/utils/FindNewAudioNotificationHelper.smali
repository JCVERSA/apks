.class public abstract Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;,
        Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NewAudioBroadcastReceiver;
    }
.end annotation


# static fields
.field public static a:Ljava/util/HashMap;

.field public static b:Landroid/content/SharedPreferences;

.field public static c:I

.field public static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->c:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->d:J

    return-void
.end method

.method public static bridge synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->c(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;ZLandroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;
    .locals 5

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p2, :cond_0

    iget-object p2, p4, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->channel:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p4, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->channelSilent:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, p0, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget p2, p4, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->iconId:I

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->audio_file_new_find:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p4, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->titleStrId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNewAudioNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FindNewAudioNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NewAudioBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x7531

    const-string v3, "requestCode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v2, p4, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    const-string v4, "type"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    if-nez p3, :cond_3

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p3, v1, :cond_2

    const/high16 p3, 0xc000000

    goto :goto_1

    :cond_2
    const/high16 p3, 0x8000000

    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/transsion/audio/activities/LaunchTempActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x7532

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p4, p4, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "from_new_audio_notification"

    invoke-virtual {v1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0, v1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    :cond_3
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->d(I)V

    invoke-static {p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->clearNewAudioList(I)V

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->o()V

    return-void
.end method

.method public static d(I)V
    .locals 1

    sget-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_ring_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/util/List;ZLandroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;
    .locals 4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p4, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->oneDescribeStrId:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p4, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->someDescribeStrId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->b(Landroid/content/Context;Ljava/lang/String;ZLandroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->p(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    invoke-static {p0, p2, p3, p4}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->g(Landroid/content/Context;ZLandroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;ZLandroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;
    .locals 1

    invoke-static {p3}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->h(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->b(Landroid/content/Context;Ljava/lang/String;ZLandroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->p(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->h(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;
    .locals 1

    sget-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->a:Ljava/util/HashMap;

    iget p0, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification;

    return-object p0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->t:Z

    if-eqz v0, :cond_0

    const-string v0, "FindNewAudioNotification"

    const-string v1, "initNewAudioNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lt08;->i(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->g:Z

    const-string v0, "audio_new_find_notification"

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->g:Z

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->t:Z

    const-string v1, "new_audio_notify_need_init"

    invoke-static {p0, v1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static j()Z
    .locals 4

    sget-boolean v0, Lpp3;->x:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewAudioOpen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",CloudCtrlConfigHelper:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->b()Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->c(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FindNewAudioNotification"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->i(Landroid/content/Context;)V

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->b()Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static k()Z
    .locals 4

    sget v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->c:I

    if-nez v0, :cond_1

    sget-wide v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static l(I)V
    .locals 5

    invoke-static {p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->getNewAudioList(I)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "FindNewAudioNotification"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v2

    new-instance v3, Liz;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Liz;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->getListFlag(I)I

    move-result p0

    iput p0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    iput-boolean v4, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    const-string p0, "vd_audio_new_find_notification_cl"

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    const-string p0, "newmedianotice"

    invoke-static {p0}, Lry5;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "newAudioPlay: finish AudioPlayerActivity"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->D1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ltz5;->g(J)V

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->o()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "newAudioPlay: empty list"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static m(Landroid/content/Context;Ljava/util/List;Landroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Z
    .locals 8

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-static {}, Lt08;->j()Z

    move-result v2

    invoke-static {v2}, Ltz5;->f(Z)V

    sget-object v2, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->b:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    const-string v2, "NEW_AUDIO_NOTIFICATION_SHARED_DATA_KEY"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->b:Landroid/content/SharedPreferences;

    :cond_0
    invoke-static {p3}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->q(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->channel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->channelSilent:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->titleStrId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->titleStrId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    :goto_1
    new-instance v7, Landroid/app/NotificationChannel;

    invoke-direct {v7, v3, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v7, v5}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_3
    invoke-static {p0}, Lt08;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v1, p3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    invoke-static {p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->i(Landroid/content/Context;)V

    iget v1, p3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->notificationId:I

    invoke-static {p0, p1, v2, p2, p3}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->f(Landroid/content/Context;Ljava/util/List;ZLandroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    if-eqz v2, :cond_4

    invoke-static {p3}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->r(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)V

    :cond_4
    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->k()Z

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sget p3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->c:I

    sub-int/2addr p2, p3

    invoke-static {p0, p2}, Ltz5;->h(ZI)V

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->k()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sput-wide p2, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->d:J

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->c:I

    const/4 p0, 0x1

    return p0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notifications are disabled on the device, notificationPermission:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isNewAudioOpen:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FindNewAudioNotification"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1
.end method

.method public static n(Ljava/util/List;Ljava/util/function/Function;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p2, p0, p3, p4}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->m(Landroid/content/Context;Ljava/util/List;Landroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Z

    move-result p0

    return p0
.end method

.method public static o()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->c:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->d:J

    return-void
.end method

.method public static p(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "FindNewAudioNotification"

    const-string v1, "setNotification: null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->a:Ljava/util/HashMap;

    iget p0, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static q(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Z
    .locals 4

    sget-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->b:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->e(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static r(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)V
    .locals 3

    sget-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->e(Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
