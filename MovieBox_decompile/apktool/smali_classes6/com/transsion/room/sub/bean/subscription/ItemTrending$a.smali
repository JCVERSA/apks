.class public final Lcom/transsion/room/sub/bean/subscription/ItemTrending$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/sub/bean/subscription/ItemTrending;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/room/sub/bean/subscription/ItemTrending;
    .locals 3

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    .line 7
    .line 8
    sget-object v1, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 15
    .line 16
    sget-object v2, Lcom/transsion/room/sub/bean/subscription/DisplayMeta;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/transsion/room/sub/bean/subscription/DisplayMeta;

    .line 23
    .line 24
    invoke-direct {v0, v1, p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;-><init>(Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;Lcom/transsion/room/sub/bean/subscription/DisplayMeta;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/room/sub/bean/subscription/ItemTrending;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending$a;->a(Landroid/os/Parcel;)Lcom/transsion/room/sub/bean/subscription/ItemTrending;

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
    invoke-virtual {p0, p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending$a;->b(I)[Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
