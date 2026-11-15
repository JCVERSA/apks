.class public final Lcom/transsion/home/bean/UGCFilterVideoItem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/bean/UGCFilterVideoItem$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008&\u0008\u0087\u0008\u0018\u0000 52\u00020\u0001:\u00016B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0096\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001e\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJJ\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u0017R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001f\u001a\u0004\u0008 \u0010\u0015R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010!\u001a\u0004\u0008\"\u0010\u0017\"\u0004\u0008#\u0010$R0\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010%\u001a\u0004\u0008&\u0010\u0019\"\u0004\u0008\'\u0010(R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010)\u001a\u0004\u0008*\u0010\u001b\"\u0004\u0008+\u0010,R\u0011\u0010-\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0013\u00100\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u0017R\u0013\u00102\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0017R\u0013\u00104\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u0017\u00a8\u00067"
    }
    d2 = {
        "Lcom/transsion/home/bean/UGCFilterVideoItem;",
        "Ljava/io/Serializable;",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;",
        "content",
        "",
        "channelId",
        "",
        "selectItems",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "nonAdDelegate",
        "<init>",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "component1",
        "()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "()Ljava/util/Map;",
        "component4",
        "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "copy",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lcom/transsion/home/bean/UGCFilterVideoItem;",
        "toString",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;",
        "getContent",
        "Ljava/lang/String;",
        "getChannelId",
        "setChannelId",
        "(Ljava/lang/String;)V",
        "Ljava/util/Map;",
        "getSelectItems",
        "setSelectItems",
        "(Ljava/util/Map;)V",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "getNonAdDelegate",
        "setNonAdDelegate",
        "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V",
        "isAd",
        "()Z",
        "getVideoId",
        "videoId",
        "getTitle",
        "title",
        "getOps",
        "ops",
        "Companion",
        "a",
        "Home_psRelease"
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
.field public static final $stable:I

.field public static final Companion:Lcom/transsion/home/bean/UGCFilterVideoItem$a;


# instance fields
.field private channelId:Ljava/lang/String;

.field private final content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

.field private nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private selectItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/bean/UGCFilterVideoItem$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/bean/UGCFilterVideoItem$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/bean/UGCFilterVideoItem;->Companion:Lcom/transsion/home/bean/UGCFilterVideoItem$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/bean/UGCFilterVideoItem;->$stable:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
            ")V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 3
    iput-object p2, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->channelId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->selectItems:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/home/bean/UGCFilterVideoItem;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/home/bean/UGCFilterVideoItem;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILjava/lang/Object;)Lcom/transsion/home/bean/UGCFilterVideoItem;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->channelId:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->selectItems:Ljava/util/Map;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/home/bean/UGCFilterVideoItem;->copy(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lcom/transsion/home/bean/UGCFilterVideoItem;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->selectItems:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lcom/transsion/home/bean/UGCFilterVideoItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
            ")",
            "Lcom/transsion/home/bean/UGCFilterVideoItem;"
        }
    .end annotation

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/home/bean/UGCFilterVideoItem;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/home/bean/UGCFilterVideoItem;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object v2, v1

    .line 14
    :goto_0
    const-class v3, Lcom/transsion/home/bean/UGCFilterVideoItem;

    .line 15
    .line 16
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    const-string v2, "null cannot be cast to non-null type com.transsion.home.bean.UGCFilterVideoItem"

    .line 25
    .line 26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v2, p1

    .line 30
    check-cast v2, Lcom/transsion/home/bean/UGCFilterVideoItem;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/home/bean/UGCFilterVideoItem;->isAd()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_12

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/transsion/home/bean/UGCFilterVideoItem;->isAd()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_3
    iget-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, v2, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    return v3

    .line 65
    :cond_4
    if-eqz p1, :cond_11

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const v3, -0x7697b173

    .line 72
    .line 73
    .line 74
    if-eq v0, v3, :cond_d

    .line 75
    .line 76
    const v3, 0x1e76f7ac

    .line 77
    .line 78
    .line 79
    if-eq v0, v3, :cond_9

    .line 80
    .line 81
    const v3, 0x7938df55    # 5.999452E34f

    .line 82
    .line 83
    .line 84
    if-eq v0, v3, :cond_5

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_5
    const-string v0, "VERTICAL_RANK"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_6

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_6
    iget-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_1

    .line 111
    :cond_7
    move-object p1, v1

    .line 112
    :goto_1
    iget-object v0, v2, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    goto :goto_5

    .line 129
    :cond_9
    const-string v0, "UGC_COLLECTION"

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_a

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_a
    iget-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_b

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getCollectionId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    goto :goto_2

    .line 151
    :cond_b
    move-object p1, v1

    .line 152
    :goto_2
    iget-object v0, v2, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_c

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getCollectionId()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :cond_c
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    goto :goto_5

    .line 169
    :cond_d
    const-string v0, "UGC_VIDEO"

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_e

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_e
    iget-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_f

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    goto :goto_3

    .line 191
    :cond_f
    move-object p1, v1

    .line 192
    :goto_3
    iget-object v0, v2, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-eqz v0, :cond_10

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    :cond_10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    goto :goto_5

    .line 209
    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 210
    .line 211
    iget-object v0, v2, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 212
    .line 213
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    :goto_5
    return p1

    .line 218
    :cond_12
    :goto_6
    if-ne p0, p1, :cond_13

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_13
    move v0, v3

    .line 222
    :goto_7
    return v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const v3, -0x7697b173

    .line 15
    .line 16
    .line 17
    if-eq v2, v3, :cond_4

    .line 18
    .line 19
    const v3, 0x1e76f7ac

    .line 20
    .line 21
    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    const v3, 0x7938df55    # 5.999452E34f

    .line 25
    .line 26
    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v2, "VERTICAL_RANK"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string v2, "UGC_COLLECTION"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getOps()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    const-string v2, "UGC_VIDEO"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_6
    :goto_0
    return-object v1
.end method

.method public final getSelectItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->selectItems:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const v3, -0x7697b173

    .line 15
    .line 16
    .line 17
    if-eq v2, v3, :cond_4

    .line 18
    .line 19
    const v3, 0x1e76f7ac

    .line 20
    .line 21
    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    const v3, 0x7938df55    # 5.999452E34f

    .line 25
    .line 26
    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v2, "VERTICAL_RANK"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getTitle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v2, "UGC_COLLECTION"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getTitle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const-string v2, "UGC_VIDEO"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :cond_6
    :goto_0
    return-object v1
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/bean/UGCFilterVideoItem;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, "unknown"

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "ad_"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "_"

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "UGC_VIDEO"

    .line 59
    .line 60
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v2, "UGC_COLLECTION"

    .line 86
    .line 87
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getCollectionId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v2, "VERTICAL_RANK"

    .line 113
    .line 114
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :cond_5
    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/bean/UGCFilterVideoItem;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_7

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const v2, -0x7697b173

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eq v1, v2, :cond_5

    .line 29
    .line 30
    const v2, 0x1e76f7ac

    .line 31
    .line 32
    .line 33
    if-eq v1, v2, :cond_3

    .line 34
    .line 35
    const v2, 0x7938df55    # 5.999452E34f

    .line 36
    .line 37
    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v1, "VERTICAL_RANK"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_8

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_8

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string v1, "UGC_COLLECTION"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getCollectionId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const-string v1, "UGC_VIDEO"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    goto :goto_1

    .line 125
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    :cond_8
    :goto_1
    return v3
.end method

.method public final isAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNonAdDelegate(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectItems(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->selectItems:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->content:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->channelId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->selectItems:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/bean/UGCFilterVideoItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "UGCFilterVideoItem(content="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", channelId="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", selectItems="

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
    const-string v0, ", nonAdDelegate="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
