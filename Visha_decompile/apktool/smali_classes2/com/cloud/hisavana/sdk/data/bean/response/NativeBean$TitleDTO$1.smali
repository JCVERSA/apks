.class Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;
    .locals 0

    .line 2
    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO$1;->newArray(I)[Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    move-result-object p0

    return-object p0
.end method
