.class final Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/view/native_ad/BiddingIconView;->bindIconView(Lcom/transsion/ad/bidding/base/r;)V
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
        "Landroid/widget/TextView;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Landroid/widget/TextView;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Landroid/widget/TextView;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.view.native_ad.BiddingIconView$bindIconView$4"
    f = "BiddingIconView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adProviderBean:Lcom/transsion/ad/bidding/base/w;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/view/native_ad/BiddingIconView;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/base/w;Lcom/transsion/ad/view/native_ad/BiddingIconView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/bidding/base/w;",
            "Lcom/transsion/ad/view/native_ad/BiddingIconView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->$adProviderBean:Lcom/transsion/ad/bidding/base/w;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->this$0:Lcom/transsion/ad/view/native_ad/BiddingIconView;

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
    new-instance p1, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->$adProviderBean:Lcom/transsion/ad/bidding/base/w;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->this$0:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;-><init>(Lcom/transsion/ad/bidding/base/w;Lcom/transsion/ad/view/native_ad/BiddingIconView;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroid/widget/TextView;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->$adProviderBean:Lcom/transsion/ad/bidding/base/w;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->d()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->$adProviderBean:Lcom/transsion/ad/bidding/base/w;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;->this$0:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/ItemDetail;->getSourceSize()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-wide/16 v0, 0x0

    .line 64
    .line 65
    :goto_0
    const/4 v2, 0x1

    .line 66
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/i;->b(JI)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    move-object v0, p1

    .line 74
    :cond_1
    return-object v0

    .line 75
    :cond_2
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
