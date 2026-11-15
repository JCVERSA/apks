.class final Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/util/ShortTVFloatManager;->u(Ldw/a;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.transsion.postdetail.util.ShortTVFloatManager$saveHistoryInner$1"
    f = "ShortTVFloatManager.kt"
    l = {
        0x3e,
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $floatBean:Ldw/a;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ldw/a;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldw/a;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->$floatBean:Ldw/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->$callback:Lkotlin/jvm/functions/Function0;

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
    new-instance p1, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->$floatBean:Ldw/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;-><init>(Ldw/a;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->label:I

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
    goto/16 :goto_1

    .line 19
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
    iget-object v1, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->$floatBean:Ldw/a;

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    iget-object v1, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 46
    .line 47
    invoke-virtual {p1}, Ldw/a;->c()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {p1}, Ldw/a;->n()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v9, "shorttv-----saveHistory, ep:"

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v5, ", progress:"

    .line 69
    .line 70
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/4 v8, 0x4

    .line 81
    const/4 v9, 0x0

    .line 82
    const-string v5, "VideoFloat"

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v4, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    .line 89
    .line 90
    invoke-static {v4}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->g(Lcom/transsion/postdetail/util/ShortTVFloatManager;)Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {p1}, Ldw/a;->r()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {p1}, Ldw/a;->c()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    invoke-virtual {p1}, Ldw/a;->n()J

    .line 103
    .line 104
    .line 105
    move-result-wide v8

    .line 106
    iput-object v1, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput v3, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->label:I

    .line 109
    .line 110
    move-object v10, p0

    .line 111
    invoke-interface/range {v5 .. v10}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->h(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-ne p1, v0, :cond_3

    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance v3, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1$1$1;

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    invoke-direct {v3, v1, v4}, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 126
    .line 127
    .line 128
    iput-object v4, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    iput v2, p0, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;->label:I

    .line 131
    .line 132
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-ne p1, v0, :cond_4

    .line 137
    .line 138
    return-object v0

    .line 139
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 140
    .line 141
    return-object p1
.end method
