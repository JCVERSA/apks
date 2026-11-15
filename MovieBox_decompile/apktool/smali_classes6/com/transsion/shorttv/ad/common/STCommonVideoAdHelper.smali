.class public final Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlinx/coroutines/n0;

.field private c:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private e:Lkotlin/jvm/functions/Function3;

.field private f:Lkotlin/jvm/functions/Function0;

.field private g:Lkotlin/jvm/functions/Function1;

.field private h:Ljava/lang/String;

.field private i:Lcom/transsion/shorttv/ad/AdLoadState;

.field private j:Z

.field private final k:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V
    .locals 1

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 21
    .line 22
    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->IDLE:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 25
    .line 26
    new-instance p1, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlinx/coroutines/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->c:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic i(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic o(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/ad/bidding/video/BiddingVideoManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->c:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic q(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->p(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final p(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->DESTROYED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->c:Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    const-string v0, "trigger destroy"

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq p1, v2, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq p1, v2, :cond_0

    .line 24
    .line 25
    :try_start_1
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v2, v0, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, "trigger destroy when ad closed"

    .line 42
    .line 43
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v0, v2, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "trigger destroy before load"

    .line 54
    .line 55
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v2, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 64
    .line 65
    const-string v2, "trigger destroy when load error"

    .line 66
    .line 67
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, v0, v2, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, v2, v0, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->c:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 87
    .line 88
    .line 89
    :cond_4
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->c:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 90
    .line 91
    :cond_5
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 92
    .line 93
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e:Lkotlin/jvm/functions/Function3;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->f:Lkotlin/jvm/functions/Function0;

    .line 96
    .line 97
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g:Lkotlin/jvm/functions/Function1;

    .line 98
    .line 99
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :goto_2
    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t(Lkotlin/jvm/functions/Function3;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "trigger load ad error, sceneId is null"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 22
    .line 23
    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->LOADING:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "trigger load ad error, current ad is loading"

    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "trigger load ad error, current ad is already loaded succeed"

    .line 48
    .line 49
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 56
    .line 57
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v6, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-direct {v6, p0, p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    const/4 v7, 0x2

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final u(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->c:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    move-object v3, v0

    .line 25
    move-object v4, p0

    .line 26
    move-object v5, p2

    .line 27
    move-object v6, p3

    .line 28
    move-object v7, p1

    .line 29
    invoke-direct/range {v3 .. v8}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v4, v0

    .line 36
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h:Ljava/lang/String;

    .line 43
    .line 44
    const-string p3, "trigger show ad error, videoManager or maxEcpmObject is null"

    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2, p3, v0}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
