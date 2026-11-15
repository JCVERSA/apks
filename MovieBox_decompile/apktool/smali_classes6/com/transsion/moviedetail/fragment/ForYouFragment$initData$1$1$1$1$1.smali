.class final Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1;->a(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1$1$1"
    f = "ForYouFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $it:Lcom/transsion/edcation/bean/CourseBean;

.field label:I

.field final synthetic this$0:Lcom/transsion/moviedetail/fragment/ForYouFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/ForYouFragment;ILcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetail/fragment/ForYouFragment;",
            "I",
            "Lcom/transsion/edcation/bean/CourseBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->this$0:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->$index:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->$it:Lcom/transsion/edcation/bean/CourseBean;

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
    new-instance p1, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->this$0:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->$index:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->$it:Lcom/transsion/edcation/bean/CourseBean;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;-><init>(Lcom/transsion/moviedetail/fragment/ForYouFragment;ILcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->this$0:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/ForYouFragment;->q0(Lcom/transsion/moviedetail/fragment/ForYouFragment;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->$index:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;->$it:Lcom/transsion/edcation/bean/CourseBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/transsion/edcation/bean/CourseBean;->getSeenStatus()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method
