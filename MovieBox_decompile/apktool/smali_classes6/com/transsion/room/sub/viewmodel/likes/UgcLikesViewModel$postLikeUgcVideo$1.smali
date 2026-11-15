.class final Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->j(Ljava/lang/String;Z)V
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
    c = "com.transsion.room.sub.viewmodel.likes.UgcLikesViewModel$postLikeUgcVideo$1"
    f = "UgcLikesViewModel.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isLike:Z

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$isLike:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->this$0:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

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
    new-instance p1, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$isLike:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->this$0:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;-><init>(Ljava/lang/String;ZLcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "ugcVideoId"

    .line 39
    .line 40
    iget-object v3, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$isLike:Z

    .line 46
    .line 47
    xor-int/2addr v1, v2

    .line 48
    const-string v3, "reqType"

    .line 49
    .line 50
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lmg/b;->a:Lmg/b$a;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v3, "toString(...)"

    .line 64
    .line 65
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    iget-object v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->this$0:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->d(Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;)Lop/a;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    sget-object v4, Lgg/a;->a:Lgg/a$a;

    .line 81
    .line 82
    invoke-virtual {v4}, Lgg/a$a;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iput-object v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput v2, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->label:I

    .line 89
    .line 90
    invoke-interface {v3, v4, p1, p0}, Lop/a;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_2

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_2
    move-object v0, v1

    .line 98
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->e()Landroidx/lifecycle/b0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 116
    .line 117
    const-class v1, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v3, "getSimpleName(...)"

    .line 124
    .line 125
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v4, "exceptionHandler "

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v0, v1, p1, v2}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p1
.end method
