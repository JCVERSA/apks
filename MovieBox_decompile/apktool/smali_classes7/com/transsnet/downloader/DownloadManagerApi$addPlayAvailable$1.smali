.class final Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/DownloadManagerApi;->T(Ljava/lang/String;Ljava/lang/String;ZIZZ)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
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
    c = "com.transsnet.downloader.DownloadManagerApi$addPlayAvailable$1"
    f = "DownloadManagerApi.kt"
    l = {
        0x330
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $needNotify:Z

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $totalEpisode:I

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/DownloadManagerApi;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/transsnet/downloader/DownloadManagerApi;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/transsnet/downloader/DownloadManagerApi;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$subjectId:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$totalEpisode:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$needNotify:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$resourceId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$totalEpisode:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$needNotify:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$resourceId:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;-><init>(Ljava/lang/String;ILcom/transsnet/downloader/DownloadManagerApi;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->label:I

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
    iget-boolean v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->Z$0:Z

    .line 13
    .line 14
    iget v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->I$0:I

    .line 15
    .line 16
    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$2:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v5, Lcom/transsnet/downloader/DownloadManagerApi;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$subjectId:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v4, :cond_5

    .line 46
    .line 47
    iget v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$totalEpisode:I

    .line 48
    .line 49
    iget-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$needNotify:Z

    .line 52
    .line 53
    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$resourceId:Ljava/lang/String;

    .line 54
    .line 55
    sget-object v6, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iput-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$1:Ljava/lang/Object;

    .line 64
    .line 65
    iput-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$2:Ljava/lang/Object;

    .line 66
    .line 67
    iput v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->I$0:I

    .line 68
    .line 69
    iput-boolean p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->Z$0:Z

    .line 70
    .line 71
    iput v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->label:I

    .line 72
    .line 73
    invoke-virtual {v6, v4, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->o(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-ne v6, v0, :cond_2

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_2
    move v0, p1

    .line 81
    move-object p1, v6

    .line 82
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/4 p1, -0x1

    .line 92
    :goto_1
    if-gt v1, p1, :cond_4

    .line 93
    .line 94
    invoke-static {v5}, Lcom/transsnet/downloader/DownloadManagerApi;->y(Lcom/transsnet/downloader/DownloadManagerApi;)Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    new-instance p1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 104
    .line 105
    invoke-direct {p1, v4, v3, v2, v2}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 109
    .line 110
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 117
    .line 118
    const-class v1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, "getName(...)"

    .line 125
    .line 126
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-wide/16 v2, 0x0

    .line 130
    .line 131
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 132
    .line 133
    .line 134
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    const/4 p1, 0x0

    .line 138
    :goto_2
    return-object p1
.end method
