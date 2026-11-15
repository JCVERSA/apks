.class public Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranNotificationChannelAdapter;


# instance fields
.field private mNotificationChannel:Lcom/transsion/hubsdk/app/TranNotificationChannel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;->mNotificationChannel:Lcom/transsion/hubsdk/app/TranNotificationChannel;

    new-instance v0, Lcom/transsion/hubsdk/app/TranNotificationChannel;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranNotificationChannel;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;->mNotificationChannel:Lcom/transsion/hubsdk/app/TranNotificationChannel;

    return-void
.end method


# virtual methods
.method public getOriginalImportance(Landroid/app/NotificationChannel;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;->mNotificationChannel:Lcom/transsion/hubsdk/app/TranNotificationChannel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranNotificationChannel;->getOriginalImportance(Landroid/app/NotificationChannel;)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x3e8

    return p0
.end method

.method public lockFields(Landroid/app/NotificationChannel;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;->mNotificationChannel:Lcom/transsion/hubsdk/app/TranNotificationChannel;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranNotificationChannel;->lockFields(Landroid/app/NotificationChannel;I)V

    return-void
.end method
