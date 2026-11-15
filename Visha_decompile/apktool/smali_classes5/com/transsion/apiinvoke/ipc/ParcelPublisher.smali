.class public Lcom/transsion/apiinvoke/ipc/ParcelPublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/apiinvoke/ipc/ParcelPublisher;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:I = 0x1


# instance fields
.field private publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher$1;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/ParcelPublisher$1;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->version:I

    .line 6
    new-instance v0, Lcom/transsion/apiinvoke/subscribe/Publisher;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/subscribe/Publisher;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->version:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/transsion/apiinvoke/subscribe/Publisher;

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    new-instance v2, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    .line 12
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/transsion/apiinvoke/subscribe/Publisher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->version:I

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPublisher()Lcom/transsion/apiinvoke/subscribe/Publisher;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "version:1"

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
