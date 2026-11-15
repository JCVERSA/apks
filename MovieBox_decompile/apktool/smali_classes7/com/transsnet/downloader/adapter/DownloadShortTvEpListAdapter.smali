.class public final Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic g(Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;Lyw/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->j(Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;Lyw/c;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;Lyw/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lyw/c;->a()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;I)V
    .locals 2

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lyw/c;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->f()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2}, Lyw/c;->a()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->showIndex(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->f()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2}, Lyw/c;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    xor-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->showLockImg(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lyw/c;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->f()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2}, Lyw/c;->d()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->setSelect(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->f()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2}, Lyw/c;->b()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->showDownloadImg(Z)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->f()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lcom/transsnet/downloader/adapter/u;

    .line 73
    .line 74
    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/adapter/u;-><init>(Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;Lyw/c;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public i(Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;ILjava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "payloads"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;ILjava/util/List;)V

    .line 12
    .line 13
    .line 14
    move-object p2, p3

    .line 15
    check-cast p2, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    instance-of p3, p2, Lyw/c;

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->f()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p2, Lyw/c;

    .line 37
    .line 38
    invoke-virtual {p2}, Lyw/c;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    xor-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    invoke-virtual {p3, v0}, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->showLockImg(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lyw/c;->c()Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->f()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2}, Lyw/c;->d()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p3, v0}, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->setSelect(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->f()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p2}, Lyw/c;->b()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->showDownloadImg(Z)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;
    .locals 2

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "getContext(...)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p1}, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    const/4 v1, -0x2

    .line 24
    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;

    .line 31
    .line 32
    invoke-direct {p1, p2}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;-><init>(Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public final l(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->h(Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->i(Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;->k(Landroid/view/ViewGroup;I)Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
