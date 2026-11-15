.class public Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;
.super Lcom/mgtv/ssp/viewcard/BaseVideoListView;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;


# instance fields
.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Lcom/mgtv/ssp/widget/VideoLoadingView;

.field private J:Landroid/view/View;

.field private K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

.field private L:Z

.field private M:Lcom/mgtv/ssp/play/MediaInfo;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:I

.field private S:Z

.field private T:Landroid/view/View;

.field private U:I

.field private V:Z

.field private W:Lcom/mgtv/ssp/feed/viewcard/MyRecycleScrollTopScroller;

.field a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private aa:Z

.field private ab:Lcom/mgtv/ssp/widget/VideoLoadingView;

.field b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p1, "FeedFragment"

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->G:Ljava/lang/String;

    const/16 p1, -0x3e7

    .line 5
    iput p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->R:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->U:I

    .line 7
    new-instance p1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$12;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$12;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ab:Lcom/mgtv/ssp/widget/VideoLoadingView;

    return-void
.end method

.method private A()V
    .locals 1

    .line 2
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    const/16 p0, 0x1f4

    invoke-static {v0, p0}, Lcom/hunantv/imgo/util/ThreadManager;->post(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static synthetic A(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->z()V

    return-void
.end method

.method public static synthetic B(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic C(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic D(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->t()V

    return-void
.end method

.method public static synthetic E(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic F(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic G(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic H(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic I(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic J(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic K(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic L(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic M(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/control/GestureVideoController;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    return-object p0
.end method

.method public static synthetic N(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic O(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic P(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic Q(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic R(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/control/GestureVideoController;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    return-object p0
.end method

.method public static synthetic S(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic T(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic U(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic V(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic W(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p()V

    return-void
.end method

.method public static synthetic X(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic Y(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic Z(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->U:I

    return p1
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    .line 6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eeee smoothMoveToPosition position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    if-ge p2, v1, :cond_0

    .line 9
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_0
    if-gt p2, v2, :cond_1

    sub-int/2addr p2, v1

    if-ltz p2, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge p2, p0, :cond_2

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    .line 12
    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 14
    iput-boolean v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->H:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->t()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;IZZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->d(IZZ)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->J:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->N:Z

    return p1
.end method

.method public static synthetic aa(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic ab(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic ac(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic ad(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic ae(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic af(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    return p0
.end method

.method public static synthetic ag(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic ah(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic ai(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic aj(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    return p0
.end method

.method public static synthetic ak(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->V:Z

    return p0
.end method

.method public static synthetic al(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic am(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    return p0
.end method

.method public static synthetic an(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic ao(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->aa:Z

    return p0
.end method

.method public static synthetic ap(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic aq(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic ar(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    return p0
.end method

.method public static synthetic as(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/MediaInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->M:Lcom/mgtv/ssp/play/MediaInfo;

    return-object p0
.end method

.method private b(Z)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->setLockButtonVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/hunantv/imgo/util/t;->a(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 7
    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->setLockButtonVisibility(I)V

    move p1, v1

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    invoke-virtual {p0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private b(I)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/bean/VideoBean;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactVcode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->O:Z

    return p1
.end method

.method public static synthetic c(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->W:Lcom/mgtv/ssp/feed/viewcard/MyRecycleScrollTopScroller;

    if-eqz v0, :cond_1

    .line 17
    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 18
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->W:Lcom/mgtv/ssp/feed/viewcard/MyRecycleScrollTopScroller;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 19
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eeee scrollViewTo e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->S:Z

    return p1
.end method

.method public static synthetic d(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method private d(IZZ)V
    .locals 4

    .line 4
    iget-object p3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eeee scrollToPosition pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " firstItem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lastItem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-gt p1, p3, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->c(I)V

    .line 8
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->A()V

    goto :goto_0

    :cond_0
    if-gt p1, v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    sub-int p3, p1, p3

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/t;->a(Landroid/content/Context;F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    if-eqz p2, :cond_1

    .line 12
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->c(I)V

    if-gtz p3, :cond_4

    .line 14
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->A()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 15
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->c(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    return p1
.end method

.method public static synthetic e(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->w()V

    return-void
.end method

.method public static synthetic e(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->V:Z

    return p1
.end method

.method public static synthetic f(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic f(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->aa:Z

    return p1
.end method

.method public static synthetic g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->U:I

    return p0
.end method

.method public static synthetic h(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic i(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic j(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic l(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->x()V

    return-void
.end method

.method public static synthetic m(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic o(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic p(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic q(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    return p0
.end method

.method public static synthetic r(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    return p0
.end method

.method public static synthetic s(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    return p0
.end method

.method private setVideoLoadingText(Lcom/mgtv/ssp/bean/VideoInfoBean;)V
    .locals 3

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getShowLoading()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ab:Lcom/mgtv/ssp/widget/VideoLoadingView;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/mgtv/ssp/widget/VideoLoadingView;->show(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic u(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    return p0
.end method

.method public static synthetic v(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    return p0
.end method

.method private w()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->x()V

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->switchFullScreen(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic w(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->F:Z

    return p0
.end method

.method private x()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/imgo/util/y;->a(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->stop()V

    .line 5
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    return-void
.end method

.method public static synthetic x(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->getRealVisible()Z

    move-result p0

    return p0
.end method

.method public static synthetic y(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    return p0
.end method

.method private y()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->R:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->R:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic z(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    return-object p0
.end method

.method private z()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->onPlayerStateChanged(I)V

    .line 4
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y()V

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->l()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->onPlayerStateChanged(I)V

    .line 7
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->z()V

    .line 8
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->k()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/mgtv/ssp/widget/LoadMoreRecycleView;
    .locals 1

    .line 15
    sget v0, Lcom/mgtv/ssp/R$id;->list_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    return-object p0
.end method

.method public a(IZZ)V
    .locals 11

    .line 16
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    .line 19
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_15

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_2

    goto/16 :goto_8

    .line 20
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/ssp/viewcard/BaseView;->a(IZZ)V

    .line 21
    iput p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    .line 22
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v2, v1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v2, :cond_3

    .line 23
    check-cast v1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v1, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(I)V

    .line 24
    :cond_3
    iget v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    sput v1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->s:I

    .line 25
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 26
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 29
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_5

    .line 30
    iput-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->T:Landroid/view/View;

    .line 31
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    if-eqz v2, :cond_6

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    .line 33
    iget-object v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v6, v5, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v6, :cond_b

    .line 34
    check-cast v5, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v5}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->c()V

    goto :goto_4

    .line 35
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/mgtv/ssp/adapter/AdHolder;

    if-eqz v2, :cond_a

    .line 36
    :try_start_0
    iget-object p3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v1, p3, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v1, :cond_7

    .line 37
    check-cast p3, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {p3, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->j(I)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_7
    move p3, v0

    :goto_0
    if-eqz p3, :cond_8

    add-int/2addr p1, v4

    .line 38
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 39
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    .line 40
    :cond_8
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->x()V

    .line 41
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of p2, p2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz p2, :cond_9

    .line 42
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eeee  startPlay   mCurPos "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resumeAd parent "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast p2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {p2, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->i(I)V

    .line 44
    :cond_9
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->G:Ljava/lang/String;

    const-string p1, "\u5728\u64ad\u653e\u5e7f\u544aitem "

    invoke-static {p0, p1, v4}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 45
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void

    :cond_a
    move-object v2, v3

    :cond_b
    :goto_4
    if-nez v2, :cond_c

    .line 46
    iput-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    return-void

    .line 47
    :cond_c
    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/ssp/bean/VideoBean;

    .line 48
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v5

    .line 49
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v6

    if-nez v6, :cond_e

    .line 50
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoBean;->getAd()Lcom/mgtv/ssp/bean/AdBean;

    move-result-object p3

    if-eqz p3, :cond_d

    add-int/2addr p1, v4

    .line 51
    :try_start_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_5
    return-void

    .line 53
    :cond_e
    new-instance v6, Lcom/mgtv/ssp/play/MediaInfo;

    const-string v7, "card"

    invoke-static {v7}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/mgtv/ssp/play/MediaInfo;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->M:Lcom/mgtv/ssp/play/MediaInfo;

    .line 54
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/mgtv/ssp/play/MediaInfo;->videoId:Ljava/lang/String;

    .line 55
    iget-object v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->k:Lcom/mgtv/ssp/auth/EntranceInfo;

    const-string v7, ""

    if-eqz v6, :cond_f

    .line 56
    invoke-virtual {v6}, Lcom/mgtv/ssp/auth/EntranceInfo;->getToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_f
    move-object v6, v7

    .line 57
    :goto_6
    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 58
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->x()V

    return-void

    .line 59
    :cond_10
    invoke-static {}, Lcom/hunantv/imgo/util/b;->ad()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 60
    iget-object v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ad()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mgtv/ssp/play/PlayerCore;->setMute(Z)Ljava/lang/String;

    .line 61
    :cond_11
    iget-object v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v8}, Lcom/mgtv/ssp/play/PlayerCore;->stop()V

    .line 62
    iget-object v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v9, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    iget-object v10, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->M:Lcom/mgtv/ssp/play/MediaInfo;

    invoke-virtual {v8, v9, v10, v6}, Lcom/mgtv/ssp/play/PlayerCore;->prepare(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V

    .line 63
    iget-object v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v5}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mgtv/ssp/play/PlayerCore;->setLob(Ljava/lang/String;)V

    .line 64
    iget-object v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mgtv/ssp/play/PlayerCore;->setPosition(Ljava/lang/String;)V

    .line 65
    iget-object v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->t:I

    add-int/2addr v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mgtv/ssp/play/PlayerCore;->setCurPlayIndex(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v3

    iput-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    .line 67
    invoke-direct {p0, v5}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->setVideoLoadingText(Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    .line 68
    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    invoke-virtual {v5}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->setTitle(Ljava/lang/String;)V

    .line 69
    iget-boolean v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    if-eqz v3, :cond_12

    .line 70
    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->onPlayerStateChanged(I)V

    goto :goto_7

    .line 71
    :cond_12
    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->onPlayerStateChanged(I)V

    .line 72
    :goto_7
    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v5, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$6;

    invoke-direct {v5, p0, v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$6;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;)V

    invoke-virtual {v3, v5}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoPreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;)V

    .line 73
    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/hunantv/imgo/util/y;->a(Landroid/view/View;)V

    .line 74
    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    iget-object v5, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->g:Lcom/mgtv/ssp/widget/CoverView;

    invoke-virtual {v3, v5, v4}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent(Lcom/mgtv/ssp/control/b;Z)V

    .line 75
    iget-object v3, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->g:Lcom/mgtv/ssp/widget/CoverView;

    new-instance v5, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$7;

    invoke-direct {v5, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$7;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v3, v5}, Lcom/mgtv/ssp/widget/CoverView;->setAutoPlayClickListener(Lcom/mgtv/ssp/immersion/a/a;)V

    .line 76
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 77
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    iget-object v2, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v6}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_14

    if-eq p1, v5, :cond_13

    .line 79
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-direct {p0, p2, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_8

    .line 80
    :cond_13
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    add-int/2addr p1, v4

    invoke-direct {p0, p2, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_8

    :cond_14
    if-eqz p3, :cond_15

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(I)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 82
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-direct {p0, p2, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_15
    :goto_8
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->onVisibilityChanged(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 87
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v2}, Lcom/mgtv/ssp/play/PlayerCore;->isInterruptBeforeAd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iput-boolean v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    .line 89
    iget v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->resume()V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->pause()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p0, v0, v1, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V

    .line 94
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v0, :cond_4

    .line 95
    check-cast p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(Z)V

    :cond_4
    return-void
.end method

.method public b()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 3
    new-instance v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public b(IZZ)V
    .locals 11

    .line 9
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    .line 12
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_13

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_2

    goto/16 :goto_6

    .line 13
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/ssp/viewcard/BaseView;->a(IZZ)V

    .line 14
    iget-object p3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_3

    return-void

    .line 15
    :cond_3
    iput p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    .line 16
    sput p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->s:I

    .line 17
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v2, v1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v2, :cond_4

    .line 18
    check-cast v1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v1, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(I)V

    .line 19
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, " ; "

    const-string v3, "; "

    const v4, 0x1020002

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    if-eqz v1, :cond_7

    .line 20
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 21
    iget v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 22
    iget v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 23
    iget v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/ssp/NativeExpressADView;

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v1}, Lcom/mgmi/ssp/NativeExpressADView;->getView()Landroid/view/View;

    move-result-object v1

    .line 25
    iget-object v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {v8, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    iput-boolean v7, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->Q:Z

    .line 28
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    .line 29
    iget-object v8, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v9}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 30
    iget-object v8, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    iget v9, v1, Lcom/mgtv/ssp/adapter/BaseHolder;->e:I

    invoke-direct {p0, v9}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(I)Z

    move-result v10

    invoke-virtual {v8, v9, v7, v10}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a(IZZ)V

    .line 31
    iget-object v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-static {v8, v7}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;Z)V

    .line 32
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    iget-object v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 34
    iget-object v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v6}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v6

    invoke-static {v4, v6, v8}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v4}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v4

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    iget-object v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v6, v4, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v6, :cond_6

    .line 37
    check-cast v4, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v4}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->c()V

    .line 38
    :cond_6
    iput-object p3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->T:Landroid/view/View;

    .line 39
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eeee startPlayInLandScreen VideoHolder "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    xor-int/2addr v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 40
    :cond_7
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mgtv/ssp/adapter/AdHolder;

    if-eqz v1, :cond_e

    .line 41
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgtv/ssp/adapter/AdHolder;

    .line 42
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eeee startPlayInLandScreen AdHolder "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    xor-int/2addr v2, v7

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d()Ljava/util/HashMap;

    move-result-object v1

    .line 44
    iget v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 45
    iget v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 46
    iget v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/ssp/NativeExpressADView;

    if-eqz v1, :cond_b

    .line 47
    invoke-virtual {v1}, Lcom/mgmi/ssp/NativeExpressADView;->isVideoType()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 48
    iput-object p3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->T:Landroid/view/View;

    .line 49
    iget-object p3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {p3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 50
    iget-object p2, p2, Lcom/mgtv/ssp/adapter/AdHolder;->b:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_8

    .line 51
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 52
    :cond_8
    invoke-virtual {v1}, Lcom/mgmi/ssp/NativeExpressADView;->getView()Landroid/view/View;

    move-result-object p2

    .line 53
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 54
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 55
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    :cond_9
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v0, v1, v7}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(IZ)V

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-static {p3, p2, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iput-boolean v7, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->Q:Z

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->x()V

    .line 61
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of p3, p2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz p3, :cond_a

    .line 62
    check-cast p2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {p2, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->i(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 63
    :cond_a
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->G:Ljava/lang/String;

    const-string p1, "\u5728\u64ad\u653e\u5e7f\u544aitem "

    invoke-static {p0, p1, v7}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 64
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    .line 65
    :cond_b
    iget p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->U:I

    .line 66
    invoke-direct {p0, p1, v0, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->d(IZZ)V

    return-void

    .line 67
    :cond_c
    iget p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->U:I

    .line 68
    invoke-direct {p0, p1, v0, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->d(IZZ)V

    return-void

    .line 69
    :cond_d
    iget p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->U:I

    .line 70
    invoke-direct {p0, p1, v0, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->d(IZZ)V

    return-void

    :cond_e
    move-object v1, v5

    :goto_3
    if-nez v1, :cond_f

    .line 71
    iput-object v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    return-void

    .line 72
    :cond_f
    iget-object p3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mgtv/ssp/bean/VideoBean;

    .line 73
    invoke-virtual {p3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v1

    .line 74
    invoke-virtual {p3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v2

    if-nez v2, :cond_11

    .line 75
    invoke-virtual {p3}, Lcom/mgtv/ssp/bean/VideoBean;->getAd()Lcom/mgtv/ssp/bean/AdBean;

    move-result-object p3

    if-eqz p3, :cond_10

    add-int/2addr p1, v7

    .line 76
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    :cond_10
    :goto_4
    iput-object v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    return-void

    .line 79
    :cond_11
    new-instance p2, Lcom/mgtv/ssp/play/MediaInfo;

    const-string v0, "card"

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/mgtv/ssp/play/MediaInfo;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->M:Lcom/mgtv/ssp/play/MediaInfo;

    .line 80
    invoke-virtual {p3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mgtv/ssp/play/MediaInfo;->videoId:Ljava/lang/String;

    .line 81
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->k:Lcom/mgtv/ssp/auth/EntranceInfo;

    const-string v0, ""

    if-eqz p2, :cond_12

    .line 82
    invoke-virtual {p2}, Lcom/mgtv/ssp/auth/EntranceInfo;->getToken()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_12
    move-object p2, v0

    .line 83
    :goto_5
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v2}, Lcom/mgtv/ssp/play/PlayerCore;->stop()V

    .line 84
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v3, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$8;

    invoke-direct {v3, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$8;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v2, v3}, Lcom/mgtv/ssp/play/PlayerCore;->setScreenStatus(Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;)V

    .line 85
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    iget-object v4, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->M:Lcom/mgtv/ssp/play/MediaInfo;

    invoke-virtual {v2, v3, v4, p2}, Lcom/mgtv/ssp/play/PlayerCore;->prepare(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/mgtv/ssp/play/PlayerCore;->setLob(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setPosition(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->t:I

    add-int/2addr v2, v7

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/play/PlayerCore;->setCurPlayIndex(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    .line 90
    invoke-direct {p0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->setVideoLoadingText(Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    .line 91
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->setTitle(Ljava/lang/String;)V

    :cond_13
    :goto_6
    return-void
.end method

.method public c()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$1;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public c(IZZ)Z
    .locals 5

    .line 6
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    if-lt p1, p2, :cond_0

    move p2, p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-le p2, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    if-gt p2, v0, :cond_6

    if-eq p2, p3, :cond_5

    .line 8
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 13
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_5

    .line 14
    iput-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->T:Landroid/view/View;

    .line 15
    sget v2, Lcom/mgtv/ssp/R$id;->player_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public d()Lcom/mgtv/task/http/HttpParams;
    .locals 0

    .line 3
    new-instance p0, Lcom/mgtv/ssp/net/FeedBaseHttpParamas;

    invoke-direct {p0}, Lcom/mgtv/ssp/net/FeedBaseHttpParamas;-><init>()V

    invoke-static {p0}, Lcom/mgtv/ssp/net/a;->a(Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->destroy()V

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e()V

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->y()V

    .line 6
    sget v0, Lcom/mgtv/ssp/R$id;->lay_feed_card:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->J:Landroid/view/View;

    .line 7
    sget v0, Lcom/mgtv/ssp/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/widget/VideoLoadingView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->I:Lcom/mgtv/ssp/widget/VideoLoadingView;

    .line 8
    sget v0, Lcom/mgtv/ssp/R$id;->tv_error:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->f()V

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->u()V

    .line 11
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o()V

    .line 12
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$16;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$16;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->a(Lcom/mgtv/ssp/adapter/listener/a;)V

    .line 13
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->a(Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$17;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$17;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 15
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 17
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setmAutoCallback(Lcom/mgtv/ssp/fragment/BaseListFragment$a;)V

    .line 18
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;)V

    .line 19
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 21
    :cond_1
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/MyRecycleScrollTopScroller;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/feed/viewcard/MyRecycleScrollTopScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->W:Lcom/mgtv/ssp/feed/viewcard/MyRecycleScrollTopScroller;

    return-void
.end method

.method public f()V
    .locals 5

    .line 3
    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {v0}, Lcom/mgtv/ssp/play/PlayerCore;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    .line 4
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setViewRendType(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/mgtv/ssp/feed/control/FeedVideoController;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/feed/control/FeedVideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    .line 6
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->getModType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setFrom(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setRequestPauseAd(Z)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/mgtv/ssp/play/PlayerCore;->init(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    .line 10
    new-instance v2, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;

    invoke-direct {v2, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v0, v2}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->setViewCallback(Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;)V

    .line 11
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/mgtv/ssp/control/b;

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent([Lcom/mgtv/ssp/control/b;)V

    .line 12
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    new-instance v2, Lcom/mgtv/ssp/widget/GestureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/mgtv/ssp/widget/GestureView;-><init>(Landroid/content/Context;)V

    new-array v4, v3, [Lcom/mgtv/ssp/control/b;

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent([Lcom/mgtv/ssp/control/b;)V

    .line 13
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getShowLoading()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 15
    new-instance v0, Lcom/mgtv/ssp/widget/VideoLoadingView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mgtv/ssp/widget/VideoLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ab:Lcom/mgtv/ssp/widget/VideoLoadingView;

    .line 16
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    new-array v3, v3, [Lcom/mgtv/ssp/control/b;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent([Lcom/mgtv/ssp/control/b;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setVideoController(Lcom/mgtv/ssp/control/BaseVideoController;)V

    .line 18
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoCompleteListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;)V

    .line 19
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$3;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$3;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setAdControlListener(Lcom/mgtv/ssp/d;)V

    .line 20
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$4;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$4;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setSourcePrepareListener(Lcom/mgtv/ssp/c;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->pause()V

    return-void
.end method

.method public getLayoutResId()I
    .locals 0

    sget p0, Lcom/mgtv/ssp/R$layout;->feed_list_view:I

    return p0
.end method

.method public getModType()Ljava/lang/String;
    .locals 0

    const-string p0, "card"

    return-object p0
.end method

.method public getRetryUrl()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/net/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/feed/card"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->backToFront()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->I:Lcom/mgtv/ssp/widget/VideoLoadingView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->I:Lcom/mgtv/ssp/widget/VideoLoadingView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getShowLoading()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->I:Lcom/mgtv/ssp/widget/VideoLoadingView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/ssp/widget/VideoLoadingView;->show(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    .line 5
    iput-boolean v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->P:Z

    .line 6
    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setScreenStatusValue(Z)V

    .line 7
    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->f(Z)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->T:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->onPlayerStateChanged(I)V

    .line 11
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    .line 13
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eeee  toLandScreen   mCurPos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " /n VideoHolder itemView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    iget-object v0, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    iget v2, v2, Lcom/mgtv/ssp/adapter/BaseHolder;->e:I

    invoke-direct {p0, v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(I)Z

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a(IZZ)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;Z)V

    .line 17
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 19
    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b:Landroid/widget/LinearLayout;

    const/high16 v4, -0x1000000

    if-nez v3, :cond_2

    .line 20
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b:Landroid/widget/LinearLayout;

    .line 21
    new-instance v5, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$9;

    invoke-direct {v5, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$9;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 24
    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 25
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b:Landroid/widget/LinearLayout;

    invoke-static {v2, v3, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    :cond_4
    invoke-direct {p0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(Z)V

    :cond_5
    return-void
.end method

.method public l()V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    .line 5
    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->isPlaying()Z

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->onPlayerStateChanged(I)V

    .line 7
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 8
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 9
    iget-object v4, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b:Landroid/widget/LinearLayout;

    invoke-static {v2, v4}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 10
    iget-object v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;Z)V

    .line 11
    iget-object v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    .line 12
    iget-object v4, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->T:Landroid/view/View;

    .line 13
    :cond_2
    iget-object v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v5, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setScreenStatusValue(Z)V

    .line 14
    invoke-direct {p0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(Z)V

    const/16 v5, 0x64

    if-eqz v4, :cond_6

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    if-eqz v6, :cond_6

    .line 16
    iget-object v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v6}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    .line 18
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eeee  toPortrait   mCurPos "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " parent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " /n VideoHolder itemView "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    iget-object v7, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    iget v10, v2, Lcom/mgtv/ssp/adapter/BaseHolder;->e:I

    invoke-direct {p0, v10}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(I)Z

    move-result v11

    invoke-virtual {v7, v10, v1, v11}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a(IZZ)V

    .line 20
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 21
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 22
    iget-object v10, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v11}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v11

    invoke-static {v10, v11, v7}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v7, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v7}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 24
    iget-object v7, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v7}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v7

    const/high16 v10, -0x1000000

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    :cond_3
    iget-object v7, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v10, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$10;

    invoke-direct {v10, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$10;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-virtual {v7, v10}, Lcom/mgtv/ssp/play/PlayerCore;->setScreenStatus(Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;)V

    .line 26
    iget-boolean v7, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->Q:Z

    if-eqz v7, :cond_4

    .line 27
    iput-boolean v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->Q:Z

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eeee  toPortrait   notifyDataSetChanged  isAdShowed "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v2, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->c(Z)V

    goto :goto_0

    .line 30
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eeee  toPortrait   noticeLoadScreenChanged   "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(IZ)V

    .line 32
    :goto_0
    iput-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->aa:Z

    .line 33
    iget-boolean v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->N:Z

    if-eqz v2, :cond_5

    .line 34
    iput-boolean v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->N:Z

    .line 35
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$11;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$11;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-static {v0, v5}, Lcom/hunantv/imgo/util/ThreadManager;->post(Ljava/lang/Runnable;I)V

    goto/16 :goto_4

    .line 36
    :cond_5
    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$13;

    invoke-direct {v1, p0, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$13;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)V

    invoke-static {v1}, Lcom/hunantv/imgo/util/ThreadManager;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_6
    if-eqz v4, :cond_c

    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgtv/ssp/adapter/AdHolder;

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/adapter/AdHolder;

    .line 39
    iget-object v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v4, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v4}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d()Ljava/util/HashMap;

    move-result-object v4

    .line 40
    iget-object v6, v0, Lcom/mgtv/ssp/adapter/AdHolder;->b:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    iget v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 41
    iget v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 42
    iget v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/ssp/NativeExpressADView;

    if-eqz v4, :cond_7

    .line 43
    invoke-virtual {v4}, Lcom/mgmi/ssp/NativeExpressADView;->getView()Landroid/view/View;

    move-result-object v6

    .line 44
    invoke-static {v2, v6}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 45
    iget-object v2, v0, Lcom/mgtv/ssp/adapter/AdHolder;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 46
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v6, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v2, v6, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(IZ)V

    .line 47
    invoke-virtual {v4}, Lcom/mgmi/ssp/NativeExpressADView;->getView()Landroid/view/View;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 49
    iget-object v0, v0, Lcom/mgtv/ssp/adapter/AdHolder;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    iput-boolean v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->V:Z

    .line 51
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$14;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$14;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    invoke-static {v0, v5}, Lcom/hunantv/imgo/util/ThreadManager;->post(Ljava/lang/Runnable;I)V

    return-void

    .line 52
    :cond_7
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    iget v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v2, v4}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(I)Lcom/mgtv/ssp/bean/VideoBean;

    move-result-object v2

    .line 53
    iget-object v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v4, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v4, v2, v5, v0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/bean/VideoBean;ILcom/mgtv/ssp/adapter/BaseHolder;)V

    goto :goto_1

    .line 54
    :cond_8
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    iget v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v2, v4}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(I)Lcom/mgtv/ssp/bean/VideoBean;

    move-result-object v2

    .line 55
    iget-object v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v4, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v4, v2, v5, v0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/bean/VideoBean;ILcom/mgtv/ssp/adapter/BaseHolder;)V

    .line 56
    :cond_9
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->x()V

    .line 57
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v2, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v2, :cond_b

    .line 58
    iget-boolean v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->Q:Z

    if-eqz v2, :cond_a

    .line 59
    iput-boolean v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->Q:Z

    .line 60
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    .line 61
    :cond_a
    check-cast v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(IZ)V

    .line 62
    :goto_2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->i(I)V

    .line 63
    :cond_b
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->G:Ljava/lang/String;

    const-string v0, "\u5728\u64ad\u653e\u5e7f\u544aitem "

    invoke-static {p0, v0, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 64
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_4
    return-void
.end method

.method public m()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->s:I

    iput v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->U:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(IZZ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m()V

    :goto_0
    return-void
.end method

.method public onBackPress()Z
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y()V

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->f(Z)V

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->l()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onItemChildClick(I)V
    .locals 3

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onitemchildclick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v2}, Lcom/mgtv/ssp/play/PlayerCore;->getPlayerStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getPlayerStatus()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getPlayerStatus()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L:Z

    .line 5
    iput-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->S:Z

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V

    .line 7
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayClicked(Z)V

    :cond_1
    return-void
.end method

.method public onItemChildClick(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->onPause()V

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->gotoBackground()V

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->onResume()V

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->h()V

    iget-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$5;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$5;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    const/16 v2, 0x1f4

    invoke-static {v0, v2}, Lcom/hunantv/imgo/util/ThreadManager;->post(Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v2, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(Z)V

    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->resume()V

    return-void
.end method

.method public onRetryItemChildClick()V
    .locals 0

    return-void
.end method

.method public onViewConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v0, p1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    invoke-virtual {p1, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->c(Z)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStop()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->getRealVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getIsPausedByUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStart(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayErrorView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayErrorView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayErrorView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStart(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->F:Z

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V

    :cond_1
    :goto_0
    return-void
.end method
