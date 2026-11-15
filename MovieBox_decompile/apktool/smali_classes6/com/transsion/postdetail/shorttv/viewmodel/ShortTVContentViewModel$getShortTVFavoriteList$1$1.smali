.class final Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/b;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/transsion/moviedetailapi/bean/ShortTVRespData;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.postdetail.shorttv.viewmodel.ShortTVContentViewModel$getShortTVFavoriteList$1$1"
    f = "ShortTVContentViewModel.kt"
    l = {
        0x6c,
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $nextPage:Ljava/lang/String;

.field final synthetic $perPage:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->this$0:Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->$nextPage:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->$perPage:I

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
    .locals 4
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
    new-instance v0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->this$0:Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->$nextPage:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->$perPage:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;-><init>(Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->label:I

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
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v1, p1

    .line 41
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->this$0:Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->f(Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;)Lao/b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v4, Lgg/a;->a:Lgg/a$a;

    .line 50
    .line 51
    invoke-virtual {v4}, Lgg/a$a;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v5, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->$nextPage:Ljava/lang/String;

    .line 56
    .line 57
    iget v6, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->$perPage:I

    .line 58
    .line 59
    iput-object v1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    iput v3, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->label:I

    .line 62
    .line 63
    invoke-interface {p1, v4, v5, v6, p0}, Lao/b;->c(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_3
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v3, 0x0

    .line 77
    iput-object v3, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    iput v2, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$1;->label:I

    .line 80
    .line 81
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_4

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p1
.end method
