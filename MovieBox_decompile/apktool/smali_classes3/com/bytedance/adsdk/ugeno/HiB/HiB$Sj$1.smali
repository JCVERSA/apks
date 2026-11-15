.class final Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Sj(Landroid/os/Parcel;)Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public Sj(I)[Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj$1;->Sj(Landroid/os/Parcel;)Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj$1;->Sj(I)[Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
