.class public final Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/filter/UGCFilterFragment;->t1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->c:Landroid/view/View;

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
    iput p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->a:I

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
    iget p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->a:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    if-lt p1, v0, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->H0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/adapter/filter/a;

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
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->H0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/adapter/filter/a;

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
    iget-object p3, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->c:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-le p2, p3, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lqk/m;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p2, Lqk/m;->b:Lqk/a0;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object p2, p2, Lqk/a0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lqk/m;

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object p2, p2, Lqk/m;->b:Lqk/a0;

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget-object p3, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 54
    .line 55
    iget-object p2, p2, Lqk/a0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    const-string v0, "llTabFilter"

    .line 58
    .line 59
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p3}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->W0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lqk/m;

    .line 76
    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    iget-object p2, p2, Lqk/m;->b:Lqk/a0;

    .line 80
    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    iget-object p2, p2, Lqk/a0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 84
    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    invoke-static {p2}, Luf/c;->g(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
