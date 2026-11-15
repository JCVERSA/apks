.class final Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Pair<",
        "+",
        "Landroid/graphics/Bitmap;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/Pair;",
        "Landroid/graphics/Bitmap;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lkotlin/Pair;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.push.helper.PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1"
    f = "PushPermanentShowHelper.kt"
    l = {
        0x154
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $index:I

.field final synthetic $msgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PermanentItemBean;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PermanentItemBean;",
            ">;I",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$msgList:Ljava/util/List;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$index:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$context:Landroid/content/Context;

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
    new-instance p1, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$msgList:Ljava/util/List;

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$index:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;-><init>(Ljava/util/List;ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$msgList:Ljava/util/List;

    .line 28
    .line 29
    iget v1, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$index:I

    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/transsion/push/bean/PermanentItemBean;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/push/bean/PermanentItemBean;->getImage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    const-string p1, ""

    .line 44
    .line 45
    :cond_2
    sget-object v1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 46
    .line 47
    sget-object v3, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/transsion/push/helper/e;->g()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v1, p1, v3}, Lcom/transsion/push/utils/NotificationUtil;->J(Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v1, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1$1;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$context:Landroid/content/Context;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-direct {v1, v3, p1, v4}, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 63
    .line 64
    .line 65
    iput v2, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->label:I

    .line 66
    .line 67
    const-wide/16 v2, 0x1388

    .line 68
    .line 69
    invoke-static {v2, v3, v1, p0}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_3

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    :goto_0
    iget v0, p0, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1;->$index:I

    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method
