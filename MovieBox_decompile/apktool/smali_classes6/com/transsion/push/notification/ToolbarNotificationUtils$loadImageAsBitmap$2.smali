.class final Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/notification/ToolbarNotificationUtils;->t(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Landroid/graphics/Bitmap;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Landroid/graphics/Bitmap;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.push.notification.ToolbarNotificationUtils$loadImageAsBitmap$2"
    f = "ToolbarNotificationUtils.kt"
    l = {
        0x1f6
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $dp20:I

.field final synthetic $url:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->$url:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->$dp20:I

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
    new-instance p1, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->$dp20:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->label:I

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
    iget-object v0, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->$url:Ljava/lang/String;

    .line 32
    .line 33
    iget v3, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->$dp20:I

    .line 34
    .line 35
    iput-object p1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    iput v3, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->I$0:I

    .line 38
    .line 39
    iput v2, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->label:I

    .line 40
    .line 41
    new-instance v8, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 42
    .line 43
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v8, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 51
    .line 52
    .line 53
    sget-object v9, Lzg/c;->a:Lzg/c$a;

    .line 54
    .line 55
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 56
    .line 57
    const/4 v6, 0x4

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x1

    .line 61
    move-object v2, p1

    .line 62
    invoke-static/range {v1 .. v7}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v1, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2$a;

    .line 67
    .line 68
    invoke-direct {v1, v8}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2$a;-><init>(Lkotlinx/coroutines/n;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, p1, v1}, Lzg/c$a;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-ne p1, v1, :cond_2

    .line 83
    .line 84
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    if-ne p1, v0, :cond_3

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_3
    :goto_0
    return-object p1
.end method
