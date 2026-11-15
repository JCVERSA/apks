.class public Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationListener;
.super Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubEnqueueNotificationListener"
.end annotation


# instance fields
.field private mListener:Lcom/transsion/hubsdk/api/app/ITranEnqueueNotificationListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Lcom/transsion/hubsdk/api/app/ITranEnqueueNotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationListener;->this$0:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationListener;->mListener:Lcom/transsion/hubsdk/api/app/ITranEnqueueNotificationListener;

    return-void
.end method


# virtual methods
.method public onNotifyNotification(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;ILcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;I)V
    .locals 7

    const-string v0, " for no listener"

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationListener;->mListener:Lcom/transsion/hubsdk/api/app/ITranEnqueueNotificationListener;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v5, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;

    const/4 p0, 0x0

    invoke-direct {v5, p4, p0}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;-><init>(Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$1;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/api/app/ITranEnqueueNotificationListener;->onNotifyNotification(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;ILcom/transsion/hubsdk/api/app/ITranEnqueueNotificationReceipt;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onNotifyNotification: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;->handleNotifyNotification(Landroid/app/Notification;)V

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to handle process start event "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to receipt "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
