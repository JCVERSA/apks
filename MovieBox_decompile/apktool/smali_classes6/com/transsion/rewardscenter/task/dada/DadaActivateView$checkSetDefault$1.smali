.class final Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->q(JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.rewardscenter.task.dada.DadaActivateView$checkSetDefault$1"
    f = "DaDaActivateView.kt"
    l = {
        0x191,
        0x193
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onFailure:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $time:J

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenter/task/dada/DadaActivateView;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->g(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Lcom/transsion/rewardscenterapi/DaDaInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->h(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Lcom/transsion/rewardscenterapi/DaDaInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)Lzo/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Lcom/transsion/rewardscenterapi/DaDaInfo;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)Lzo/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DaDaInfo;->isSetDefault()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_2
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v0, "--> checkDadaSetDefault: "

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/4 v5, 0x4

    .line 61
    const/4 v6, 0x0

    .line 62
    const-string v2, "RewardsCenter"

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DaDaInfo;->isSetDefault()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/4 p2, 0x1

    .line 75
    if-ne p1, p2, :cond_3

    .line 76
    .line 77
    sget-object p1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->SET_DEFAULT:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 78
    .line 79
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$setTaskState(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenter/task/dada/DadaTaskState;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
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
    new-instance p1, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$time:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)Lzo/a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lzo/a;->a()Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->showLoading()V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-wide v4, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$time:J

    .line 60
    .line 61
    const-wide/16 v6, 0x0

    .line 62
    .line 63
    cmp-long p1, v4, v6

    .line 64
    .line 65
    if-lez p1, :cond_4

    .line 66
    .line 67
    iput v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->label:I

    .line 68
    .line 69
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_4

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    :goto_0
    sget-object p1, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    .line 81
    .line 82
    new-instance v4, Lcom/transsion/rewardscenter/task/dada/j;

    .line 83
    .line 84
    invoke-direct {v4, v1, v3}, Lcom/transsion/rewardscenter/task/dada/j;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    new-instance v5, Lcom/transsion/rewardscenter/task/dada/k;

    .line 92
    .line 93
    invoke-direct {v5, v1, v3}, Lcom/transsion/rewardscenter/task/dada/k;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;)V

    .line 94
    .line 95
    .line 96
    iput v2, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->label:I

    .line 97
    .line 98
    invoke-virtual {p1, v4, v5, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->j(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v0, :cond_5

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p1
.end method
