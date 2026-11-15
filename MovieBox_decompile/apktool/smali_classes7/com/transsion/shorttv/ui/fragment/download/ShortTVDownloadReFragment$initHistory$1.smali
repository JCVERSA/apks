.class final Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->initHistory()V
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
    c = "com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$initHistory$1"
    f = "ShortTVDownloadReFragment.kt"
    l = {
        0xe7,
        0xe9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

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
    new-instance p1, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;-><init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

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
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->L0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_5

    .line 46
    .line 47
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A0()Lur/h;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    iput-object v1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    iput v3, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->label:I

    .line 62
    .line 63
    invoke-interface {v5, p1, p0}, Lur/h;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_3
    :goto_0
    check-cast p1, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move-object p1, v4

    .line 74
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v5, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1$1$1;

    .line 79
    .line 80
    invoke-direct {v5, v1, p1, v4}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1$1$1;-><init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;Lkotlin/coroutines/Continuation;)V

    .line 81
    .line 82
    .line 83
    iput-object v4, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput v2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$initHistory$1;->label:I

    .line 86
    .line 87
    invoke-static {v3, v5, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v0, :cond_5

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1
.end method
