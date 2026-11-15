.class public Lcom/transsion/apiinvoke/ipc/ParcelRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/apiinvoke/invoke/ApiRequest;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/apiinvoke/ipc/ParcelRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mRequest:Lcom/transsion/apiinvoke/invoke/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/apiinvoke/ipc/ParcelRequest$1;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/ParcelRequest$1;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 5
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/apiinvoke/invoke/ApiRequest;

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->mRequest:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->mRequest:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRequest()Lcom/transsion/apiinvoke/invoke/ApiRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->mRequest:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->mRequest:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/transsion/apiinvoke/invoke/ApiRequest;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->mRequest:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    invoke-virtual {v1, p1, v0, p0, p2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V

    return-void
.end method
