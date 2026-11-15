.class public Lcom/transsion/hubsdk/api/app/TranNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranNotificationManager"

.field public static final TRAN_MUTE_GRADE_DAY:I = 0x2

.field public static final TRAN_MUTE_GRADE_HOUR:I = 0x1

.field public static final TRAN_MUTE_GRADE_NONE:I = 0x3


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/notification/TranAospZenModeConfigExt;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canPlaySound(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->canPlaySound(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canPlayVibration(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->canPlayVibration(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    .locals 9

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    return-void
.end method

.method public createNotificationChannelsForPackage(Ljava/lang/String;ILjava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->createNotificationChannelsForPackage(Ljava/lang/String;ILjava/util/List;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .locals 10

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    return-void
.end method

.method public getMuteRankingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/TranRanking;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getMuteRankingList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .locals 1
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

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNotificationImportanceForPackage(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationImportanceForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNotificationMuteGradeForPackage(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationMuteGradeForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubNotificationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospNotificationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;

    :cond_2
    return-object p1
.end method

.method public getTranNotificationAppGroupForPackage(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getTranNotificationAppGroupForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getZenMode()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getZenMode()I

    move-result p0

    return p0
.end method

.method public isImportanceLocked(Ljava/lang/String;I)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->isImportanceLocked(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isNotificationMuteSilenceStatuForPackage(Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->isNotificationMuteSilenceStatuForPackage(JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public notifyTranAppGroupIgnoreForPackage(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->notifyTranAppGroupIgnoreForPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyTranAppGroupTipShowForPackage(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->notifyTranAppGroupTipShowForPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public registerEnqueueNotificationListener(Lcom/transsion/hubsdk/api/app/ITranEnqueueNotificationListener;IIIZ)Z
    .locals 7

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->registerEnqueueNotificationListener(Lcom/transsion/hubsdk/api/app/ITranEnqueueNotificationListener;IIIZ)Z

    move-result p0

    return p0
.end method

.method public registerMuteNotificationListener(Lcom/transsion/hubsdk/api/app/ITranMuteNotificationListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->registerMuteNotificationListener(Lcom/transsion/hubsdk/api/app/ITranMuteNotificationListener;)V

    return-void
.end method

.method public registerRemoveNotificationListener(Lcom/transsion/hubsdk/api/app/ITranRemoveNotificationListener;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->registerRemoveNotificationListener(Lcom/transsion/hubsdk/api/app/ITranRemoveNotificationListener;)Z

    move-result p0

    return p0
.end method

.method public registerTranNotificationStatsCallback(Lcom/transsion/hubsdk/api/app/ITranNotificationStatsCallback;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->registerTranNotificationStatsCallback(Lcom/transsion/hubsdk/api/app/ITranNotificationStatsCallback;)V

    return-void
.end method

.method public setNotificationImportanceForPackage(Ljava/lang/String;II)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setNotificationImportanceForPackage(Ljava/lang/String;II)V

    return-void
.end method

.method public setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public setNotificationMuteGradeForPackage(Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setNotificationMuteGradeForPackage(Ljava/lang/String;II)V

    return-void
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setPlaySound(Ljava/lang/String;IZ)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setPlaySound(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setPlayVibration(Ljava/lang/String;IZ)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setPlayVibration(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setShowBadge(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setTranNotificationAppGroupForPackage(Ljava/lang/String;II)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setTranNotificationAppGroupForPackage(Ljava/lang/String;II)V

    return-void
.end method

.method public setVisibleToListenerFilter([Ljava/lang/String;IZ)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setVisibleToListenerFilter([Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public shouldShowTranAppGroupTipForPackage(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->shouldShowTranAppGroupTipForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public unRegisterTranNotificationStatsCallback()V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->unRegisterTranNotificationStatsCallback()V

    return-void
.end method

.method public unregisterEnqueueNotificationListener()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->unregisterEnqueueNotificationListener()Z

    move-result p0

    return p0
.end method

.method public unregisterMuteNotificationListener()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->unregisterMuteNotificationListener()V

    return-void
.end method

.method public unregisterRemoveNotificationListener()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->unregisterRemoveNotificationListener()Z

    move-result p0

    return p0
.end method

.method public updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return-void
.end method
