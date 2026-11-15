.class public final Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;-><init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->E(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget v0, Lcom/tn/lib/widget/R$string;->common_failed:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "getString(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->L(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->F(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v4, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1$onBiddingLoad$1;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1$onBiddingLoad$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Loh/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/v$b;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v2, v1, v2}, Lcom/transsion/rewardscenter/task/ad/v$b;-><init>(Lcom/transsion/rewardscenter/task/ad/AdTaskState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-static {p1, v0, v2, v1, v2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->A(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->L(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
