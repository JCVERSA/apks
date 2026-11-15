.class final Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.commercialization.gameres.ps.PSGameResLoader$loadGameInfo$1$5$1"
    f = "PSGameResLoader.kt"
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

.field final synthetic $response:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ad/ps/model/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ad/ps/model/RecommendInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$pageName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$itemId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$pageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$itemId:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getExists()Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    :goto_0
    if-nez p1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$context:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$pageName:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$itemId:Ljava/lang/String;

    .line 72
    .line 73
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 74
    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v7, "PSGameRes getGameInfo, success:"

    .line 81
    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    const/4 v9, 0x4

    .line 93
    const/4 v10, 0x0

    .line 94
    const-string v6, "GameResLoader"

    .line 95
    .line 96
    const/4 v8, 0x0

    .line 97
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3, v4, p1}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;->d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;)Luj/a;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v1, v2, p1}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;->e(Landroid/content/Context;Luj/a;)Lcom/transsion/commercialization/gameres/GameResView;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 113
    .line 114
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 119
    .line 120
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method
