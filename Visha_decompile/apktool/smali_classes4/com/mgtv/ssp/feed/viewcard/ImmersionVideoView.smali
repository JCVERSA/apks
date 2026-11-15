.class public Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;
.super Lcom/mgtv/ssp/viewcard/BaseVideoListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$a;
    }
.end annotation


# static fields
.field public static a:I = 0x186f8


# instance fields
.field private G:Landroid/os/Handler;

.field private H:Z

.field private I:Z

.field private J:Lcom/mgtv/ssp/widget/VideoLoadingView;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    const-string p1, "ImmersionVideoView"

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/control/GestureVideoController;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    return-object p0
.end method

.method public static synthetic B(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic C(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic D(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic E(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic F(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/control/GestureVideoController;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    return-object p0
.end method

.method public static synthetic G(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic H(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic I(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic J(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    return-object p0
.end method

.method public static synthetic K(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->w()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->H:Z

    return p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->I:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->F:Z

    return p0
.end method

.method public static synthetic e(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->getRealVisible()Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->h()V

    return-void
.end method

.method public static synthetic g(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    return p0
.end method

.method public static synthetic h(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->pause()V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic j(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic k(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic l(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public static synthetic m(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic n(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic o(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    return-object p0
.end method

.method public static synthetic p(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->F:Z

    return p0
.end method

.method public static synthetic q(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->getRealVisible()Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    return-object p0
.end method

.method public static synthetic s(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p()V

    return-void
.end method

.method public static synthetic t(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic u(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic v(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method private w()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->J:Lcom/mgtv/ssp/widget/VideoLoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->H:Z

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->I:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->F:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->getRealVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v0, v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic w(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->t()V

    return-void
.end method

.method public static synthetic x(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method private x()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->J:Lcom/mgtv/ssp/widget/VideoLoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getShowLoading()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->J:Lcom/mgtv/ssp/widget/VideoLoadingView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/ssp/widget/VideoLoadingView;->show(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getShowLoading()I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->w()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->G:Landroid/os/Handler;

    sget v1, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a:I

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTime()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->w()V

    :goto_0
    return-void
.end method

.method public static synthetic y(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic z(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/mgtv/ssp/widget/LoadMoreRecycleView;
    .locals 1

    .line 4
    sget v0, Lcom/mgtv/ssp/R$id;->rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    return-object p0
.end method

.method public a(IZZ)V
    .locals 6

    .line 5
    iget v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    if-eq v0, p1, :cond_9

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->stop()V

    .line 7
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/bean/VideoBean;

    .line 8
    iput p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 9
    iput-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    .line 10
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/y;->a(Landroid/view/View;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getType()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 13
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of p3, p2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz p3, :cond_2

    .line 14
    check-cast p2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {p2, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->i(I)V

    .line 15
    :cond_2
    iput-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    .line 16
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/y;->a(Landroid/view/View;)V

    return-void

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    .line 18
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    if-eqz v4, :cond_5

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    goto :goto_0

    :cond_5
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_6

    .line 20
    iput-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    .line 21
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/y;->a(Landroid/view/View;)V

    return-void

    .line 22
    :cond_6
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v4

    if-nez v4, :cond_7

    .line 23
    iput-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    return-void

    .line 24
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/ssp/viewcard/BaseView;->a(IZZ)V

    .line 25
    new-instance p2, Lcom/mgtv/ssp/play/MediaInfo;

    const-string p3, "immersion"

    invoke-static {p3}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/mgtv/ssp/play/MediaInfo;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/mgtv/ssp/play/MediaInfo;->videoId:Ljava/lang/String;

    .line 27
    iget-object p3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->k:Lcom/mgtv/ssp/auth/EntranceInfo;

    const-string v1, ""

    if-eqz p3, :cond_8

    .line 28
    invoke-virtual {p3}, Lcom/mgtv/ssp/auth/EntranceInfo;->getToken()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_8
    move-object p3, v1

    .line 29
    :goto_1
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v4

    iput-object v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    .line 30
    iget-object v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v5, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {v4, v5, p2, p3}, Lcom/mgtv/ssp/play/PlayerCore;->prepare(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mgtv/ssp/play/PlayerCore;->setLob(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mgtv/ssp/play/PlayerCore;->setPosition(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->t:I

    add-int/2addr v4, v3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mgtv/ssp/play/PlayerCore;->setCurPlayIndex(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->f:Ljava/lang/String;

    .line 35
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance p3, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$5;

    invoke-direct {p3, p0, v2}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$5;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;)V

    invoke-virtual {p2, p3}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoStartPlayingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;)V

    .line 36
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance p3, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$6;

    invoke-direct {p3, p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$6;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V

    invoke-virtual {p2, p3}, Lcom/mgtv/ssp/play/PlayerCore;->setSourcePrepareListener(Lcom/mgtv/ssp/c;)V

    .line 37
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance p3, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$7;

    invoke-direct {p3, p0, v2}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$7;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;)V

    invoke-virtual {p2, p3}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoPreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;)V

    .line 38
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p2}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/hunantv/imgo/util/y;->a(Landroid/view/View;)V

    .line 39
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    check-cast p2, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;

    invoke-virtual {p2}, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a()V

    .line 40
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    iget-object p3, v2, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-virtual {p2, p3, v3}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent(Lcom/mgtv/ssp/control/b;Z)V

    .line 41
    iget-object p2, v2, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    new-instance p3, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$8;

    invoke-direct {p3, p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$8;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V

    invoke-virtual {p2, p3}, Lcom/mgtv/ssp/widget/ImmerCoverView;->setAutoPlayClickListener(Lcom/mgtv/ssp/immersion/a/a;)V

    .line 42
    iget-object p2, v2, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    new-instance p3, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$9;

    invoke-direct {p3, p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$9;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V

    invoke-virtual {p2, p3}, Lcom/mgtv/ssp/widget/ImmerCoverView;->setOnItemClickListener(Lcom/mgtv/ssp/adapter/listener/a;)V

    .line 43
    iget-object p2, v2, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->g:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p3}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 44
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance p3, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;

    invoke-direct {p3, p0, p1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;I)V

    invoke-virtual {p2, p3}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoCompleteListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;)V

    .line 45
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance p2, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$2;

    invoke-direct {p2, p0, v2}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$2;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;)V

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAdStartPlayingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->onVisibilityChanged(Z)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 48
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v2}, Lcom/mgtv/ssp/play/PlayerCore;->isInterruptBeforeAd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0, v1, v0, v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->resume()V

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->pause()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p0, v1, v0, v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 2

    .line 2
    new-instance v0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;-><init>(Ljava/util/List;)V

    .line 3
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0
.end method

.method public c()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 2

    .line 2
    new-instance v0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public d()Lcom/mgtv/task/http/HttpParams;
    .locals 0

    .line 2
    new-instance p0, Lcom/mgtv/ssp/net/FeedBaseHttpParamas;

    invoke-direct {p0}, Lcom/mgtv/ssp/net/FeedBaseHttpParamas;-><init>()V

    invoke-static {p0}, Lcom/mgtv/ssp/net/a;->a(Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->destroy()V

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->f()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 2
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$a;-><init>(Landroid/os/Looper;Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V

    iput-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->G:Landroid/os/Handler;

    .line 3
    invoke-super {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e()V

    .line 4
    sget v0, Lcom/mgtv/ssp/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/widget/VideoLoadingView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->J:Lcom/mgtv/ssp/widget/VideoLoadingView;

    .line 5
    sget v0, Lcom/mgtv/ssp/R$id;->tv_error:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m:Landroid/widget/TextView;

    .line 6
    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {v0}, Lcom/mgtv/ssp/play/PlayerCore;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    .line 7
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->getModType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setFrom(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setRequestPauseAd(Z)V

    .line 9
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->init(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    new-instance v0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    .line 11
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v1, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setVideoController(Lcom/mgtv/ssp/control/BaseVideoController;)V

    .line 12
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast v0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->a(Lcom/mgtv/ssp/immersion/a/b;)V

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->u()V

    .line 14
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$3;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$3;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;)V

    .line 15
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setmAutoCallback(Lcom/mgtv/ssp/fragment/BaseListFragment$a;)V

    .line 16
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->G:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 3
    sget v0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->pause()V

    return-void
.end method

.method public getLayoutResId()I
    .locals 0

    sget p0, Lcom/mgtv/ssp/R$layout;->immer_list_view:I

    return p0
.end method

.method public getModType()Ljava/lang/String;
    .locals 0

    const-string p0, "immersion"

    return-object p0
.end method

.method public getRetryUrl()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/net/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/feed/immersion"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x4

    invoke-static {p0}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->x()V

    return-void
.end method

.method public m()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    iget v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/bean/VideoBean;

    .line 3
    new-instance v1, Lcom/mgtv/ssp/play/MediaInfo;

    const-string v2, "immersion"

    invoke-static {v2}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mgtv/ssp/play/MediaInfo;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/ssp/play/MediaInfo;->videoId:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->k:Lcom/mgtv/ssp/auth/EntranceInfo;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/EntranceInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    const-string v0, ""

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/mgtv/ssp/play/PlayerCore;->prepare(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    .line 11
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    iget-object v0, v0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent(Lcom/mgtv/ssp/control/b;Z)V

    return-void
.end method

.method public onBackPress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->onPause()V

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->gotoBackground()V

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->onResume()V

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->backToFront()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->resume()V

    return-void
.end method

.method public onViewConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImmersionVideoFragment pause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v1, :cond_0

    const-string v1, "ImmersionVideoFragment onActivityStop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStop()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->getRealVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getIsPausedByUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStart(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStart(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->F:Z

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V

    :cond_1
    :goto_0
    return-void
.end method
