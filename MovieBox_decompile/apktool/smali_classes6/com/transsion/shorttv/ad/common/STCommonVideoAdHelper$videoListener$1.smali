.class public final Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

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
    .locals 11

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 5
    .line 6
    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->FAILED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lyq/a;->a:Lyq/a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

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
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v3, v4

    .line 51
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lyq/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlinx/coroutines/n0;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    new-instance v8, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingError$1;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 67
    .line 68
    invoke-direct {v8, v0, p1, v4}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingError$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/hisavana/common/bean/TAdErrorCode;Lkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    const/4 v9, 0x2

    .line 72
    const/4 v10, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

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
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 5
    .line 6
    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lyq/a;->a:Lyq/a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

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
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->l(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlinx/coroutines/n0;

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
    new-instance v7, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 57
    .line 58
    invoke-direct {v7, p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/coroutines/Continuation;)V

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
    .locals 10

    .line 1
    invoke-super {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 5
    .line 6
    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->CLOSED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "onBiddingWrapperAdClose, isRewarded="

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-object v2, v3

    .line 57
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlinx/coroutines/n0;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-instance v7, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdClose$1;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 79
    .line 80
    invoke-direct {v7, v0, p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdClose$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;ZLkotlin/coroutines/Continuation;)V

    .line 81
    .line 82
    .line 83
    const/4 v8, 0x2

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Loh/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

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
    const-string v3, "onBiddingWrapperAdRewarded"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v3, v1}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->m(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlinx/coroutines/n0;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-instance v6, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdRewarded$1;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 51
    .line 52
    invoke-direct {v6, p1, v2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdRewarded$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 53
    .line 54
    .line 55
    const/4 v7, 0x2

    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 59
    .line 60
    .line 61
    return-void
.end method
