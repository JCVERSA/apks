.class public final Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/lifecycle/b0;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->b:Landroidx/lifecycle/b0;

    .line 17
    .line 18
    new-instance p1, Landroidx/lifecycle/b0;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->c:Landroidx/lifecycle/b0;

    .line 24
    .line 25
    new-instance p1, Landroidx/lifecycle/b0;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->d:Landroidx/lifecycle/b0;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->d(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->b:Landroidx/lifecycle/b0;

    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->c:Landroidx/lifecycle/b0;

    .line 16
    .line 17
    new-instance v0, Lkotlin/Pair;

    .line 18
    .line 19
    invoke-direct {v0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v5, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$claim$1;

    .line 31
    .line 32
    invoke-direct {v5, p1, p0, v1}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$claim$1;-><init>(Ljava/lang/String;Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Lkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    const/4 v6, 0x3

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;)V
    .locals 7

    .line 1
    const-string v0, "requestBody"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;-><init>(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method
