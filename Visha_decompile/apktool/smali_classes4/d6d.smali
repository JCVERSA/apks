.class public Ld6d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g:Z = false


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/app/Notification;

.field public c:Landroid/app/NotificationManager;

.field public d:I

.field public e:I

.field public f:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ld6d;->b(Landroid/content/Context;)V

    iput-object p1, p0, Ld6d;->a:Landroid/content/Context;

    iput p2, p0, Ld6d;->d:I

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Ld6d;->c:Landroid/app/NotificationManager;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    sget-boolean v0, Ld6d;->g:Z

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "\u901a\u77e5\u680f\u5de5\u5177"

    const/4 v2, 0x2

    const-string v3, "1"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "\u6d88\u606f\u901a\u77e5"

    const/4 v3, 0x3

    const-string v4, "2"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    sput-boolean v2, Ld6d;->g:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Ld6d;->a:Landroid/content/Context;

    sget v1, Lcom/mgmi/R$string;->mgmi_download_is_caching:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "1"

    invoke-virtual {p0, v0, v1, v2}, Ld6d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ld6d;->b:Landroid/app/Notification;

    const/4 v0, 0x2

    iput v0, p0, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Ld6d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    :try_start_0
    sget p2, Lcom/mgmi/R$drawable;->mgmi_icon_notification_icon:I

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object p1, p0, Ld6d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$drawable;->mgmi_icon_notification_icon:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object p1, p0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Ld6d;->b:Landroid/app/Notification;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Ld6d;->a:Landroid/content/Context;

    const-class v6, Lcom/mgmi/notification/NotificationReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "mgmi_notification.apk.download.delete"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0xb901

    const v7, 0xb902

    const-string v8, "notificationType"

    const/16 v9, 0x64

    if-ne v3, v9, :cond_0

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string v10, "notificationURL"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "notificationUUID"

    invoke-virtual {v4, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v12, v0, Ld6d;->d:I

    const-string v13, "fznotificationID"

    invoke-virtual {v4, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v14, 0x8000000

    const/high16 v15, 0xc000000

    const/16 v5, 0x1f

    if-lt v12, v5, :cond_1

    iget-object v5, v0, Ld6d;->a:Landroid/content/Context;

    iget v7, v0, Ld6d;->e:I

    invoke-static {v5, v7, v4, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v5, v0, Ld6d;->a:Landroid/content/Context;

    iget v7, v0, Ld6d;->e:I

    invoke-static {v5, v7, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_1
    iget-object v5, v0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Ld6d;->a:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "mgmi_notification.apk.download.click"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v3, v9, :cond_2

    const v5, 0xb902

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const v5, 0xb901

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, v0, Ld6d;->d:I

    invoke-virtual {v4, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x1f

    if-lt v12, v1, :cond_3

    iget-object v1, v0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v0, Ld6d;->a:Landroid/content/Context;

    iget v5, v0, Ld6d;->e:I

    invoke-static {v2, v5, v4, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    :cond_3
    iget-object v1, v0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v0, Ld6d;->a:Landroid/content/Context;

    iget v5, v0, Ld6d;->e:I

    invoke-static {v2, v5, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Ld6d;->a:Landroid/content/Context;

    sget v2, Lcom/mgmi/R$string;->mgmi_apk_download_finish_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object/from16 v1, p3

    :goto_4
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ld6d;->a:Landroid/content/Context;

    sget v5, Lcom/mgmi/R$string;->mgmi_str_downloading:I

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

    :goto_5
    iget-object v4, v0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, v0, Ld6d;->b:Landroid/app/Notification;

    invoke-virtual/range {p0 .. p0}, Ld6d;->f()V

    return-void
.end method

.method public e(ZZ)V
    .locals 1

    iget-object v0, p0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p0, p0, Ld6d;->f:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public f()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ld6d;->c:Landroid/app/NotificationManager;

    iget v1, p0, Ld6d;->d:I

    iget-object p0, p0, Ld6d;->b:Landroid/app/Notification;

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

.method public g()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ld6d;->c:Landroid/app/NotificationManager;

    iget p0, p0, Ld6d;->d:I

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
