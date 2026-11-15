.class final Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->c(Ljava/lang/String;)V
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
    c = "com.transsion.ad.bidding.banner.BiddingHiSavanaBannerProvider$enterScene$1"
    f = "BiddingHiSavanaBannerProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->this$0:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->$sceneId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->this$0:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->$sceneId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;-><init>(Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->this$0:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->a(Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;)Lcom/hisavana/mediation/ad/TBannerView;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;->$sceneId:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/hisavana/mediation/ad/TBannerView;->enterScene(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method
