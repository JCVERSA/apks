.class final Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->v()V
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
    c = "com.transsion.rewardscenter.task.dada.DadaActivateView$handleActionClick$1"
    f = "DaDaActivateView.kt"
    l = {
        0xfb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenter/task/dada/DadaActivateView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->h(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->g(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget p1, Lcom/transsion/rewardscenter/R$string;->claim_failed:I

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string p0, "getString(...)"

    .line 14
    .line 15
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    invoke-static {p0, p2}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 3
    .line 4
    invoke-static {p0, v1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$setTaskState(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenter/task/dada/DadaTaskState;)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/TaskRewards;->getCurrentPoint()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)Lzo/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->C(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget v1, Lcom/transsion/rewardscenter/R$string;->claim_points_receive_tips:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->getStage1stTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 p0, 0x3

    .line 58
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-array v2, v0, [Ljava/lang/Object;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    aput-object p0, v2, v3

    .line 66
    .line 67
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "getString(...)"

    .line 72
    .line 73
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->label:I

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
    goto :goto_1

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
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->getStage1stTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v1, 0x0

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 44
    .line 45
    new-instance v4, Lcom/transsion/rewardscenter/task/dada/l;

    .line 46
    .line 47
    invoke-direct {v4, v3}, Lcom/transsion/rewardscenter/task/dada/l;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 51
    .line 52
    new-instance v5, Lcom/transsion/rewardscenter/task/dada/m;

    .line 53
    .line 54
    invoke-direct {v5, v3}, Lcom/transsion/rewardscenter/task/dada/m;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)V

    .line 55
    .line 56
    .line 57
    iput v2, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->label:I

    .line 58
    .line 59
    invoke-virtual {p1, v1, v4, v5, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->u(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v0, :cond_3

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p1
.end method
