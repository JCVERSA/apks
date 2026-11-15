.class final Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/util/TimeUtilKt;->b(ILkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/t1;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "",
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
    c = "com.transsion.baseui.util.TimeUtilKt$countdownByFlow$1"
    f = "TimeUtil.kt"
    l = {
        0x146,
        0x147
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $max:I

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->$max:I

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
    new-instance v0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->$max:I

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->label:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->I$0:I

    .line 17
    .line 18
    iget-object v5, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, Lkotlinx/coroutines/flow/b;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->I$0:I

    .line 35
    .line 36
    iget-object v5, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v5, Lkotlinx/coroutines/flow/b;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lkotlinx/coroutines/flow/b;

    .line 50
    .line 51
    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->$max:I

    .line 52
    .line 53
    :goto_0
    if-ge v2, v1, :cond_5

    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iput-object p1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    iput v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->I$0:I

    .line 62
    .line 63
    iput v4, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->label:I

    .line 64
    .line 65
    invoke-interface {p1, v5, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-ne v5, v0, :cond_3

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_3
    move-object v5, p1

    .line 73
    :goto_1
    if-eqz v1, :cond_4

    .line 74
    .line 75
    iput-object v5, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->I$0:I

    .line 78
    .line 79
    iput v3, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->label:I

    .line 80
    .line 81
    const-wide/16 v6, 0x3e8

    .line 82
    .line 83
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v0, :cond_4

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_4
    :goto_2
    move-object p1, v5

    .line 91
    add-int/2addr v1, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p1
.end method
