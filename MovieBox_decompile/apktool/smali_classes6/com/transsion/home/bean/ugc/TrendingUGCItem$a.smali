.class public final Lcom/transsion/home/bean/ugc/TrendingUGCItem$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/bean/ugc/TrendingUGCItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/home/bean/ugc/TrendingUGCItem;
    .locals 4

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v3, Lcom/transsion/home/bean/OperateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    .line 28
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    check-cast p1, Lcom/transsion/home/bean/OperateItem;

    .line 33
    .line 34
    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/home/bean/ugc/TrendingUGCItem;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/bean/OperateItem;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/home/bean/ugc/TrendingUGCItem;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/home/bean/ugc/TrendingUGCItem;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/home/bean/ugc/TrendingUGCItem$a;->a(Landroid/os/Parcel;)Lcom/transsion/home/bean/ugc/TrendingUGCItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/home/bean/ugc/TrendingUGCItem$a;->b(I)[Lcom/transsion/home/bean/ugc/TrendingUGCItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
