.class final Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.transsion.ad.test.ad_example.TestAdNativeSspActivity$onCreate$1$1"
    f = "TestAdNativeSspActivity.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

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
    new-instance p1, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;-><init>(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->label:I

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
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->R(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "nativeManager"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object p1, v3

    .line 43
    :cond_2
    const-string v4, "MBNativeTestId"

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->R(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object p1, v3

    .line 60
    :cond_3
    invoke-virtual {p1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->R(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object p1, v3

    .line 75
    :cond_4
    iget-object v4, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 76
    .line 77
    invoke-virtual {p1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->R(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object p1, v3

    .line 92
    :cond_5
    iget-object v4, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 93
    .line 94
    invoke-static {v4}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->Q(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {p1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->R(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-nez p1, :cond_6

    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    move-object v4, v3

    .line 113
    goto :goto_0

    .line 114
    :cond_6
    move-object v4, p1

    .line 115
    :goto_0
    iput v2, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$onCreate$1$1;->label:I

    .line 116
    .line 117
    const/4 v5, 0x3

    .line 118
    const/4 v6, 0x0

    .line 119
    const/4 v8, 0x2

    .line 120
    const/4 v9, 0x0

    .line 121
    move-object v7, p0

    .line 122
    invoke-static/range {v4 .. v9}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-ne p1, v0, :cond_7

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p1
.end method
