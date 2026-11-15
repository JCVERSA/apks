.class final Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->J(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V
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
    c = "com.transsnet.downloader.fragment.TransferInnerMainFragment$onTaskStateChange$3"
    f = "TransferInnerMainFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $state:Lcom/transsion/transfer/impl/TaskState;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/TaskState;Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/transfer/impl/TaskState;",
            "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->$state:Lcom/transsion/transfer/impl/TaskState;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

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
    new-instance p1, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->$state:Lcom/transsion/transfer/impl/TaskState;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;-><init>(Lcom/transsion/transfer/impl/TaskState;Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->$state:Lcom/transsion/transfer/impl/TaskState;

    .line 12
    .line 13
    sget-object v0, Lcom/transsion/transfer/impl/TaskState;->FINISH:Lcom/transsion/transfer/impl/TaskState;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->O0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " \u5ba2\u6237\u7aef \u6709\u4f20\u8f93\u5b8c\u6210\uff0c\u5237\u65b0\u6570\u636e"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v5, 0x4

    .line 43
    const/4 v6, 0x0

    .line 44
    const-string v2, "Transfer_d"

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->d0()Landroidx/lifecycle/b0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->k0()Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->N()V

    .line 75
    .line 76
    .line 77
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->O0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->$state:Lcom/transsion/transfer/impl/TaskState;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, "  \u5ba2\u6237\u7aef state:"

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const/4 v4, 0x4

    .line 108
    const/4 v5, 0x0

    .line 109
    const-string v1, "Transfer_d"

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onTaskStateChange$3;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->T0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method
