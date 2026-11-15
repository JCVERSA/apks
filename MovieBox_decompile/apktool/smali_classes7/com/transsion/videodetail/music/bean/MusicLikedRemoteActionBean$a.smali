.class public final Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;
    .locals 3

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    sget-object v2, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    .line 26
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    .line 31
    .line 32
    invoke-direct {v0, v1, p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;-><init>(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean$a;->a(Landroid/os/Parcel;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;

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
    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean$a;->b(I)[Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
