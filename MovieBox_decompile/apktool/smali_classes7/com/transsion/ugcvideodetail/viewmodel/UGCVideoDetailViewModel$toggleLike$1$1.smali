.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoLikeResponse;",
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
    c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$toggleLike$1$1"
    f = "UGCVideoDetailViewModel.kt"
    l = {
        0x205,
        0x207,
        0x209
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isLike:Z

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->$isLike:Z

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
    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->$isLike:Z

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

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
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    move-object v1, p1

    .line 45
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 46
    .line 47
    new-instance v6, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveEntity;

    .line 48
    .line 49
    invoke-direct {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveEntity;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 53
    .line 54
    iget-boolean v5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->$isLike:Z

    .line 55
    .line 56
    invoke-virtual {v6, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveEntity;->setUgcVideoId(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    xor-int/lit8 p1, v5, 0x1

    .line 60
    .line 61
    invoke-virtual {v6, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveEntity;->setReqType(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->h(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)Lju/a;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iput-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    iput v4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->label:I

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v9, 0x2

    .line 76
    const/4 v10, 0x0

    .line 77
    move-object v8, p0

    .line 78
    invoke-static/range {v5 .. v10}, Lju/a$a;->g(Lju/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveEntity;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_4

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_4
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string v5, "0"

    .line 92
    .line 93
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/4 v5, 0x0

    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-eqz v4, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object v5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    iput v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->label:I

    .line 113
    .line 114
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v0, :cond_6

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_5
    iput-object v5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    iput v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$toggleLike$1$1;->label:I

    .line 124
    .line 125
    invoke-interface {v1, v5, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-ne p1, v0, :cond_6

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
