.class public final Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;
.super Lcom/transsion/ad/bidding/base/x;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

.field private static final k:Lkotlin/Lazy;


# instance fields
.field private final d:Ljava/util/concurrent/ConcurrentLinkedDeque;

.field private final e:Ljava/util/concurrent/ConcurrentSkipListSet;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/hisavana/mediation/ad/TNativeAd;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/ad/bidding/nativead/b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/b;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->k:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/x;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/ad/bidding/nativead/a;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/a;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->q()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->r(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdNativeInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

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

.method private final k()Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->pollFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->k()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    return-object v0
.end method

.method private final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->g:Ljava/lang/String;

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

.method private final n()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->l(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-lt v1, v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-object v5, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, " --> isUpperLimit() --- \u8fbe\u5230\u9608\u503c\u4e86 --> nativeInfoList.size = "

    .line 44
    .line 45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, " -- cacheUpperLimit = "

    .line 52
    .line 53
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v4, 0x5

    .line 64
    const-string v5, "ad_n"

    .line 65
    .line 66
    invoke-virtual {v3, v5, v0, v4, v2}, Lxh/a;->l(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return v1
.end method

.method public static synthetic p(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->o(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final q()Ljava/util/Map;
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

.method private static final r(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "getAdId(...)"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_0
    return v0
.end method

.method public static synthetic t(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->s(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final g(Loh/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$enterScene$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$enterScene$1;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final i()Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TNativeAd;->getNativeAdInfo()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 12
    .line 13
    check-cast v0, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->k()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->n()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, "\u540c\u6b65\u83b7\u53d6\u5e7f\u544a\uff0c\u7ee7\u7eed\u88c5\u586b\u7f13\u5b58\u6c60"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->o(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object v0
.end method

.method public final j()Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ad/hi/HiSavanaAdManager;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "ad_n"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, " --> loadAd("

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ") --> \u5e7f\u544aSDK\u6ca1\u6709\u521d\u59cb\u5316"

    .line 40
    .line 41
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v3, 0x6

    .line 49
    invoke-virtual {v0, v2, p1, v3, v1}, Lxh/a;->l(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 69
    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    new-instance p1, Lcom/hisavana/mediation/ad/TNativeAd;

    .line 73
    .line 74
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->l()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-direct {p1, v0, v3}, Lcom/hisavana/mediation/ad/TNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 86
    .line 87
    new-instance v0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lfe/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lxh/a;->a:Lxh/a;

    .line 104
    .line 105
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->l()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v5, "============= "

    .line 119
    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, " --> loadAd() --> mPlacementId = "

    .line 127
    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v0, " --> create TNativeAd() =================== "

    .line 135
    .line 136
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/4 v3, 0x5

    .line 144
    invoke-virtual {p1, v2, v0, v3, v1}, Lxh/a;->l(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 145
    .line 146
    .line 147
    :cond_2
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 148
    .line 149
    if-eqz p1, :cond_3

    .line 150
    .line 151
    invoke-virtual {p1}, Lfe/b;->loadAd()V

    .line 152
    .line 153
    .line 154
    :cond_3
    return-void
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Loh/a;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 9

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lxh/a;->a:Lxh/a;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->l()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x0

    .line 33
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " --> onLoadFailure() --> placementId = "

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " --> errorMessage = "

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/16 v7, 0x8

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    const-string v3, "ad_n"

    .line 65
    .line 66
    const/4 v5, 0x6

    .line 67
    const/4 v6, 0x0

    .line 68
    invoke-static/range {v2 .. v8}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Loh/a;

    .line 88
    .line 89
    invoke-virtual {v1, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TNativeAd;->getNativeAdInfo()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 20
    .line 21
    check-cast v0, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->n()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, "\u7f13\u5b58\u6c60\u6ca1\u6709\u8fbe\u5230\u9608\u503c\uff0c\u7ee7\u7eed\u8bf7\u6c42"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->o(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Loh/a;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Loh/a;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p2, p1

    .line 41
    check-cast p2, Ljava/util/Map;

    .line 42
    .line 43
    iget-object p1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p3, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/transsion/ad/hi/HiSavanaAdManager;->f()Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-nez p3, :cond_3

    .line 69
    .line 70
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_3
    sget-object p3, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    .line 74
    .line 75
    iput-object p1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p2, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    iput v3, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->label:I

    .line 80
    .line 81
    invoke-virtual {p3, p1, v0}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    if-ne p3, v1, :cond_4

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_4
    :goto_1
    check-cast p3, Lkotlin/Pair;

    .line 89
    .line 90
    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    check-cast p3, Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-eqz p3, :cond_5

    .line 101
    .line 102
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_5
    sget-object p3, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 106
    .line 107
    invoke-virtual {p3, p1}, Lcom/transsion/ad/scene/c;->a(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_6

    .line 112
    .line 113
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->m()Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_7

    .line 121
    .line 122
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v3, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;

    .line 134
    .line 135
    const/4 p3, 0x0

    .line 136
    invoke-direct {v3, p1, p0, p2, p3}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;-><init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    .line 137
    .line 138
    .line 139
    const/4 v4, 0x3

    .line 140
    const/4 v5, 0x0

    .line 141
    const/4 v1, 0x0

    .line 142
    const/4 v2, 0x0

    .line 143
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 144
    .line 145
    .line 146
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    return-object p1
.end method

.method public final u(Loh/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
