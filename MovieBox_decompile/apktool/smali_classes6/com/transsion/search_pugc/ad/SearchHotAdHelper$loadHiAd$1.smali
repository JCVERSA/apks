.class final Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->u()V
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
    c = "com.transsion.search_pugc.ad.SearchHotAdHelper$loadHiAd$1"
    f = "SearchHotAdHelper.kt"
    l = {
        0x5a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/search_pugc/ad/SearchHotAdHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->this$0:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->this$0:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->this$0:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

    .line 32
    .line 33
    new-instance v1, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->j(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->this$0:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->this$0:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

    .line 50
    .line 51
    const-string v3, "SearchHotNativeScene"

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->U0(Z)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    iput v2, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;->label:I

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    invoke-virtual {p1, v1, v2, p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->s0(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v0, :cond_2

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p1
.end method
