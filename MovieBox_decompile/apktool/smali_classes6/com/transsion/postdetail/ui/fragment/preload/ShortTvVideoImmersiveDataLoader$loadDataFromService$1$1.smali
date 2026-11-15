.class final Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.postdetail.ui.fragment.preload.ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1"
    f = "ShortTvVideoImmersiveDataLoader.kt"
    l = {
        0x21,
        0x23,
        0x25,
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
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
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;-><init>(Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v5, :cond_2

    .line 15
    .line 16
    if-eq v1, v4, :cond_1

    .line 17
    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lkotlinx/coroutines/flow/b;

    .line 34
    .line 35
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v1, p1

    .line 53
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 54
    .line 55
    sget-object p1, Lmg/b;->a:Lmg/b$a;

    .line 56
    .line 57
    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;->n()Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-static {v7}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const-string v8, "toJson(...)"

    .line 68
    .line 69
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v7}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;->l(Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;)Lao/d;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    sget-object v7, Lgg/a;->a:Lgg/a$a;

    .line 85
    .line 86
    invoke-virtual {v7}, Lgg/a$a;->a()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    iput v5, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    .line 93
    .line 94
    invoke-interface {v2, v7, p1, p0}, Lao/d;->d(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v0, :cond_4

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_4
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v5, "0"

    .line 108
    .line 109
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_5

    .line 114
    .line 115
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 116
    .line 117
    iput v4, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    .line 118
    .line 119
    invoke-interface {v1, v6, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v0, :cond_7

    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_5
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 131
    .line 132
    iput v3, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    .line 133
    .line 134
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-ne p1, v0, :cond_7

    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_6
    iput-object v6, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 142
    .line 143
    iput v2, p0, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    .line 144
    .line 145
    invoke-interface {v1, v6, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-ne p1, v0, :cond_7

    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p1
.end method
