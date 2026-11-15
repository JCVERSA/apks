.class public final Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J:\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001eJ\u0006\u0010\u001f\u001a\u00020\u0003J\u0013\u0010 \u001a\u00020\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001J\u0016\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0005\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000b\"\u0004\u0008\u0018\u0010\r\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;",
        "Landroid/os/Parcelable;",
        "followerCount",
        "",
        "followingCount",
        "isSubscribed",
        "",
        "publishCount",
        "<init>",
        "(ILjava/lang/Integer;Ljava/lang/Boolean;I)V",
        "getFollowerCount",
        "()I",
        "setFollowerCount",
        "(I)V",
        "getFollowingCount",
        "()Ljava/lang/Integer;",
        "setFollowingCount",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "()Ljava/lang/Boolean;",
        "setSubscribed",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getPublishCount",
        "setPublishCount",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(ILjava/lang/Integer;Ljava/lang/Boolean;I)Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private followerCount:I

.field private followingCount:Ljava/lang/Integer;

.field private isSubscribed:Ljava/lang/Boolean;

.field private publishCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;-><init>(ILjava/lang/Integer;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/Boolean;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 4
    iput-object p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 6
    iput p4, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 8
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 9
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;-><init>(ILjava/lang/Integer;Ljava/lang/Boolean;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;ILjava/lang/Integer;Ljava/lang/Boolean;IILjava/lang/Object;)Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget p4, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->copy(ILjava/lang/Integer;Ljava/lang/Boolean;I)Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(ILjava/lang/Integer;Ljava/lang/Boolean;I)Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;-><init>(ILjava/lang/Integer;Ljava/lang/Boolean;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    .line 43
    .line 44
    iget p1, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    .line 45
    .line 46
    if-eq v1, p1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    return v0
.end method

.method public final getFollowerCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFollowingCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPublishCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :goto_1
    add-int/2addr v0, v2

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public final isSubscribed()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setFollowerCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFollowingCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPublishCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSubscribed(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "SubscriptionStatsBean(followerCount="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", followingCount="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", isSubscribed="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", publishCount="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
