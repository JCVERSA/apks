.class final Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/notification/ToolbarNotificationUtils;->u(Lkotlin/Pair;Lkotlin/jvm/functions/Function2;)V
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
    c = "com.transsion.push.notification.ToolbarNotificationUtils$loadImages$1"
    f = "ToolbarNotificationUtils.kt"
    l = {
        0x12b,
        0x12c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/transsion/push/bean/ToolbarNoticeItem;",
            "Lcom/transsion/push/bean/ToolbarNoticeItem;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/graphics/Bitmap;",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Pair<",
            "Lcom/transsion/push/bean/ToolbarNoticeItem;",
            "Lcom/transsion/push/bean/ToolbarNoticeItem;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->$pair:Lkotlin/Pair;

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
    new-instance v0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->$pair:Lkotlin/Pair;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/graphics/Bitmap;

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lkotlinx/coroutines/r0;

    .line 35
    .line 36
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 46
    .line 47
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    new-instance v8, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->$pair:Lkotlin/Pair;

    .line 54
    .line 55
    invoke-direct {v8, v1, v4}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    .line 56
    .line 57
    .line 58
    const/4 v9, 0x2

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v5, p1

    .line 62
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    new-instance v8, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1$image2Deferred$1;

    .line 71
    .line 72
    iget-object v5, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->$pair:Lkotlin/Pair;

    .line 73
    .line 74
    invoke-direct {v8, v5, v4}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1$image2Deferred$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    const/4 v9, 0x2

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    move-object v5, p1

    .line 81
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->L$0:Ljava/lang/Object;

    .line 86
    .line 87
    iput v3, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->label:I

    .line 88
    .line 89
    invoke-interface {v1, p0}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-ne v1, v0, :cond_3

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_3
    move-object v11, v1

    .line 97
    move-object v1, p1

    .line 98
    move-object p1, v11

    .line 99
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput v2, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->label:I

    .line 104
    .line 105
    invoke-interface {v1, p0}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-ne v1, v0, :cond_4

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_4
    move-object v0, p1

    .line 113
    move-object p1, v1

    .line 114
    :goto_1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 117
    .line 118
    invoke-interface {v1, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_0
    iget-object p1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 123
    .line 124
    invoke-interface {p1, v4, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p1
.end method
