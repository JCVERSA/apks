.class public Lcom/transsion/apiinvoke/ipc/ParcelPublishData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/apiinvoke/ipc/ParcelPublishData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private publishData:Lcom/transsion/apiinvoke/subscribe/PublishData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/apiinvoke/ipc/ParcelPublishData$1;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/ParcelPublishData$1;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/apiinvoke/subscribe/PublishData;

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;->publishData:Lcom/transsion/apiinvoke/subscribe/PublishData;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/apiinvoke/subscribe/PublishData;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;->publishData:Lcom/transsion/apiinvoke/subscribe/PublishData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPublishData()Lcom/transsion/apiinvoke/subscribe/PublishData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;->publishData:Lcom/transsion/apiinvoke/subscribe/PublishData;

    return-object p0
.end method

.method public setPublishData(Lcom/transsion/apiinvoke/subscribe/PublishData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;->publishData:Lcom/transsion/apiinvoke/subscribe/PublishData;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-class v0, Lcom/transsion/apiinvoke/subscribe/PublishData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;->publishData:Lcom/transsion/apiinvoke/subscribe/PublishData;

    invoke-virtual {v1, p1, v0, p0, p2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V

    return-void
.end method
