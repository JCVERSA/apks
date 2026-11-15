.class public abstract Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;
.super Lcom/transsion/ad/bidding/base/x;
.source "source.java"

# interfaces
.implements Lxh/b;


# instance fields
.field private d:Loh/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/hisavana/common/bean/AdditionalInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/x;-><init>()V

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
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->j(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final j(Ljava/util/List;)Z
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    instance-of v0, p1, Ljava/util/Collection;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 33
    .line 34
    sget-object v2, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->d(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final b(Loh/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->n(Loh/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v1, 0x3

    .line 19
    const-string v2, "destroy() --> \u79fb\u9664\u76d1\u542c"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    move-object v0, p0

    .line 24
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
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
    new-instance v4, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$enterScene$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$enterScene$1;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method public abstract d()Lfe/b;
.end method

.method public abstract e()I
.end method

.method public final f()Lcom/hisavana/common/bean/AdditionalInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d()Lfe/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lfe/b;->hasAd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 23
    .line 24
    return-object v0
.end method

.method public final g()Loh/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lxh/b$a;->a(Lxh/b;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d()Lfe/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lfe/b;->hasAd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final k()V
    .locals 4

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
    const/16 v1, 0x67

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 23
    .line 24
    const-string v3, "\u5e7f\u544aSDK\u6ca1\u6709\u521d\u59cb\u5316"

    .line 25
    .line 26
    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 51
    .line 52
    const-string v3, "\u5f53\u524d\u6b63\u5728\u5c55\u793aHi\u5e7f\u544a"

    .line 53
    .line 54
    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 58
    .line 59
    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d()Lfe/b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 77
    .line 78
    const-string v3, "getAdInstance() == null"

    .line 79
    .line 80
    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 84
    .line 85
    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void

    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d()Lfe/b;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-virtual {v0}, Lfe/b;->loadAd()V

    .line 99
    .line 100
    .line 101
    :cond_6
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->label:I

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
    iput v1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->label:I

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
    iget-object p1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p2, p1

    .line 41
    check-cast p2, Ljava/util/Map;

    .line 42
    .line 43
    iget-object p1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->L$0:Ljava/lang/Object;

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
    iput-object p1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p2, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    iput v3, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->label:I

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
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d()Lfe/b;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    if-eqz p3, :cond_7

    .line 121
    .line 122
    invoke-virtual {p3}, Lfe/b;->hasAd()Z

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    if-ne p3, v3, :cond_7

    .line 127
    .line 128
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v3, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;

    .line 140
    .line 141
    const/4 p3, 0x0

    .line 142
    invoke-direct {v3, p1, p2, p0, p3}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Lkotlin/coroutines/Continuation;)V

    .line 143
    .line 144
    .line 145
    const/4 v4, 0x3

    .line 146
    const/4 v5, 0x0

    .line 147
    const/4 v1, 0x0

    .line 148
    const/4 v2, 0x0

    .line 149
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 150
    .line 151
    .line 152
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p1
.end method

.method public abstract m()V
.end method

.method public final n(Loh/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

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
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onClosed(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->m()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x5

    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->k()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

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
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

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
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lxh/b$a;->b(Lxh/b;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRewarded()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onRewarded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onRewarded()V

    .line 9
    .line 10
    .line 11
    :cond_0
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
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 24
    .line 25
    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public abstract p(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V
.end method

.method public final q(Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x67

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 15
    .line 16
    const-string p3, "activity is null"

    .line 17
    .line 18
    invoke-direct {p2, v0, p3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p3, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 22
    .line 23
    invoke-direct {p3}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    new-instance p2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 43
    .line 44
    const-string p3, "\u5f53\u524d\u6b63\u5728\u5c55\u793aHi\u5e7f\u544a"

    .line 45
    .line 46
    invoke-direct {p2, v0, p3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p3, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 50
    .line 51
    invoke-direct {p3}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x5

    .line 63
    if-ne v1, v2, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f:Ljava/util/Map;

    .line 66
    .line 67
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->p(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d()Lfe/b;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-virtual {v1}, Lfe/b;->hasAd()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v2, 0x1

    .line 82
    if-ne v1, v2, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f:Ljava/util/Map;

    .line 85
    .line 86
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->p(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Loh/a;

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    new-instance p2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 95
    .line 96
    const-string p3, "\u5f53\u524d\u8fd8\u6ca1\u6709\u5e7f\u544a"

    .line 97
    .line 98
    invoke-direct {p2, v0, p3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p3, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 102
    .line 103
    invoke-direct {p3}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2, p3}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->n(Loh/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->k()V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void
.end method
