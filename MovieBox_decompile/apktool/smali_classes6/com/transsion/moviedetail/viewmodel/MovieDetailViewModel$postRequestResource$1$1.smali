.class final Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/publish/model/PostEntity;",
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
    c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$postRequestResource$1$1"
    f = "MovieDetailViewModel.kt"
    l = {
        0xfb,
        0xfd,
        0xff
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $before:Z

.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->$subjectId:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->$before:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

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
    new-instance v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->$before:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;-><init>(Ljava/lang/String;ZLcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v1, p1

    .line 47
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 48
    .line 49
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v6, "subjectId"

    .line 55
    .line 56
    iget-object v7, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->$subjectId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->$before:Z

    .line 62
    .line 63
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const-string v7, "before"

    .line 68
    .line 69
    invoke-virtual {p1, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    .line 71
    .line 72
    sget-object v6, Lmg/b;->a:Lmg/b$a;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v7, "toString(...)"

    .line 79
    .line 80
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, p1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    iget-object v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 90
    .line 91
    invoke-static {v6}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->n(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Lom/a;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    sget-object v7, Lgg/a;->a:Lgg/a$a;

    .line 96
    .line 97
    invoke-virtual {v7}, Lgg/a$a;->a()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    iput-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput v4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->label:I

    .line 104
    .line 105
    invoke-interface {v6, v7, p1, p0}, Lom/a;->f(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, v0, :cond_4

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_4
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    move-object p1, v5

    .line 116
    :goto_2
    if-eqz p1, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    goto :goto_3

    .line 123
    :cond_6
    move-object v4, v5

    .line 124
    :goto_3
    const-string v6, "0"

    .line 125
    .line 126
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_7

    .line 131
    .line 132
    iput-object v5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->L$0:Ljava/lang/Object;

    .line 133
    .line 134
    iput v3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->label:I

    .line 135
    .line 136
    invoke-interface {v1, v5, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v0, :cond_8

    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_7
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object v5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->L$0:Ljava/lang/Object;

    .line 148
    .line 149
    iput v2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$1;->label:I

    .line 150
    .line 151
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-ne p1, v0, :cond_8

    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 159
    .line 160
    return-object p1
.end method
