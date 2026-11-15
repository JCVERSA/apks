.class public final Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 5
    .line 6
    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->FAILED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lyq/a;->a:Lyq/a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "onBiddingError, error="

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v2, v3

    .line 51
    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    new-instance v7, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingError$1;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 67
    .line 68
    invoke-direct {v7, p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingError$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    const/4 v8, 0x2

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 5
    .line 6
    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lyq/a;->a:Lyq/a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v2, v3

    .line 34
    :goto_0
    const-string v4, "onBiddingLoad"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v4, v2}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-instance v7, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingLoad$1;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 57
    .line 58
    invoke-direct {v7, p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingLoad$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    const/4 v8, 0x2

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 5
    .line 6
    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->CLOSED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    const-string v2, "onBiddingWrapperAdClose"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v2, v1}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->m(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Loh/a;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    const-string v3, "onBiddingWrapperAdDisplay"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v3, v1}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v6, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdDisplay$1;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 45
    .line 46
    invoke-direct {v6, p1, v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdDisplay$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    const/4 v7, 0x2

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    const-string v3, "onBiddingWrapperAdShowError"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v3, v1}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v6, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdShowError$1;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 45
    .line 46
    invoke-direct {v6, p1, v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdShowError$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    const/4 v7, 0x2

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 53
    .line 54
    .line 55
    return-void
.end method
