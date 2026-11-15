.class final Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/DownloadInterceptDialog;->j1()V
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
    c = "com.transsion.commercialization.task.DownloadInterceptDialog$loadRewardedAd$1$1"
    f = "DownloadInterceptDialog.kt"
    l = {
        0x1d1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Landroid/content/Context;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/task/DownloadInterceptDialog;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->$it:Landroid/content/Context;

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
    new-instance p1, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->$it:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->E0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 39
    .line 40
    new-instance v1, Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/transsion/ad/bidding/video/BiddingVideoManager;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->R0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lcom/transsion/ad/bidding/video/BiddingVideoManager;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->E0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->z0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->E0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->$it:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->E0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->D0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->E0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    iput v2, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;->label:I

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v7, 0x3

    .line 108
    const/4 v8, 0x0

    .line 109
    move-object v6, p0

    .line 110
    invoke-static/range {v3 .. v8}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-ne p1, v0, :cond_6

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_6
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p1
.end method
