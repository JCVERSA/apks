.class public final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m2(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

.field final synthetic e:Lkotlin/jvm/functions/Function0;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->e:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->f:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->g:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->g:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v3, p1, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->e:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->f:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v2, v0

    .line 19
    move-object v6, p1

    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v4, v0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Loh/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdClose$1;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v3, p1, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdClose$1;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdShowError$1;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->g:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v3, p1, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdShowError$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
