.class final Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/transsion/moviedetailapi/bean/Pager;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/transsion/moviedetailapi/bean/Pager;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$2$1$1"
    f = "MyCourseListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/edcation/list/MyCourseListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/edcation/list/MyCourseListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/edcation/list/MyCourseListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

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
    new-instance v0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;-><init>(Lcom/transsion/edcation/list/MyCourseListFragment;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Lcom/transsion/moviedetailapi/bean/Pager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Pager;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->invoke(Lcom/transsion/moviedetailapi/bean/Pager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Pager;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const-string p1, "1"

    .line 42
    .line 43
    :cond_0
    invoke-static {v1, p1}, Lcom/transsion/edcation/list/MyCourseListFragment;->P0(Lcom/transsion/edcation/list/MyCourseListFragment;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseListFragment;->B0()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    invoke-static {v1, v0, v3, p1}, Lcom/transsion/baseui/fragment/BaseListFragment;->D0(Lcom/transsion/baseui/fragment/BaseListFragment;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseListFragment;->A0()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    .line 65
    .line 66
    .line 67
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method
