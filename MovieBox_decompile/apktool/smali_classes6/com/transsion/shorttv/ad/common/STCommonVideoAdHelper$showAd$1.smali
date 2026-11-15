.class final Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->u(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.shorttv.ad.common.STCommonVideoAdHelper$showAd$1"
    f = "STCommonVideoAdHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $closeCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rewardedCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$rewardedCallback:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$closeCallback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$activity:Landroid/app/Activity;

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
    new-instance p1, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$rewardedCallback:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$closeCallback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$activity:Landroid/app/Activity;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$rewardedCallback:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$closeCallback:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$activity:Landroid/app/Activity;

    .line 18
    .line 19
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 20
    .line 21
    sget-object v3, Lyq/a;->a:Lyq/a;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v5, "trigger show ad"

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/4 v7, 0x0

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-virtual {v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    move-object v6, v7

    .line 44
    :goto_0
    invoke-virtual {v3, v4, v5, v6}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->n(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->i(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->c(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v2, p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Z)V

    .line 65
    .line 66
    .line 67
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    :cond_1
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 88
    .line 89
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method
