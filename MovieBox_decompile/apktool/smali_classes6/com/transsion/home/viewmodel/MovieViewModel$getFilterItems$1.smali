.class final Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/MovieViewModel;->h(Ljava/lang/Integer;Ljava/lang/String;)V
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
    c = "com.transsion.home.viewmodel.MovieViewModel$getFilterItems$1"
    f = "MovieViewModel.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $tabId:Ljava/lang/Integer;

.field final synthetic $version:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/MovieViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/viewmodel/MovieViewModel;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/viewmodel/MovieViewModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/home/viewmodel/MovieViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->$tabId:Ljava/lang/Integer;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->$version:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance p1, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/home/viewmodel/MovieViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->$tabId:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->$version:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;-><init>(Lcom/transsion/home/viewmodel/MovieViewModel;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->label:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object p1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/home/viewmodel/MovieViewModel;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/transsion/home/viewmodel/MovieViewModel;->f(Lcom/transsion/home/viewmodel/MovieViewModel;)Lyk/c;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 36
    .line 37
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v3, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->$tabId:Ljava/lang/Integer;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v3, 0x0

    .line 51
    :goto_0
    iget-object v4, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->$version:Ljava/lang/String;

    .line 52
    .line 53
    iput v2, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->label:I

    .line 54
    .line 55
    invoke-interface {p1, v1, v3, v4, p0}, Lyk/c;->b(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v0, :cond_3

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/home/viewmodel/MovieViewModel;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/MovieViewModel;->j()Landroidx/lifecycle/b0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/home/viewmodel/MovieViewModel;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/MovieViewModel;->j()Landroidx/lifecycle/b0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 84
    .line 85
    invoke-direct {v0}, Lcom/tn/lib/net/bean/BaseDto;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p1
.end method
