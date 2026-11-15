.class final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d1(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
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
    c = "com.transsion.postdetail.ad.BaseVideoAdHelper$onAdLoad$1"
    f = "BaseVideoAdHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper;",
            "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

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
    new-instance p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sparse-switch v0, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_0
    const-string v0, "VideoEndBidScene"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 35
    .line 36
    invoke-static {p1, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :sswitch_1
    const-string v0, "VerticalPauseScene"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :sswitch_2
    const-string v0, "VideoStartBidScene"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 71
    .line 72
    invoke-static {p1, v1, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L1(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :sswitch_3
    const-string v0, "LandscapePauseSceneNew"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 93
    .line 94
    invoke-static {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p1

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    nop

    .line 109
    :sswitch_data_0
    .sparse-switch
        -0x76db9d51 -> :sswitch_3
        -0x462e08a -> :sswitch_2
        0x1526f06c -> :sswitch_1
        0x7a28f02f -> :sswitch_0
    .end sparse-switch
.end method
