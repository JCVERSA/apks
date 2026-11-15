.class final Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3;->a(Lcom/transsion/commercialization/gameres/aha/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$3$1"
    f = "AHAGameResLoader.kt"
    l = {}
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

.field final synthetic $response:Lcom/transsion/commercialization/gameres/aha/c;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/gameres/aha/c;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/gameres/aha/c;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$response:Lcom/transsion/commercialization/gameres/aha/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$pageName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$itemId:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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
    new-instance p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$response:Lcom/transsion/commercialization/gameres/aha/c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$pageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$itemId:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;-><init>(Lcom/transsion/commercialization/gameres/aha/c;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$response:Lcom/transsion/commercialization/gameres/aha/c;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "AHAGameRes getGameInfo, success:"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v2, "GameResLoader"

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$context:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$pageName:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$itemId:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$response:Lcom/transsion/commercialization/gameres/aha/c;

    .line 60
    .line 61
    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/commercialization/gameres/aha/c;)Luj/a;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->e(Landroid/content/Context;Luj/a;)Lcom/transsion/commercialization/gameres/GameResView;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method
