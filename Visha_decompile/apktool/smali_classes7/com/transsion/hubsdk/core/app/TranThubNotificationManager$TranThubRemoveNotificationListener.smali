.class public Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubRemoveNotificationListener;
.super Lcom/transsion/hubsdk/notification/ITranRemoveNotificationListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubRemoveNotificationListener"
.end annotation


# instance fields
.field private mListener:Lcom/transsion/hubsdk/api/app/ITranRemoveNotificationListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Lcom/transsion/hubsdk/api/app/ITranRemoveNotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubRemoveNotificationListener;->this$0:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/notification/ITranRemoveNotificationListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubRemoveNotificationListener;->mListener:Lcom/transsion/hubsdk/api/app/ITranRemoveNotificationListener;

    return-void
.end method


# virtual methods
.method public onNotifyRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationStats;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubRemoveNotificationListener;->mListener:Lcom/transsion/hubsdk/api/app/ITranRemoveNotificationListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p3}, Lcom/transsion/hubsdk/api/app/ITranRemoveNotificationListener;->onNotifyRemoved(Landroid/service/notification/StatusBarNotification;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onNotifyRemoved: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
