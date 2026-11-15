.class final Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/viewmodel/HistoryListManager;->s(Ljava/lang/String;Ljava/lang/String;I)V
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
    c = "com.transsion.audio.viewmodel.HistoryListManager$getResourcePosition$1"
    f = "HistoryListManager.kt"
    l = {
        0x91
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $postId:Ljava/lang/String;

.field final synthetic $resourceNum:I

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;


# direct methods
.method constructor <init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audio/viewmodel/HistoryListManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$postId:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$resourceNum:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$postId:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$resourceNum:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->label:I

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
    new-instance p1, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$1;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$subjectId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v6, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$postId:Ljava/lang/String;

    .line 34
    .line 35
    iget v7, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$resourceNum:I

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v3, p1

    .line 39
    invoke-direct/range {v3 .. v8}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v1, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$2;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v1, v3}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v1, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$subjectId:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->$postId:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v1, v3, v4, v5}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput v2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->label:I

    .line 68
    .line 69
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1
.end method
