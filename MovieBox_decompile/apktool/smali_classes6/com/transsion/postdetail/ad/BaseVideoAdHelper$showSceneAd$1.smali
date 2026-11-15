.class final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.transsion.postdetail.ad.BaseVideoAdHelper$showSceneAd$1"
    f = "BaseVideoAdHelper.kt"
    l = {}
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

.field final synthetic $onFail:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$sceneId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$onFail:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$sceneId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$onFail:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$sceneId:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "LandscapePauseSceneNew"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$sceneId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$onFail:Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$sceneId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;->$onFail:Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
