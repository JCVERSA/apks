.class public final Lcom/transsion/home/fragment/rank/RankListFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/rank/RankListFragment$a;,
        Lcom/transsion/home/fragment/rank/RankListFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lqk/t;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002!\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR$\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010\'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/home/fragment/rank/RankListFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lqk/t;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "e0",
        "(Landroid/view/LayoutInflater;)Lqk/t;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "Lcom/transsion/home/bean/RankAllData;",
        "data",
        "k0",
        "(Lcom/transsion/home/bean/RankAllData;)V",
        "errorView",
        "j0",
        "(Landroid/view/View;)V",
        "startLoading",
        "hideLoading",
        "Lcom/transsion/home/viewmodel/RankAllViewModel;",
        "a",
        "Lcom/transsion/home/viewmodel/RankAllViewModel;",
        "viewModel",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "b",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "mMainAdapter",
        "Landroid/widget/TextView;",
        "c",
        "Landroid/widget/TextView;",
        "headerView",
        "Home_psRelease"
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
.field private a:Lcom/transsion/home/viewmodel/RankAllViewModel;

.field private b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private c:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/rank/RankListFragment;->h0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/home/fragment/rank/RankListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/fragment/rank/RankListFragment;->g0(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/home/fragment/rank/RankListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/fragment/rank/RankListFragment;->f0(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/rank/RankListFragment;->i0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f0(Lcom/transsion/home/fragment/rank/RankListFragment;)V
    .locals 4

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->a:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/RankAllViewModel;->l()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 18
    .line 19
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lqk/t;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lqk/t;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v1, Lcom/transsion/home/fragment/rank/m;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/rank/m;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v2, 0x1f4

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method private static final g0(Lcom/transsion/home/fragment/rank/RankListFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static final h0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 4
    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getSubjects()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v1, Ljava/util/Collection;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lqk/t;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Lqk/t;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    new-instance v1, Lcom/transsion/home/fragment/rank/l;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1}, Lcom/transsion/home/fragment/rank/l;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V

    .line 55
    .line 56
    .line 57
    const-wide/16 p0, 0x12c

    .line 58
    .line 59
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method

.method private static final i0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lt6/f;->r()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lt6/f;->s()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move p1, v0

    .line 50
    :goto_0
    if-nez p1, :cond_2

    .line 51
    .line 52
    iget-object p0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-static {p0, v0, v1, p1}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public e0(Landroid/view/LayoutInflater;)Lqk/t;
    .locals 2

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/lifecycle/v0;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 15
    .line 16
    .line 17
    const-class v0, Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->a:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 26
    .line 27
    :cond_0
    invoke-static {p1}, Lqk/t;->c(Landroid/view/LayoutInflater;)Lqk/t;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "inflate(...)"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/rank/RankListFragment;->e0(Landroid/view/LayoutInflater;)Lqk/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hideLoading()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqk/t;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lqk/t;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v0, "tabId"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p1, p2

    .line 31
    :goto_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    new-instance p1, Lcom/transsion/home/fragment/rank/RankListFragment$a;

    .line 41
    .line 42
    invoke-direct {p1}, Lcom/transsion/home/fragment/rank/RankListFragment$a;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Lcom/transsion/home/fragment/rank/RankListFragment$b;

    .line 47
    .line 48
    invoke-direct {p1}, Lcom/transsion/home/fragment/rank/RankListFragment$b;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_1
    iput-object p1, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lqk/t;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p1, Lqk/t;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_2

    .line 90
    .line 91
    new-instance p2, Ltf/f;

    .line 92
    .line 93
    const/4 v4, 0x5

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v1, 0x0

    .line 96
    const/high16 v2, 0x41800000    # 16.0f

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    move-object v0, p2

    .line 100
    invoke-direct/range {v0 .. v5}, Ltf/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    return-void
.end method

.method public final j0(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "errorView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final k0(Lcom/transsion/home/bean/RankAllData;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getSubjects()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    check-cast v2, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->c:Landroid/widget/TextView;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v0, :cond_4

    .line 24
    .line 25
    new-instance v0, Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getTitle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v4, v1

    .line 42
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    const/high16 v4, 0x41400000    # 12.0f

    .line 46
    .line 47
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/high16 v6, 0x41800000    # 16.0f

    .line 52
    .line 53
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v0, v5, v7, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x2

    .line 65
    invoke-virtual {v0, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    sget v6, Lcom/transsion/usercenter/R$color;->pair_text_191F2B:I

    .line 73
    .line 74
    invoke-static {v5, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lsk/a;->d()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    .line 90
    .line 91
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 94
    .line 95
    .line 96
    const-string v4, "ans-serif"

    .line 97
    .line 98
    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    .line 104
    .line 105
    iget-object v4, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 106
    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    const/4 v8, 0x6

    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v6, 0x0

    .line 112
    const/4 v7, 0x0

    .line 113
    move-object v5, v0

    .line 114
    invoke-static/range {v4 .. v9}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->y(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    :cond_3
    iput-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->c:Landroid/widget/TextView;

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    if-eqz v0, :cond_6

    .line 121
    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getTitle()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    goto :goto_2

    .line 129
    :cond_5
    move-object v4, v1

    .line 130
    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    goto :goto_4

    .line 152
    :cond_7
    move p1, v3

    .line 153
    :goto_4
    if-eqz p1, :cond_9

    .line 154
    .line 155
    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 156
    .line 157
    if-eqz p1, :cond_8

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_8

    .line 164
    .line 165
    invoke-virtual {p1, v2}, Lt6/f;->z(Z)V

    .line 166
    .line 167
    .line 168
    :cond_8
    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 169
    .line 170
    if-eqz p1, :cond_a

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-eqz p1, :cond_a

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Lt6/f;->y(Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_9
    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 183
    .line 184
    if-eqz p1, :cond_a

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_a

    .line 191
    .line 192
    invoke-static {p1, v3, v2, v1}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Lqk/t;

    .line 200
    .line 201
    if-eqz p1, :cond_b

    .line 202
    .line 203
    iget-object p1, p1, Lqk/t;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    .line 205
    if-eqz p1, :cond_b

    .line 206
    .line 207
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 208
    .line 209
    .line 210
    :cond_b
    return-void
.end method

.method public lazyLoadData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/transsion/home/fragment/rank/j;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/rank/j;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lt6/f;->D(Lr6/f;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->a:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/RankAllViewModel;->i()Landroidx/lifecycle/b0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v1, Lcom/transsion/home/fragment/rank/k;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/rank/k;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/transsion/home/fragment/rank/RankListFragment$c;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Lcom/transsion/home/fragment/rank/RankListFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqk/t;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lqk/t;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
