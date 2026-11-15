.class public Lcom/transsion/magicvideo/widgets/PlayerViewController;
.super Lcom/transsion/magicvideo/widgets/TouchWindowLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$c;
.implements Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$d;
.implements Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/PlayerViewController$d;,
        Lcom/transsion/magicvideo/widgets/PlayerViewController$c;,
        Lcom/transsion/magicvideo/widgets/PlayerViewController$a;,
        Lcom/transsion/magicvideo/widgets/PlayerViewController$b;
    }
.end annotation


# instance fields
.field public c0:Lcom/transsion/magicvideo/widgets/PlayerViewController$a;

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field public h0:Lcom/transsion/magicvideo/widgets/PlayerViewController$b;

.field public i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

.field public j0:J

.field public final k0:Ljava/lang/Runnable;

.field public l0:Ljava/lang/Runnable;

.field public m0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

.field public mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

.field public n0:Lby3;

.field public o0:I

.field public p0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lwb8;

    invoke-direct {p1, p0}, Lwb8;-><init>(Lcom/transsion/magicvideo/widgets/PlayerViewController;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->k0:Ljava/lang/Runnable;

    .line 3
    new-instance p1, Lxb8;

    invoke-direct {p1, p0}, Lxb8;-><init>(Lcom/transsion/magicvideo/widgets/PlayerViewController;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->l0:Ljava/lang/Runnable;

    .line 4
    new-instance p1, Lcom/transsion/magicvideo/data/VideoOpStatus;

    invoke-direct {p1}, Lcom/transsion/magicvideo/data/VideoOpStatus;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    .line 5
    new-instance p1, Lby3;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lby3;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    .line 6
    iput v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->o0:I

    .line 7
    iput v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->p0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Lwb8;

    invoke-direct {p1, p0}, Lwb8;-><init>(Lcom/transsion/magicvideo/widgets/PlayerViewController;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->k0:Ljava/lang/Runnable;

    .line 10
    new-instance p1, Lxb8;

    invoke-direct {p1, p0}, Lxb8;-><init>(Lcom/transsion/magicvideo/widgets/PlayerViewController;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->l0:Ljava/lang/Runnable;

    .line 11
    new-instance p1, Lcom/transsion/magicvideo/data/VideoOpStatus;

    invoke-direct {p1}, Lcom/transsion/magicvideo/data/VideoOpStatus;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    .line 12
    new-instance p1, Lby3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lby3;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    .line 13
    iput p2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->o0:I

    .line 14
    iput p2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->p0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Lwb8;

    invoke-direct {p1, p0}, Lwb8;-><init>(Lcom/transsion/magicvideo/widgets/PlayerViewController;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->k0:Ljava/lang/Runnable;

    .line 17
    new-instance p1, Lxb8;

    invoke-direct {p1, p0}, Lxb8;-><init>(Lcom/transsion/magicvideo/widgets/PlayerViewController;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->l0:Ljava/lang/Runnable;

    .line 18
    new-instance p1, Lcom/transsion/magicvideo/data/VideoOpStatus;

    invoke-direct {p1}, Lcom/transsion/magicvideo/data/VideoOpStatus;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    .line 19
    new-instance p1, Lby3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lby3;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    .line 20
    iput p2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->o0:I

    .line 21
    iput p2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->p0:I

    return-void
.end method

.method public static synthetic E(Lcom/transsion/magicvideo/widgets/PlayerViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->N()V

    return-void
.end method

.method private synthetic N()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->R(Z)V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 2

    const-string v0, "PlayerViewController"

    const-string v1, "autoPlayPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->G(Z)V

    return-void
.end method

.method public final G(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->m0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {p0, p1}, Lrtb;->a(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Z)V

    return-void
.end method

.method public final H()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->J()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->G(Z)V

    return-void
.end method

.method public final I()J
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iget-wide v1, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mDuration:J

    const-wide/16 v3, 0x1388

    cmp-long p0, v1, v3

    if-gez p0, :cond_1

    goto :goto_3

    :cond_1
    const-wide/32 v5, 0xea60

    cmp-long p0, v1, v5

    if-gez p0, :cond_2

    sub-long v3, v1, v3

    goto :goto_3

    :cond_2
    const-wide/32 v3, 0x927c0

    cmp-long p0, v1, v3

    if-gez p0, :cond_4

    if-eqz v0, :cond_3

    const-wide/32 v3, 0x19a28

    goto :goto_1

    :cond_3
    const-wide/32 v3, 0x124f8

    :goto_1
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_3

    :cond_4
    const-wide/32 v3, 0x36ee80

    cmp-long p0, v1, v3

    if-gez p0, :cond_6

    if-eqz v0, :cond_5

    const-wide/32 v0, 0x36ee8

    :goto_2
    move-wide v3, v0

    goto :goto_3

    :cond_5
    const-wide/32 v0, 0x2f9b8

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    const-wide/32 v0, 0x543a8

    goto :goto_2

    :cond_7
    const-wide/32 v0, 0x4ce78

    goto :goto_2

    :goto_3
    return-wide v3
.end method

.method public final J()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->k0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->k0:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public K(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->S:Z

    if-eqz v0, :cond_0

    const-string p0, "PlayerViewController"

    const-string p1, "can\'t hideDisplayUI inVideoErrorState"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->hideDisplayUI(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {p1}, Lraa;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->hideDisplayUI(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public L()V
    .locals 1

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->isPlayUIShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->k0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public M()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public O(JJJ)V
    .locals 0

    return-void
.end method

.method public P()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Q()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public R(Z)V
    .locals 12

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    int-to-long v6, v0

    :try_start_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v8, v0

    :try_start_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lby3;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iget-wide v8, v0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMovePosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v10, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v10, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    cmp-long v0, v6, v4

    const-wide/16 v10, 0x0

    if-gtz v0, :cond_2

    :goto_1
    move-object v1, p0

    move-wide v2, v8

    move-wide v4, v6

    move-wide v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->onProgressUpdateError(JJJ)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->m0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-object v1, p0

    move-wide v3, v8

    move-wide v5, v6

    move-wide v7, v10

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->Y(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;JJJ)V

    return-void

    :catchall_1
    move-exception v0

    move-wide v8, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-wide v6, v4

    move-wide v8, v6

    :goto_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->l0:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v11, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->l0:Ljava/lang/Runnable;

    invoke-virtual {v10, v11, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    cmp-long v2, v6, v4

    const-wide/16 v10, 0x0

    if-gtz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->m0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-object v1, p0

    move-wide v3, v8

    move-wide v5, v6

    move-wide v7, v10

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->Y(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;JJJ)V

    throw v0
.end method

.method public S()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->T:Z

    if-eqz v0, :cond_0

    const-string p0, "PlayerViewController"

    const-string v0, "can\'t showDisplayUI inForceHideUIState"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->showDisplayUI(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->J()V

    return-void
.end method

.method public T()V
    .locals 0

    return-void
.end method

.method public U()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->shouldShowPauseButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "video_pause"

    goto :goto_0

    :cond_0
    const-string v1, "video_play"

    :goto_0
    sget-object v2, Ln16;->a:Ln16$a;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ln16$a;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p2(ZZ)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    invoke-virtual {p0, v3}, Lby3;->e(I)V

    :cond_1
    return-void
.end method

.method public V()V
    .locals 0

    return-void
.end method

.method public W(Z)V
    .locals 0

    return-void
.end method

.method public X(I)V
    .locals 0

    return-void
.end method

.method public final Y(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;JJJ)V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->M()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lby3;->b(I)Z

    move-result p1

    if-nez p1, :cond_0

    move-wide v1, p4

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    move-object v0, p0

    move-wide v3, p4

    move-wide v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->O(JJJ)V

    return-void
.end method

.method public changeVideoSourcePlay()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lby3;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    invoke-virtual {p0, v1}, Lby3;->e(I)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->k0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->P()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->c0:Lcom/transsion/magicvideo/widgets/PlayerViewController$a;

    return-void
.end method

.method public doAudioBecomingNoisy()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->shouldShowPauseButton()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAudioBecomingNoisy pause video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerViewController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->m0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lrtb;->r(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;ZZ)V

    :cond_0
    return-void
.end method

.method public doHeadsetsKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->U()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->S()V

    return-void
.end method

.method public getShowOrHideHorizontalDurationListener()Lcom/transsion/magicvideo/widgets/PlayerViewController$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

    return-object p0
.end method

.method public handleInnerPlayForwardOrRetreatForMediaPlayer(ZZLcom/transsion/magicvideo/widgets/PlayerViewController$c;)V
    .locals 11

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->M()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result v0

    int-to-long v7, v0

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gtz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v0

    int-to-long v0, v0

    if-eqz p2, :cond_3

    const-wide/16 v2, 0x2710

    goto :goto_0

    :cond_3
    long-to-float p2, v7

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr p2, v2

    float-to-long v2, p2

    const-wide/16 v4, 0x1388

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    if-nez p1, :cond_4

    const-wide/16 p1, -0x1

    mul-long/2addr v2, p1

    :cond_4
    add-long v1, v0, v2

    const-wide/16 v3, 0x0

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lrtb;->d(JJJ)J

    move-result-wide p1

    cmp-long v0, p1, v9

    if-eqz v0, :cond_5

    cmp-long v0, p1, v7

    if-nez v0, :cond_6

    :cond_5
    if-eqz p3, :cond_6

    invoke-interface {p3}, Lcom/transsion/magicvideo/widgets/PlayerViewController$c;->a()V

    :cond_6
    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q1(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->R(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->P()V

    return-void
.end method

.method public onPlayStatusEnd()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->h(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->n:Z

    if-nez v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/transsion/magicvideo/utils/GpReviewUtils;->e(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->O:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/transsion/magicvideo/utils/GpReviewUtils;->f(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "video_from"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "launcher_icon_added"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is icon added:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayerViewController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const-string v1, "com.gallery20"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {p0}, Lzg9;->p(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onPlayUIDisplay()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->J()V

    return-void
.end method

.method public onPlayUIStatusChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->c0:Lcom/transsion/magicvideo/widgets/PlayerViewController$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public onProgressUpdateError(JJJ)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressUpdateError:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",duration:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", bufferedPosition:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayerViewController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScreenClick(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onScreenClick(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;->a()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->isPlayUIShowing(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->S()V

    :goto_0
    return-void
.end method

.method public onScreenEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onScreenScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iget v0, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mBeginScale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mCurrentScale:F

    const/4 p0, 0x0

    return p0
.end method

.method public onScreenScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iget p1, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mCurrentScale:F

    iput p1, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mBeginScale:F

    const/4 p0, 0x1

    return p0
.end method

.method public onVideoPlayerStateChange(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->W(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->X(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->Q()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->onPlayStatusEnd()V

    :cond_2
    :goto_1
    return-void
.end method

.method public p(IF)V
    .locals 1

    sget-object p1, Ln16;->a:Ln16$a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    const-string v0, "video_play_gesture_brightness"

    invoke-virtual {p1, v0, p0}, Ln16$a;->b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->P()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->F()V

    return-void
.end method

.method public q(IF)V
    .locals 12

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->I()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-long v2, v0

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iget-wide v4, p2, Lcom/transsion/magicvideo/data/VideoOpStatus;->mTimePosition:J

    add-long v6, v4, v2

    const-wide/16 v8, 0x0

    iget-wide v10, p2, Lcom/transsion/magicvideo/data/VideoOpStatus;->mDuration:J

    invoke-static/range {v6 .. v11}, Lrtb;->d(JJJ)J

    move-result-wide v2

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iget-wide v4, p2, Lcom/transsion/magicvideo/data/VideoOpStatus;->mDuration:J

    iput-wide v2, p2, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMovePosition:J

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->R(Z)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iget-wide v4, p2, Lcom/transsion/magicvideo/data/VideoOpStatus;->mTimePosition:J

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    const-string p2, "video_play_gesture_retreat"

    const-string v0, "video_play_gesture_retreat_duration"

    goto :goto_1

    :cond_1
    const-string p2, "video_play_gesture_forward"

    const-string v0, "video_play_gesture_forward_duration"

    :goto_1
    const/16 v4, 0x8

    const/4 v5, 0x4

    if-eq p1, v4, :cond_5

    const/16 v4, 0x10

    if-eq p1, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    invoke-virtual {p1, v5}, Lby3;->e(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    invoke-virtual {p1, v1}, Lby3;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    invoke-virtual {p1, v1}, Lby3;->e(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lby3;->a(I)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    long-to-int v4, v2

    invoke-virtual {p1, v4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q1(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    :cond_4
    sget-object p1, Ln16;->a:Ln16$a;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ln16$a;->b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget-wide p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->j0:J

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->j0:J

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-wide v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->j0:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v5, "duration"

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result v1

    const-string v2, "from"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v6, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->j0:J

    div-long/2addr v6, v3

    invoke-virtual {p2, v5, v6, v7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result p0

    invoke-virtual {p2, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-wide/16 v1, 0x246c

    invoke-static {p2, p1, v0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->shouldShowPauseButton()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    invoke-virtual {p1, v1}, Lby3;->a(I)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    invoke-virtual {p1, v5}, Lby3;->a(I)V

    iput-wide v2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->j0:J

    :goto_3
    return-void
.end method

.method public r(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r(I)V

    const-string v0, "ACTION_DOWN "

    const-string v1, "PlayerViewController"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->k0:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->J()V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->J()V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->H()V

    return-void
.end method

.method public s(IF)V
    .locals 1

    sget-object p1, Ln16;->a:Ln16$a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    const-string v0, "video_play_gesture_volume"

    invoke-virtual {p1, v0, p0}, Ln16$a;->b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setForceShowUIState(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->setForceShowUIState(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->f0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->f0:Z

    invoke-interface {p1, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController$d;->a(Z)V

    :cond_0
    return-void
.end method

.method public setFromInternet(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->d0:Z

    return-void
.end method

.method public setPlayProgressListener(Lcom/transsion/magicvideo/widgets/PlayerViewController$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->h0:Lcom/transsion/magicvideo/widgets/PlayerViewController$b;

    return-void
.end method

.method public setPlayViewStatusChangeListener(Lcom/transsion/magicvideo/widgets/PlayerViewController$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->c0:Lcom/transsion/magicvideo/widgets/PlayerViewController$a;

    return-void
.end method

.method public setPlayerMediaView(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->m0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lby3;->e(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->n0:Lby3;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lby3;->a(I)V

    return-void
.end method

.method public setShowOnlineError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->e0:Z

    return-void
.end method

.method public setShowOrHideHorizontalDurationListener(Lcom/transsion/magicvideo/widgets/PlayerViewController$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

    return-void
.end method

.method public shouldShowPauseButton()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p0

    return p0
.end method

.method public t()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tranthunderback_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->M:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result v0

    int-to-long v6, v0

    iget-object v8, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->mOpStatus:Lcom/transsion/magicvideo/data/VideoOpStatus;

    invoke-static/range {v3 .. v8}, Lrtb;->s(Landroid/content/Context;JJLcom/transsion/magicvideo/data/VideoOpStatus;)V

    return-void
.end method

.method public updatePreviousAndNextButton(ZZ)V
    .locals 0

    return-void
.end method
