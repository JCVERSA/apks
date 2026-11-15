.class final Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/model/RewardsCenterModel;->e(Ljava/lang/String;)V
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
    c = "com.transsion.rewardscenter.model.RewardsCenterModel$claim$1"
    f = "RewardsCenterModel.kt"
    l = {
        0xcb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $drawResultId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/rewardscenter/model/RewardsCenterModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/rewardscenter/model/RewardsCenterModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->$drawResultId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

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

.method public static synthetic a(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->g(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimResultData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimResultData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p2, p3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->A(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->n()Landroidx/lifecycle/b0;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p2, Lkotlin/Pair;

    .line 19
    .line 20
    invoke-direct {p2, p1, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimResultData;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->A(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->n()Landroidx/lifecycle/b0;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p2, Lkotlin/Pair;

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-direct {p2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
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
    new-instance p1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->$drawResultId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;-><init>(Ljava/lang/String;Lcom/transsion/rewardscenter/model/RewardsCenterModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->label:I

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
    sget-object p1, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->$drawResultId:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 32
    .line 33
    new-instance v4, Lcom/transsion/rewardscenter/model/f;

    .line 34
    .line 35
    invoke-direct {v4, v3, v1}, Lcom/transsion/rewardscenter/model/f;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->$drawResultId:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v6, Lcom/transsion/rewardscenter/model/g;

    .line 43
    .line 44
    invoke-direct {v6, v3, v5}, Lcom/transsion/rewardscenter/model/g;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput v2, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->label:I

    .line 48
    .line 49
    invoke-virtual {p1, v1, v4, v6, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->l(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p1
.end method
