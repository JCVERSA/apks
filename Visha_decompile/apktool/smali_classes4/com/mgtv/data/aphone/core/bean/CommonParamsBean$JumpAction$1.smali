.class final Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction;",
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
.method public a(Landroid/os/Parcel;)Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction;
    .locals 0

    .line 2
    new-instance p0, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction;

    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction$1;->a(Landroid/os/Parcel;)Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction$1;->a(I)[Lcom/mgtv/data/aphone/core/bean/CommonParamsBean$JumpAction;

    move-result-object p0

    return-object p0
.end method
