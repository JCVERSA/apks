.class final Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1"
    f = "AHAGameResLoader.kt"
    l = {
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $itemId:Ljava/lang/String;

.field final synthetic $pageName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$itemId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$pageName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$itemId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$pageName:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;-><init>(Ljava/lang/String;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->label:I

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
    new-instance p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$itemId:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {p1, v1, v3, v4}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;-><init>(Ljava/lang/String;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$2;

    .line 42
    .line 43
    invoke-direct {v1, v4}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    iget-object v5, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 55
    .line 56
    iget-object v6, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$context:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v7, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$pageName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v8, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->$itemId:Ljava/lang/String;

    .line 61
    .line 62
    move-object v3, v1

    .line 63
    invoke-direct/range {v3 .. v8}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput v2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->label:I

    .line 67
    .line 68
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_2

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p1
.end method
