.class public final Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;
.super Lcom/cloud/hisavana/sdk/api/listener/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

.field private static final i:Lkotlin/Lazy;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Lb7/c;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/ConcurrentLinkedDeque;

.field private final f:Ljava/util/concurrent/ConcurrentSkipListSet;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/ad/bidding/nativead/d;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/d;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->i:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 20
    .line 21
    new-instance v1, Lcom/transsion/ad/bidding/nativead/c;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/c;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->p(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->o()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    .line 2
    .line 3
    return-void
.end method

.method private final j()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method private final m()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget v4, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    .line 29
    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " --> isUpperLimit() --- \u8fbe\u5230\u9608\u503c\u4e86 --> nativeInfoList.size = "

    .line 39
    .line 40
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, " -- cacheUpperLimit = "

    .line 47
    .line 48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/4 v6, 0x4

    .line 59
    const/4 v7, 0x0

    .line 60
    const-string v2, "ad_n"

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-static/range {v1 .. v7}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return v0
.end method

.method private static final o()Ljava/util/Map;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final p(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v2

    .line 26
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v0, :cond_5

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    return v0

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "getAdCreateId(...)"

    .line 69
    .line 70
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    return v0

    .line 80
    :cond_4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string v0, "getImgUrl(...)"

    .line 97
    .line 98
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    return p0

    .line 106
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    .line 111
    .line 112
    .line 113
    move-result-wide p0

    .line 114
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_6

    .line 119
    .line 120
    return p0

    .line 121
    :cond_6
    const/4 p0, 0x0

    .line 122
    return p0
.end method


# virtual methods
.method public final h(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(IZ)Ljava/util/List;
    .locals 4

    .line 1
    iget v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lb7/c;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lb7/c;->u(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->destroy()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :cond_2
    if-eqz p2, :cond_3

    .line 48
    .line 49
    iget-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-ge p2, p1, :cond_3

    .line 56
    .line 57
    move-object p2, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/4 v1, 0x0

    .line 75
    :goto_1
    if-ge v1, p1, :cond_5

    .line 76
    .line 77
    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->pollFirst()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    :goto_2
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_4

    .line 98
    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-nez p2, :cond_6

    .line 113
    .line 114
    move-object v0, p1

    .line 115
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->n()V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method public final k()Lb7/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lb7/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ad/hi/HiSavanaAdManager;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " --> loadAd() --> \u5e7f\u544aSDK\u6ca1\u6709\u521d\u59cb\u5316"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x0

    .line 34
    const-string v2, "ad_n"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static/range {v1 .. v7}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->m()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lb7/c;

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    new-instance v0, Lb7/c;

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->l()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Lb7/c;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lb7/c;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Lb7/a;->p(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lb7/c;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lb7/c;->z(I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    sget-object v2, Lxh/a;->a:Lxh/a;

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->l()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v4, "============= "

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, " --> loadAd() --> mPlacementId = "

    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, " --> create TNativeAd() ============= "

    .line 123
    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const/4 v7, 0x4

    .line 132
    const/4 v8, 0x0

    .line 133
    const-string v3, "ad_n"

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    const/4 v6, 0x0

    .line 137
    invoke-static/range {v2 .. v8}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lb7/c;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lb7/c;->z(I)V

    .line 147
    .line 148
    .line 149
    :cond_5
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lb7/c;

    .line 150
    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    invoke-virtual {v0}, Lb7/c;->v()V

    .line 154
    .line 155
    .line 156
    :cond_6
    return-void
.end method

.method public onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/ad/ps/installed/AppInstallManager;->a:Lcom/transsion/ad/ps/installed/AppInstallManager;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    :cond_0
    const-string p1, "ew\u6ca1\u6709\u4f20\u9012\u8fc7\u6765\u5305\u540d"

    .line 15
    .line 16
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->a(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AppInstalledBean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "EW"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setSource(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "getApp(...)"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->e(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 10
    .line 11
    check-cast p1, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->l()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " --> onError() --> placementId = "

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " --> errorMessage = "

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v2, "ad_n"

    .line 54
    .line 55
    const/4 v3, 0x6

    .line 56
    invoke-virtual {v0, v2, p1, v3, v1}, Lxh/a;->l(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/String;ILjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v6, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    instance-of v2, v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;

    .line 25
    .line 26
    invoke-direct {v2, p0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    iget v0, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->I$0:I

    .line 43
    .line 44
    iget-object v3, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Ljava/util/Map;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move v4, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/transsion/ad/hi/HiSavanaAdManager;->f()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    sget-object v1, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    .line 80
    .line 81
    iput-object v0, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    move-object/from16 v4, p3

    .line 84
    .line 85
    iput-object v4, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->L$1:Ljava/lang/Object;

    .line 86
    .line 87
    move v7, p2

    .line 88
    iput v7, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->I$0:I

    .line 89
    .line 90
    iput v5, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->label:I

    .line 91
    .line 92
    invoke-virtual {v1, p1, v2}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-ne v1, v3, :cond_4

    .line 97
    .line 98
    return-object v3

    .line 99
    :cond_4
    move-object v2, v0

    .line 100
    move-object v3, v4

    .line 101
    move v4, v7

    .line 102
    :goto_1
    check-cast v1, Lkotlin/Pair;

    .line 103
    .line 104
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_5
    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Lcom/transsion/ad/scene/c;->a(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_6
    iget-object v0, v6, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_7

    .line 137
    .line 138
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    new-instance v10, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;

    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    move-object v0, v10

    .line 153
    move-object v1, v2

    .line 154
    move-object v2, p0

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;-><init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;Ljava/util/Map;ILkotlin/coroutines/Continuation;)V

    .line 156
    .line 157
    .line 158
    const/4 v11, 0x3

    .line 159
    const/4 v12, 0x0

    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v9, 0x0

    .line 162
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 163
    .line 164
    .line 165
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 166
    .line 167
    return-object v0
.end method

.method public final r(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
