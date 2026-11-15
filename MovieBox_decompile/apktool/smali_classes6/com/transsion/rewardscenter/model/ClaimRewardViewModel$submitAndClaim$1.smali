.class final Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->h(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.rewardscenter.model.ClaimRewardViewModel$submitAndClaim$1"
    f = "ClaimRewardViewModel.kt"
    l = {
        0x19
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $requestBody:Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;",
            "Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->$requestBody:Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->g(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->h(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->g()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->f()Landroidx/lifecycle/b0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Lkotlin/Pair;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getDrawResultId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->c(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->$requestBody:Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;-><init>(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;->g()Landroidx/lifecycle/b0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->$requestBody:Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;

    .line 45
    .line 46
    new-instance v4, Lcom/transsion/rewardscenter/model/c;

    .line 47
    .line 48
    invoke-direct {v4, v3}, Lcom/transsion/rewardscenter/model/c;-><init>(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->$requestBody:Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;

    .line 54
    .line 55
    new-instance v6, Lcom/transsion/rewardscenter/model/d;

    .line 56
    .line 57
    invoke-direct {v6, v3, v5}, Lcom/transsion/rewardscenter/model/d;-><init>(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;)V

    .line 58
    .line 59
    .line 60
    iput v2, p0, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$submitAndClaim$1;->label:I

    .line 61
    .line 62
    invoke-virtual {p1, v1, v4, v6, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->w(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_2

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1
.end method
