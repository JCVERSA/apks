.class public final Lcom/transsion/edcation/list/MyCourseListFragment;
.super Lcom/transsion/baseui/fragment/BaseListFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseListFragment<",
        "Lcom/transsion/edcation/bean/CourseBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\nJ\u000f\u0010\u0017\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/edcation/list/MyCourseListFragment;",
        "Lcom/transsion/baseui/fragment/BaseListFragment;",
        "Lcom/transsion/edcation/bean/CourseBean;",
        "<init>",
        "()V",
        "",
        "isShowPageStateLayoutTitle",
        "()Z",
        "",
        "s0",
        "()Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "m0",
        "()Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "initViewData",
        "G0",
        "loadMore",
        "lazyLoadData",
        "initViewModel",
        "x0",
        "getPageStateLayoutTitle",
        "retryLoadData",
        "Landroid/view/View;",
        "q0",
        "()Landroid/view/View;",
        "b",
        "Ljava/lang/String;",
        "mPageNum",
        "Education_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O0(Lcom/transsion/edcation/list/MyCourseListFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/edcation/list/MyCourseListFragment;->Q0(Lcom/transsion/edcation/list/MyCourseListFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P0(Lcom/transsion/edcation/list/MyCourseListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static final Q0(Lcom/transsion/edcation/list/MyCourseListFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "/main/tab"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "bottomTab"

    .line 8
    .line 9
    const-string v2, "HOME"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "topTab"

    .line 16
    .line 17
    const-string v2, "Education"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public G0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    .line 3
    .line 4
    .line 5
    const-string v0, "1"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/transsion/edcation/list/MyCourseListFragment;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/edcation/list/MyCourseListFragment;->lazyLoadData()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public initViewData()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->initViewData()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public initViewModel()V
    .locals 13

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    invoke-direct {v3, p0, v6}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1;-><init>(Lcom/transsion/edcation/list/MyCourseListFragment;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    new-instance v10, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2;

    .line 23
    .line 24
    invoke-direct {v10, p0, v6}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2;-><init>(Lcom/transsion/edcation/list/MyCourseListFragment;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v11, 0x3

    .line 28
    const/4 v12, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public lazyLoadData()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/edcation/list/MyCourseListFragment;->b:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "1"

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v1, v3, v2, v3}, Lcom/transsion/edcation/CourseManager;->r(Lcom/transsion/edcation/CourseManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public loadMore()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/edcation/list/MyCourseListFragment;->lazyLoadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public m0()Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/edcation/list/CourseListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/edcation/list/CourseListAdapter;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public q0()Landroid/view/View;
    .locals 8

    .line 1
    new-instance v6, Lcom/tn/lib/view/StateView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v6, v0}, Lcom/tn/lib/view/StateView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget v0, Lcom/transsion/edcation/R$string;->course_list_empy:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v7, "getString(...)"

    .line 22
    .line 23
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    const-string v4, ""

    .line 30
    .line 31
    move-object v0, v6

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/tn/lib/view/StateView;->showData(IIZLjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget v0, Lcom/transsion/edcation/R$string;->course_explore_now:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v0}, Lcom/tn/lib/view/StateView;->setReTryTxt(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/transsion/edcation/list/e;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/transsion/edcation/list/e;-><init>(Lcom/transsion/edcation/list/MyCourseListFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v0}, Lcom/tn/lib/view/StateView;->retry(Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    return-object v6
.end method

.method public retryLoadData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-static {v0, v1, v1, v2, v1}, Lcom/transsion/edcation/CourseManager;->r(Lcom/transsion/edcation/CourseManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public s0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public x0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->x0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljj/b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Ljj/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    const/high16 v1, 0x41400000    # 12.0f

    .line 15
    .line 16
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->u0()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v1, v0, v1}, Lcom/transsion/baseui/fragment/BaseListFragment;->K0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
