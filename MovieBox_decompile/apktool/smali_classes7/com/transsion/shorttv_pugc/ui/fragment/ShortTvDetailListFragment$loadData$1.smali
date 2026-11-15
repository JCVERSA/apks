.class final Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->loadData()V
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
    c = "com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment$loadData$1"
    f = "ShortTvDetailListFragment.kt"
    l = {
        0x1dd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

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
    new-instance p1, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;-><init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->t0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->o0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e0(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->t0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->s0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput v2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->label:I

    .line 58
    .line 59
    invoke-virtual {p1, v1, p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->C(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_2
    :goto_0
    check-cast p1, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getPosition()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move p1, v2

    .line 76
    :goto_1
    add-int/lit8 p1, p1, -0x2

    .line 77
    .line 78
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    add-int/lit8 v0, p1, 0xa

    .line 83
    .line 84
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->t0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$loadData$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->o0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2, p1, v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->Z(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p1
.end method
