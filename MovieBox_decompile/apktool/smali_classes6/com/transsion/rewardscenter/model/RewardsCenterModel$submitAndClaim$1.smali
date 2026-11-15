.class final Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/model/RewardsCenterModel;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.transsion.rewardscenter.model.RewardsCenterModel$submitAndClaim$1"
    f = "RewardsCenterModel.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cc:Ljava/lang/String;

.field final synthetic $drawResultId:Ljava/lang/String;

.field final synthetic $iso:Ljava/lang/String;

.field final synthetic $number:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenter/model/RewardsCenterModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$drawResultId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$cc:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$number:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$iso:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->g(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

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
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->A(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->m()Landroidx/lifecycle/b0;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Lkotlin/Pair;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance p1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$drawResultId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$cc:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$number:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$iso:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$cc:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v4, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$number:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v5, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$iso:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    new-instance v7, Lcom/transsion/rewardscenterapi/PhoneInfo;

    .line 40
    .line 41
    invoke-direct {v7, v2, v4, v5}, Lcom/transsion/rewardscenterapi/PhoneInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    iget-object v2, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v2, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    .line 65
    .line 66
    new-instance v4, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;

    .line 67
    .line 68
    iget-object v9, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$drawResultId:Ljava/lang/String;

    .line 69
    .line 70
    const/16 v15, 0x3a

    .line 71
    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    move-object v8, v4

    .line 79
    invoke-direct/range {v8 .. v16}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    .line 81
    .line 82
    iget-object v5, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 83
    .line 84
    new-instance v6, Lcom/transsion/rewardscenter/model/j;

    .line 85
    .line 86
    invoke-direct {v6, v5}, Lcom/transsion/rewardscenter/model/j;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;)V

    .line 87
    .line 88
    .line 89
    iget-object v5, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 90
    .line 91
    iget-object v7, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$drawResultId:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v8, Lcom/transsion/rewardscenter/model/k;

    .line 94
    .line 95
    invoke-direct {v8, v5, v7}, Lcom/transsion/rewardscenter/model/k;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput v3, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->label:I

    .line 99
    .line 100
    invoke-virtual {v2, v4, v6, v8, v0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->w(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-ne v2, v1, :cond_2

    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object v1
.end method
