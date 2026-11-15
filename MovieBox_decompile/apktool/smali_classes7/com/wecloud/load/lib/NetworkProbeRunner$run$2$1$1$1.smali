.class final Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/wecloud/load/lib/n;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lcom/wecloud/load/lib/n;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lcom/wecloud/load/lib/n;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.wecloud.load.lib.NetworkProbeRunner$run$2$1$1$1"
    f = "NetworkProbeRunner.kt"
    l = {
        0x116,
        0x56
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $link:Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

.field final synthetic $semaphore:Lkotlinx/coroutines/sync/h;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/h;Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/h;",
            "Lcom/wecloud/load/lib/NetworkProbeRunner$Link;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$semaphore:Lkotlinx/coroutines/sync/h;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$link:Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

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
    new-instance p1, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$semaphore:Lkotlinx/coroutines/sync/h;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$link:Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;-><init>(Lkotlinx/coroutines/sync/h;Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/wecloud/load/lib/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->label:I

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
    iget-object v0, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lkotlinx/coroutines/sync/h;

    .line 18
    .line 19
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$1:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Lkotlinx/coroutines/sync/h;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object p1, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$semaphore:Lkotlinx/coroutines/sync/h;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$link:Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$1:Ljava/lang/Object;

    .line 56
    .line 57
    iput v3, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->label:I

    .line 58
    .line 59
    invoke-interface {p1, p0}, Lkotlinx/coroutines/sync/h;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-ne v3, v0, :cond_3

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_3
    :goto_0
    :try_start_1
    sget-object v3, Lcom/wecloud/load/lib/NetworkProbeRunner;->a:Lcom/wecloud/load/lib/NetworkProbeRunner;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    iput-object v4, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    iput v2, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->label:I

    .line 74
    .line 75
    invoke-static {v3, v1, p0}, Lcom/wecloud/load/lib/NetworkProbeRunner;->c(Lcom/wecloud/load/lib/NetworkProbeRunner;Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    if-ne v1, v0, :cond_4

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_4
    move-object v0, p1

    .line 83
    move-object p1, v1

    .line 84
    :goto_1
    :try_start_2
    check-cast p1, Lcom/wecloud/load/lib/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    invoke-interface {v0}, Lkotlinx/coroutines/sync/h;->release()V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    move-object v5, v0

    .line 92
    move-object v0, p1

    .line 93
    move-object p1, v5

    .line 94
    :goto_2
    invoke-interface {v0}, Lkotlinx/coroutines/sync/h;->release()V

    .line 95
    .line 96
    .line 97
    throw p1
.end method
