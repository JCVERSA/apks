.class final Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/SubjectListFragment;->insertLast()V
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
    c = "com.transsion.moviedetail.fragment.SubjectListFragment$insertLast$1"
    f = "SubjectListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetail/fragment/SubjectListFragment;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->$dataList:Ljava/util/List;

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
    new-instance p1, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->$dataList:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$setNativeManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getNativeManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string v0, "SubjectDetailRecommendScene"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getNativeManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    new-instance v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->$dataList:Ljava/util/List;

    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 55
    .line 56
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v3, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$2;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {v3, p1, v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$2;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V

    .line 66
    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 72
    .line 73
    .line 74
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method
