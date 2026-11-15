.class final Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.audio.viewmodel.HistoryListManager$addToList$1$1"
    f = "HistoryListManager.kt"
    l = {
        0x67,
        0x69,
        0x6b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $audioBean:Lcom/transsion/baselib/db/audio/AudioBean;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/audio/AudioBean;",
            "Lcom/transsion/audio/viewmodel/HistoryListManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->$audioBean:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

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
    new-instance p1, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->$audioBean:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_3

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
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->$audioBean:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->f(Lcom/transsion/audio/viewmodel/HistoryListManager;)Lsi/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    iget-object v1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->$audioBean:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 63
    .line 64
    iput v4, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->label:I

    .line 65
    .line 66
    invoke-interface {p1, v1, p0}, Lsi/a;->h(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_4

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->f(Lcom/transsion/audio/viewmodel/HistoryListManager;)Lsi/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    iput v3, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->label:I

    .line 82
    .line 83
    invoke-interface {p1, p0}, Lsi/a;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v0, :cond_5

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    const/4 p1, 0x0

    .line 94
    :goto_2
    if-eqz p1, :cond_7

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/16 v3, 0x1e

    .line 101
    .line 102
    if-le v1, v3, :cond_7

    .line 103
    .line 104
    iget-object v1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->f(Lcom/transsion/audio/viewmodel/HistoryListManager;)Lsi/a;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    sub-int/2addr v3, v4

    .line 117
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 122
    .line 123
    iput v2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1$1;->label:I

    .line 124
    .line 125
    invoke-interface {v1, p1, p0}, Lsi/a;->b(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-ne p1, v0, :cond_7

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
