.class public final Lcom/transsion/ugcvideodetail/api/bean/UGCContent$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ugcvideodetail/api/bean/UGCContent;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/ugcvideodetail/api/bean/UGCContent;
    .locals 7

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    move-object v3, v1

    .line 17
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    move-object v1, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    .line 30
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    move-object v5, v1

    .line 35
    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    move-object v1, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    sget-object v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    .line 47
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_1
    move-object v6, v1

    .line 52
    check-cast v6, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    sget-object v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    .line 63
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    :goto_2
    move-object p1, v4

    .line 68
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 69
    .line 70
    move-object v1, v0

    .line 71
    move-object v4, v5

    .line 72
    move-object v5, v6

    .line 73
    move-object v6, p1

    .line 74
    invoke-direct/range {v1 .. v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/ugcvideodetail/api/bean/UGCContent;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent$a;->a(Landroid/os/Parcel;)Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

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
    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent$a;->b(I)[Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
