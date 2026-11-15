.class final Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/base/AbsAdBidding;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
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
    c = "com.transsion.ad.bidding.base.AbsAdBidding$onLoadFailure$1"
    f = "AbsAdBidding.kt"
    l = {
        0x16a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $additionalInfo:Lcom/hisavana/common/bean/AdditionalInfo;

.field final synthetic $errorCode:Lcom/hisavana/common/bean/TAdErrorCode;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/AdditionalInfo;Lcom/hisavana/common/bean/TAdErrorCode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/bidding/base/AbsAdBidding;",
            "Lcom/hisavana/common/bean/AdditionalInfo;",
            "Lcom/hisavana/common/bean/TAdErrorCode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->$additionalInfo:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->$errorCode:Lcom/hisavana/common/bean/TAdErrorCode;

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
    new-instance p1, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->$additionalInfo:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->$errorCode:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/AdditionalInfo;Lcom/hisavana/common/bean/TAdErrorCode;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->$additionalInfo:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/hisavana/common/bean/AdditionalInfo;->getPlacementId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v3, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->$errorCode:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v5, "Hi \u7a0b\u5e8f\u5316\u52a0\u8f7d\u5931\u8d25 --> \u76f4\u63a5\u7ade\u4ef7 --> placementId = "

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " --> errorCode = "

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;->label:I

    .line 63
    .line 64
    invoke-static {p1, v1, p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v0, :cond_2

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1
.end method
