.class public final Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlinx/coroutines/n0;

.field private c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private e:Lkotlin/jvm/functions/Function1;

.field private f:Lkotlin/jvm/functions/Function1;

.field private g:Ljava/lang/ref/WeakReference;

.field private h:Ljava/lang/String;

.field private i:Lcom/transsion/shorttv/ad/AdLoadState;

.field private final j:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;


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
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 21
    .line 22
    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->IDLE:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 25
    .line 26
    new-instance p1, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->j:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->j:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->g:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic n(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;IILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->m(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final m(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->DESTROYED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    const-string v0, "trigger destroy"

    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq p1, v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq p1, v2, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    if-eq p1, v2, :cond_0

    .line 27
    .line 28
    :try_start_1
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v2, v0, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "trigger destroy when ad closed"

    .line 45
    .line 46
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v2, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "trigger destroy before load"

    .line 57
    .line 58
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v2, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 67
    .line 68
    const-string v2, "trigger destroy when show error"

    .line 69
    .line 70
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v0, v2, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 79
    .line 80
    const-string v2, "trigger destroy when load error"

    .line 81
    .line 82
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, v0, v2, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v2, v0, v3}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 102
    .line 103
    .line 104
    :cond_5
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 105
    .line 106
    :cond_6
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 107
    .line 108
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e:Lkotlin/jvm/functions/Function1;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->f:Lkotlin/jvm/functions/Function1;

    .line 111
    .line 112
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->g:Ljava/lang/ref/WeakReference;

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 117
    .line 118
    .line 119
    :cond_7
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->g:Ljava/lang/ref/WeakReference;

    .line 120
    .line 121
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 122
    .line 123
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 128
    .line 129
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :goto_2
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q(Lkotlin/jvm/functions/Function1;)V
    .locals 9

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "trigger load ad error, sceneId is null"

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 27
    .line 28
    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->LOADING:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "trigger load ad error, current ad is loading"

    .line 37
    .line 38
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1, v2}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "trigger load ad error, current ad is already loaded succeed"

    .line 53
    .line 54
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1, v2}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 61
    .line 62
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    new-instance v6, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-direct {v6, p0, p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 70
    .line 71
    .line 72
    const/4 v7, 0x2

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final s(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    .line 1
    const-string v0, "layoutProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nativeAdView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 21
    .line 22
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    move-object v3, v0

    .line 30
    move-object v4, p0

    .line 31
    move-object v5, p3

    .line 32
    move-object v6, p2

    .line 33
    move-object v7, p1

    .line 34
    invoke-direct/range {v3 .. v8}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    move-object v4, v0

    .line 41
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "trigger show ad error, nativeManager or maxEcpmObject is null"

    .line 50
    .line 51
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0, v1}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    if-eqz p3, :cond_2

    .line 57
    .line 58
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method
