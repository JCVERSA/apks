.class Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;

    invoke-static {p0}, Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;-><init>(Lcom/transsion/hubsdk/notification/ITranEnqueueNotificationReceipt;Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$1;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt$1;->newArray(I)[Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubEnqueueNotificationReceipt;

    move-result-object p0

    return-object p0
.end method
