.class final Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/CommentViewModel;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
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
    c = "com.transsion.postdetail.viewmodel.CommentViewModel$getCommentList$1"
    f = "CommentViewModel.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $locCommentId:Ljava/lang/String;

.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field final synthetic $postId:Ljava/lang/String;

.field final synthetic $rootCommentId:Ljava/lang/String;

.field final synthetic $topicType:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$postId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$topicType:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$rootCommentId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$page:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$locCommentId:Ljava/lang/String;

    .line 12
    .line 13
    iput p7, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$perPage:I

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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
    new-instance p1, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$postId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$topicType:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$rootCommentId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$page:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$locCommentId:Ljava/lang/String;

    .line 14
    .line 15
    iget v7, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$perPage:I

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;-><init>(Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->label:I

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
    new-instance p1, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1$1;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$postId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$topicType:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v7, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$rootCommentId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v8, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$page:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v9, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$locCommentId:Ljava/lang/String;

    .line 40
    .line 41
    iget v10, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->$perPage:I

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    move-object v3, p1

    .line 45
    invoke-direct/range {v3 .. v11}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1$1;-><init>(Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->t(Lkotlinx/coroutines/flow/a;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v1, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1$2;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {v1, v3}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v1, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1$a;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 73
    .line 74
    invoke-direct {v1, v3}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1$a;-><init>(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)V

    .line 75
    .line 76
    .line 77
    iput v2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;->label:I

    .line 78
    .line 79
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v0, :cond_2

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p1
.end method
