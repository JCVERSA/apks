.class public Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain$1;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain$1;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/transsion/apiinvoke/invoke/InvokeChain;

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/apiinvoke/invoke/InvokeChain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invokeChain()Lcom/transsion/apiinvoke/invoke/InvokeChain;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
