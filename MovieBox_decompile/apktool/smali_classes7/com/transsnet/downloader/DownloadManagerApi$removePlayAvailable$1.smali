.class final Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/DownloadManagerApi;->A0(Ljava/lang/String;Ljava/lang/String;ZZZ)V
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
    c = "com.transsnet.downloader.DownloadManagerApi$removePlayAvailable$1"
    f = "DownloadManagerApi.kt"
    l = {
        0x364
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $isSeries:Z

.field final synthetic $needNotify:Z

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/DownloadManagerApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsnet/downloader/DownloadManagerApi;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$subjectId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$needNotify:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$resourceId:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$isSeries:Z

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
    new-instance p1, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$needNotify:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$resourceId:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$isSeries:Z

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->label:I

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
    iget-boolean v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->Z$1:Z

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->Z$0:Z

    .line 15
    .line 16
    iget-object v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->L$2:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Lcom/transsnet/downloader/DownloadManagerApi;

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
    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$subjectId:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v3, :cond_5

    .line 46
    .line 47
    iget-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$needNotify:Z

    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$resourceId:Ljava/lang/String;

    .line 52
    .line 53
    iget-boolean v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->$isSeries:Z

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
    iput-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->L$1:Ljava/lang/Object;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->L$2:Ljava/lang/Object;

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->Z$0:Z

    .line 68
    .line 69
    iput-boolean v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->Z$1:Z

    .line 70
    .line 71
    iput v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;->label:I

    .line 72
    .line 73
    invoke-virtual {v6, v3, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->o(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-ne v2, v0, :cond_2

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_2
    move v0, v5

    .line 81
    move-object v7, v2

    .line 82
    move-object v2, p1

    .line 83
    move-object p1, v7

    .line 84
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 p1, -0x1

    .line 94
    :goto_1
    if-gtz p1, :cond_4

    .line 95
    .line 96
    invoke-static {v4}, Lcom/transsnet/downloader/DownloadManagerApi;->x(Lcom/transsnet/downloader/DownloadManagerApi;)Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    new-instance p1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-direct {p1, v3, v2, v1, v0}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 112
    .line 113
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 120
    .line 121
    const-class v1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v2, "getName(...)"

    .line 128
    .line 129
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-wide/16 v2, 0x0

    .line 133
    .line 134
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 135
    .line 136
    .line 137
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    const/4 p1, 0x0

    .line 141
    :goto_2
    return-object p1
.end method
