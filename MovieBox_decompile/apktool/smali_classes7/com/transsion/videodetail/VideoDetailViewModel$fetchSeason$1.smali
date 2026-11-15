.class final Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/VideoDetailViewModel;->r(Ljava/lang/String;)V
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
    c = "com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1"
    f = "VideoDetailViewModel.kt"
    l = {
        0x6e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/VideoDetailViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/videodetail/VideoDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/videodetail/VideoDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->$subjectId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

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
    new-instance p1, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;-><init>(Ljava/lang/String;Lcom/transsion/videodetail/VideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->$subjectId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->s(Ljava/lang/Object;)Lkotlinx/coroutines/flow/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->$subjectId:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v4, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1;

    .line 38
    .line 39
    invoke-direct {v4, p1, v1, v3}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/a;Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x0

    .line 44
    const-wide/16 v5, 0x1

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/flow/c;->A(Lkotlinx/coroutines/flow/a;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/flow/a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v1, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$2;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-direct {v1, v3, v4}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$2;-><init>(Lcom/transsion/videodetail/VideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v1, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$3;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->$subjectId:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v1, v3, v5, v4}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$3;-><init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 70
    .line 71
    .line 72
    iput v2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->label:I

    .line 73
    .line 74
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/c;->h(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_2

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p1
.end method
