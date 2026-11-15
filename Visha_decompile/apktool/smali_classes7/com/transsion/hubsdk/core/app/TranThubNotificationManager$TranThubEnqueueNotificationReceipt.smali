.class public Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/app/ITranEnqueueNotificationReceipt;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranThubEnqueueNotificationReceipt"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mReceipt:Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;->mReceipt:Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;-><init>(Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleNotifyNotification(Landroid/app/Notification;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;->mReceipt:Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotifyNotification notification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;->mReceipt:Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;->handleNotifyNotification(Landroid/app/Notification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotifyNotification e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;->mReceipt:Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;

    invoke-interface {p0}, Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
