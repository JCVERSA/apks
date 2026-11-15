.class final Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.transsion.ad.test.ad_example.TestAdBannerActivity$onCreate$1$1"
    f = "TestAdBannerActivity.kt"
    l = {
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

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
    new-instance p1, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;-><init>(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->Q(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lcom/transsion/ad/bidding/banner/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/banner/a;->U()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 39
    .line 40
    new-instance v1, Lcom/transsion/ad/bidding/banner/a;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/transsion/ad/bidding/banner/a;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->S(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;Lcom/transsion/ad/bidding/banner/a;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->Q(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lcom/transsion/ad/bidding/banner/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    const-string v1, "MBBannerTestId"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->Q(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lcom/transsion/ad/bidding/banner/a;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->Q(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lcom/transsion/ad/bidding/banner/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->Q(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lcom/transsion/ad/bidding/banner/a;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    iget-object v1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->P(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 101
    .line 102
    .line 103
    :cond_6
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->Q(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lcom/transsion/ad/bidding/banner/a;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_7

    .line 110
    .line 111
    iput v2, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;->label:I

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v7, 0x3

    .line 116
    const/4 v8, 0x0

    .line 117
    move-object v6, p0

    .line 118
    invoke-static/range {v3 .. v8}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v0, :cond_7

    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_7
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p1
.end method
