.class final Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingListManager;->q()V
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
    c = "com.transsion.ad.bidding.nativead.BiddingListManager$getDelegate$1$1"
    f = "BiddingListManager.kt"
    l = {
        0xfc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/nativead/BiddingListManager;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/nativead/BiddingListManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
            "Lcom/transsion/ad/bidding/nativead/BiddingListManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->$nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

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
    new-instance p1, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->$nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/nativead/BiddingListManager;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->$nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->c(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->$nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->d(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->$nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->e(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->M0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->$nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 61
    .line 62
    new-instance v1, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 65
    .line 66
    invoke-direct {v1, v3}, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 70
    .line 71
    .line 72
    iget-object v4, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->$nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 73
    .line 74
    iput v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->label:I

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v8, 0x3

    .line 79
    const/4 v9, 0x0

    .line 80
    move-object v7, p0

    .line 81
    invoke-static/range {v4 .. v9}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_2

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p1
.end method
