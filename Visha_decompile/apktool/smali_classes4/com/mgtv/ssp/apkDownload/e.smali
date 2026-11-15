.class public Lcom/mgtv/ssp/apkDownload/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static f:Z = false


# instance fields
.field public a:I

.field public b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/app/Notification;

.field private e:Landroid/app/NotificationManager;

.field private g:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mgtv/ssp/apkDownload/e;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    iput p2, p0, Lcom/mgtv/ssp/apkDownload/e;->a:I

    if-eqz p1, :cond_0

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/mgtv/ssp/apkDownload/e;->e:Landroid/app/NotificationManager;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/mgtv/ssp/apkDownload/e;->f:Z

    if-nez v0, :cond_0

    .line 2
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mgtv/ssp/R$string;->notify_tool:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 4
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "2"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/mgtv/ssp/R$string;->message_notify:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x3

    invoke-direct {v2, v3, p0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v1, p0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v3, -0x10000

    .line 6
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 7
    invoke-virtual {v1, p0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 10
    sput-boolean p0, Lcom/mgtv/ssp/apkDownload/e;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 13
    :try_start_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    .line 18
    sget p2, Lcom/mgtv/ssp/R$drawable;->notice_ssp_icon:I

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :catchall_0
    :try_start_1
    iget-object p1, p0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgtv/ssp/R$drawable;->notice_ssp_icon:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :catchall_1
    :try_start_2
    iget-object p1, p0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    :catchall_2
    iget-object p1, p0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/apkDownload/e;->d:Landroid/app/Notification;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 25
    sget v1, Lcom/mgtv/ssp/R$string;->download_is_caching:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "1"

    invoke-direct {p0, v0, v1, v2}, Lcom/mgtv/ssp/apkDownload/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/e;->d:Landroid/app/Notification;

    const/4 v0, 0x2

    iput v0, p0, Landroid/app/Notification;->flags:I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    .line 27
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    const-class v6, Lcom/mgtv/ssp/apkDownload/NotificationReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v5, "ssp.notification.apk.download.delete"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x65

    .line 29
    const-string v7, "notificationType"

    const/16 v8, 0x64

    if-ne v3, v8, :cond_0

    .line 30
    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    :goto_0
    const-string v9, "notificationURL"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v10, "notificationUUID"

    invoke-virtual {v4, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget v11, v0, Lcom/mgtv/ssp/apkDownload/e;->a:I

    const-string v12, "fznotificationID"

    invoke-virtual {v4, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v13, 0x8000000

    const/high16 v14, 0xc000000

    const/16 v15, 0x1f

    if-lt v11, v15, :cond_1

    .line 36
    iget-object v15, v0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    iget v5, v0, Lcom/mgtv/ssp/apkDownload/e;->b:I

    invoke-static {v15, v5, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_1

    .line 37
    :cond_1
    iget-object v5, v0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    iget v15, v0, Lcom/mgtv/ssp/apkDownload/e;->b:I

    invoke-static {v5, v15, v4, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 38
    :goto_1
    iget-object v5, v0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 39
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string v5, "ssp.notification.apk.download.click"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v3, v8, :cond_2

    const/16 v5, 0x65

    .line 41
    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    :goto_2
    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {v4, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget v1, v0, Lcom/mgtv/ssp/apkDownload/e;->a:I

    invoke-virtual {v4, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x1f

    if-lt v11, v1, :cond_3

    .line 46
    iget-object v1, v0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    iget v5, v0, Lcom/mgtv/ssp/apkDownload/e;->b:I

    invoke-static {v2, v5, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 47
    :cond_3
    iget-object v1, v0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    iget v5, v0, Lcom/mgtv/ssp/apkDownload/e;->b:I

    invoke-static {v2, v5, v4, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 48
    :goto_3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    iget-object v1, v0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    sget v2, Lcom/mgtv/ssp/R$string;->apk_download_finish_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object/from16 v1, p3

    .line 50
    :goto_4
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/mgtv/ssp/apkDownload/e;->c:Landroid/content/Context;

    sget v5, Lcom/mgtv/ssp/R$string;->start_download:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u00b7"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object/from16 v2, p4

    .line 52
    :goto_5
    iget-object v4, v0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 53
    iget-object v1, v0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/ssp/apkDownload/e;->d:Landroid/app/Notification;

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/ssp/apkDownload/e;->b()V

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 12
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/e;->g:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/e;->e:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/mgtv/ssp/apkDownload/e;->a:I

    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/e;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/e;->e:Landroid/app/NotificationManager;

    iget p0, p0, Lcom/mgtv/ssp/apkDownload/e;->a:I

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
