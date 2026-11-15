.class public final Lcom/transsion/home/fragment/filter/FilterFragment$d;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/filter/FilterFragment;->m1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/transsion/home/fragment/filter/FilterFragment;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/filter/FilterFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->b:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->c:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "null cannot be cast to non-null type com.transsion.home.view.layoutmanager.OffsetGridLayoutManager"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/transsion/home/view/layoutmanager/OffsetGridLayoutManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->a:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v0

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :cond_1
    if-nez p2, :cond_3

    .line 29
    .line 30
    if-lez v1, :cond_3

    .line 31
    .line 32
    iget p1, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->a:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    if-lt p1, v0, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->b:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/transsion/home/fragment/filter/FilterFragment;->H0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/adapter/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lt6/f;->i()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p1, 0x0

    .line 58
    :goto_1
    sget-object p2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 59
    .line 60
    if-ne p1, p2, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->b:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/transsion/home/fragment/filter/FilterFragment;->H0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/adapter/a;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Lt6/f;->w()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iget-object p3, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->c:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    iget-object v0, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->b:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/transsion/home/fragment/filter/FilterFragment;->G0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/view/filter/expand/TabExpandView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, "channelView"

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sub-int/2addr p3, v0

    .line 35
    if-le p2, p3, :cond_2

    .line 36
    .line 37
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->b:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lqk/m;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p2, Lqk/m;->b:Lqk/a0;

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    iget-object p2, p2, Lqk/a0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->b:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lqk/m;

    .line 65
    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    iget-object p2, p2, Lqk/m;->b:Lqk/a0;

    .line 69
    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    iget-object p3, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->b:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 73
    .line 74
    iget-object p2, p2, Lqk/a0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    .line 76
    const-string v0, "llTabFilter"

    .line 77
    .line 78
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p3}, Lcom/transsion/home/fragment/filter/FilterFragment;->O0(Lcom/transsion/home/fragment/filter/FilterFragment;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/FilterFragment$d;->b:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lqk/m;

    .line 95
    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    iget-object p2, p2, Lqk/m;->b:Lqk/a0;

    .line 99
    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    iget-object p2, p2, Lqk/a0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 103
    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    invoke-static {p2}, Luf/c;->g(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/filter/FilterFragment$d;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
