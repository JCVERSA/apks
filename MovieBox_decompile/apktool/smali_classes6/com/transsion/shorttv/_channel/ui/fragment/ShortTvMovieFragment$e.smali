.class public final Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->initScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:[I

.field private b:I

.field final synthetic c:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->c:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 4
    .line 5
    .line 6
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
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->a:[I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-array v0, v0, [I

    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->a:[I

    .line 23
    .line 24
    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->a:[I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E([I)[I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->a:[I

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->e([I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->b:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->b:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->b:I

    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    const-string v0, "Unsupported layoutManager."

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method private final e([I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    move v2, v0

    .line 7
    :goto_0
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    aget v3, p1, v0

    .line 10
    .line 11
    if-le v3, v2, :cond_1

    .line 12
    .line 13
    move v2, v3

    .line 14
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    return v2
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
    iget p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->b:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    if-lt p1, v0, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->c:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->s0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/c;

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
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->c:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->s0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/c;

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
    .locals 0

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$e;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
