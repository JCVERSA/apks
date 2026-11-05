.class public Lcom/snaptube/premium/playback/window/PlayerWindowController;
.super Lo/db1;

# interfaces
.implements Lo/xg3;
.implements Lo/ut5$e;
.implements Lo/v55$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/playback/window/PlayerWindowController$WindowPlaySessionMediator;
    }
.end annotation


# instance fields
.field public A:Lo/wu7;

.field public B:I

.field public C:Landroid/widget/Scroller;

.field public D:Z

.field public E:Ljava/lang/Runnable;

.field public F:Ljava/lang/Runnable;

.field public final G:Ljava/lang/Runnable;

.field public H:Lo/rf3;

.field public I:Z

.field public J:Landroid/view/View$OnTouchListener;

.field public d:Landroid/view/WindowManager;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroid/view/WindowManager$LayoutParams;

.field public g:Lcom/snaptube/exoplayer/impl/BasePlayerView;

.field public h:I

.field public i:I

.field public j:I

.field public final k:Landroid/content/Context;

.field public l:Lo/ti7;

.field public m:Landroid/content/Intent;

.field public n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

.field public o:Lo/hi6;

.field public p:Lo/cu5;

.field public q:Lo/ut5;

.field public r:Lo/v55;

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/ImageView;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/ProgressBar;

.field public y:Lcom/snaptube/mixed_list/widget/FixedAspectRatioFrameLayout;

.field public z:Lo/lb3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lo/db1;-><init>()V

    sget-object v0, Lo/y32;->a:Lo/y32;

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/c89;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->B:I

    new-instance v0, Lo/ox5;

    invoke-direct {v0, p0}, Lo/ox5;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->E:Ljava/lang/Runnable;

    new-instance v0, Lcom/snaptube/premium/playback/window/PlayerWindowController$a;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController$a;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->F:Ljava/lang/Runnable;

    new-instance v0, Lcom/snaptube/premium/playback/window/PlayerWindowController$b;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController$b;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->G:Ljava/lang/Runnable;

    new-instance v0, Lcom/snaptube/premium/playback/window/PlayerWindowController$c;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController$c;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->H:Lo/rf3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->I:Z

    new-instance v0, Lcom/snaptube/premium/playback/window/PlayerWindowController$h;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController$h;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->J:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/d$b;

    invoke-interface {v0}, Lcom/snaptube/premium/app/d$b;->b()Lcom/snaptube/premium/app/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/snaptube/premium/app/d;->w(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    iput-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    new-instance v0, Lo/ti7;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lo/ti7;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->H:Lo/rf3;

    invoke-virtual {v0, v1}, Lo/ti7;->i(Lo/rf3;)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->C:Landroid/widget/Scroller;

    new-instance p1, Lo/hi6;

    invoke-direct {p1, p0}, Lo/hi6;-><init>(Lo/xg3;)V

    iput-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->o:Lo/hi6;

    return-void
.end method

.method public static bridge synthetic A(Lcom/snaptube/premium/playback/window/PlayerWindowController;)I
    .locals 0

    iget p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->B:I

    return p0
.end method

.method private A0()V
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f0()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;->a:Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;

    invoke-virtual {v1}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->getHistoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;->f(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->P0(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private B0()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v0}, Lo/ti7;->p()Z

    move-result v0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v1}, Lo/ti7;->q()Lo/cg3;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->G0()V

    return-void

    :cond_0
    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    if-eqz v0, :cond_3

    iput-boolean v2, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->playWhenReady:Z

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->m:Landroid/content/Intent;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v1, "cover_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    invoke-virtual {p0, v1, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->O0(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static bridge synthetic C(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->E:Ljava/lang/Runnable;

    return-object p0
.end method

.method private C0()V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->D0()V

    return-void
.end method

.method public static bridge synthetic D(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method private D0()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;->a:Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;

    invoke-virtual {v0}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->getHistoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p0(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ti7;->U(Z)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->P0(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic E(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Lo/lb3;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/snaptube/premium/playback/window/PlayerWindowController;)I
    .locals 0

    iget p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->i:I

    return p0
.end method

.method public static bridge synthetic I(Lcom/snaptube/premium/playback/window/PlayerWindowController;)I
    .locals 0

    iget p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->h:I

    return p0
.end method

.method public static bridge synthetic J(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->C:Landroid/widget/Scroller;

    return-object p0
.end method

.method public static bridge synthetic K(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->d:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static bridge synthetic L(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static bridge synthetic M(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Lo/hi6;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->o:Lo/hi6;

    return-object p0
.end method

.method public static bridge synthetic N(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Lo/ti7;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    return-object p0
.end method

.method public static bridge synthetic O(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic P(Lcom/snaptube/premium/playback/window/PlayerWindowController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->I:Z

    return-void
.end method

.method public static bridge synthetic Q(Lcom/snaptube/premium/playback/window/PlayerWindowController;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->d0(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic R(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f0()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic S(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->m0()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic T(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->o0()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic U(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->A0()V

    return-void
.end method

.method public static bridge synthetic V(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->B0()V

    return-void
.end method

.method public static bridge synthetic W(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->C0()V

    return-void
.end method

.method public static bridge synthetic X(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->M0()V

    return-void
.end method

.method public static bridge synthetic Y(Lcom/snaptube/premium/playback/window/PlayerWindowController;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->P0(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic Z(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->Q0()V

    return-void
.end method

.method public static synthetic a(Lcom/snaptube/premium/playback/window/PlayerWindowController;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic a0(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->T0()V

    return-void
.end method

.method public static bridge synthetic b0(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->U0()V

    return-void
.end method

.method public static synthetic c(Lcom/snaptube/premium/playback/window/PlayerWindowController;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/snaptube/premium/playback/window/PlayerWindowController;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->x0(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static synthetic f(Lcom/snaptube/premium/playback/window/PlayerWindowController;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->v0(Landroid/view/View;)V

    return-void
.end method

.method private g0(Landroid/content/Intent;)V
    .locals 10

    iput-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->m:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->j0()V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->r:Lo/v55;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/v55;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->r:Lo/v55;

    invoke-virtual {p1}, Lo/v55;->j()V

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "video_play_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    const-string v2, "cover_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->i0(Z)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-boolean v6, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->D:Z

    if-eqz v6, :cond_3

    invoke-virtual {v4, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->U0()V

    invoke-virtual {v0}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->enterWindowPlay()V

    :cond_3
    iget-boolean v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->D:Z

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->enterAudioPlay()V

    :cond_4
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/l38;->z(Ljava/lang/String;)J

    move-result-wide v6

    const-string v4, "start_position"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v4, "end_position"

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v4, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->videoDetailInfo:Lcom/snaptube/exoplayer/impl/VideoDetailInfo;

    iput-wide v8, v4, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->M:J

    iput-wide v6, v4, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->N:J

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    invoke-static {v4, v0}, Lo/nr8;->a(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;Lcom/snaptube/exoplayer/impl/VideoPlayInfo;)V

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->J0(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;)V

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    invoke-virtual {v4, v3}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->setPlayInWindow(Z)V

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->s:Landroid/view/View;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const-string v1, "prepare_play"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v0, v2}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->O0(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;->a:Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;

    invoke-virtual {v0}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->getHistoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;->g(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_7
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/playback/window/PlayerWindowController$g;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController$g;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->U0()V

    :cond_8
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {v0}, Lo/cj3;->s()Lcom/wandoujia/em/common/protomodel/Card;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->c0(Landroid/content/Intent;)V

    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lo/ao4;->c(Landroid/content/Context;Ljava/lang/String;Lo/db1;)V

    :cond_a
    const-string v0, "video_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->r:Lo/v55;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lo/v55;->d()V

    :cond_b
    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object p1

    invoke-interface {p1, v3}, Lo/kh3;->f(Z)V

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/premium/playback/window/PlayerWindowController;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->s0(Landroid/view/View;)V

    return-void
.end method

.method private m0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f0()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private n0()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v0}, Lo/ti7;->p()Z

    move-result v0

    return v0
.end method

.method private o0()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;->a:Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;

    invoke-virtual {v0}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->getHistoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snaptube/premium/playback/history/VideoHistoryStackManager;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p0(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private p0(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic v(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->w0()V

    return-void
.end method

.method public static synthetic w(Lcom/snaptube/premium/playback/window/PlayerWindowController;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->r0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic w0()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic x(Lcom/snaptube/premium/playback/window/PlayerWindowController;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->u0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic y(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->m:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Lcom/snaptube/exoplayer/impl/VideoPlayInfo;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    return-object p0
.end method


# virtual methods
.method public B(I)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v0}, Lo/ti7;->r()Lo/ig3;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v1}, Lo/ti7;->q()Lo/cg3;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v1}, Lo/ti7;->q()Lo/cg3;

    move-result-object v1

    invoke-interface {v1}, Lo/cg3;->R()Lo/qc3;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ig3;->g(Lo/qc3;)V

    :cond_0
    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-static {v1, p1}, Lo/y56;->d(Lo/lb3;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/ig3;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public E0(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/playback/window/a;->b:Lcom/snaptube/premium/playback/window/a$a;

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/playback/window/a$a;->a(Landroid/content/Intent;)Lcom/snaptube/premium/playback/window/a;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->R0()V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x433

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/px5;

    invoke-direct {v1, p0}, Lo/px5;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    new-instance v2, Lo/y90;

    invoke-direct {v2}, Lo/y90;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->A:Lo/wu7;

    const-string v0, "play_in_window"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->D:Z

    invoke-direct {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->g0(Landroid/content/Intent;)V

    return-void
.end method

.method public final F0(J)I
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v0}, Lo/ti7;->q()Lo/cg3;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    :goto_0
    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    div-long/2addr p1, v3

    long-to-int p2, p1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x0

    :goto_2
    return p2
.end method

.method public G0()V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->playWhenReady:Z

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    iget-object v1, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->videoDetailInfo:Lcom/snaptube/exoplayer/impl/VideoDetailInfo;

    iget-wide v1, v1, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->M:J

    iput-wide v1, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->position:J

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ti7;->L(J)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    invoke-virtual {v0, v1}, Lo/ti7;->T(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->U0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public H0()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->J0(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;)V

    return-void
.end method

.method public final I0(Lcom/snaptube/exoplayer/impl/VideoDetailInfo;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->d:Landroid/view/WindowManager;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, p1, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->w:I

    if-lez v0, :cond_7

    iget v0, p1, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->x:I

    if-gtz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->V0()V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v0}, Lo/c89;->c(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v1}, Lo/c89;->b(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v2}, Lo/c89;->a(Landroid/content/Context;)I

    move-result v2

    iget v3, p1, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->w:I

    iget p1, p1, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->x:I

    const/4 v4, -0x2

    if-lt v3, p1, :cond_3

    mul-int p1, p1, v0

    div-int v1, p1, v3

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    mul-int v3, v3, v1

    div-int v0, v3, p1

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->y:Lcom/snaptube/mixed_list/widget/FixedAspectRatioFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->y:Lcom/snaptube/mixed_list/widget/FixedAspectRatioFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->I:Z

    if-eqz v4, :cond_6

    if-lez p1, :cond_6

    if-lez v3, :cond_6

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v4, p1

    div-int/lit8 p1, v0, 0x2

    sub-int/2addr v4, p1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr p1, v3

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int p1, v4, v0

    iget v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->h:I

    sub-int/2addr p1, v3

    if-lez p1, :cond_4

    sub-int/2addr v4, p1

    :cond_4
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 p1, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v4, v3, v1

    iget v5, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->i:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_5

    sub-int/2addr v3, v4

    :cond_5
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->h:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->i:I

    invoke-virtual {p0, v2}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->d0(I)I

    move-result v2

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->y:Lcom/snaptube/mixed_list/widget/FixedAspectRatioFrameLayout;

    invoke-virtual {p1, v0, v1}, Lcom/snaptube/mixed_list/widget/FixedAspectRatioFrameLayout;->c(II)Z

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->d:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final J0(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->videoDetailInfo:Lcom/snaptube/exoplayer/impl/VideoDetailInfo;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->I0(Lcom/snaptube/exoplayer/impl/VideoDetailInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final K0(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "snaptubeapp.com"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    return-void
.end method

.method public final L0(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper;->c()Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper;->b(Landroid/content/Context;)Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;->o(Ljava/lang/String;)Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;->g(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public final M0()V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->playWhenReady:Z

    iget-object v2, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->videoDetailInfo:Lcom/snaptube/exoplayer/impl/VideoDetailInfo;

    iget-wide v2, v2, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->M:J

    iput-wide v2, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->position:J

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final N0()V
    .locals 8

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p:Lo/cu5;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->c0(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p:Lo/cu5;

    new-instance v7, Lcom/snaptube/premium/playback/window/PlayerWindowController$d;

    invoke-direct {v7, p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController$d;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lo/cu5;->q(Ljava/lang/String;JFLo/cu5$f;)V

    return-void
.end method

.method public final O0(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->g:Lcom/snaptube/exoplayer/impl/BasePlayerView;

    invoke-virtual {v0, v1}, Lo/ti7;->Q(Lo/ag3;)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->g:Lcom/snaptube/exoplayer/impl/BasePlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snaptube/exoplayer/impl/BasePlayerView;->getPlayerCover()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->L0(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {p2, p1}, Lo/ti7;->T(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;)V

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->o:Lo/hi6;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {p2}, Lo/ti7;->q()Lo/cg3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/hi6;->l(Lo/cg3;)V

    :cond_1
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q:Lo/ut5;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lo/ut5;->j()V

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q:Lo/ut5;

    iget-object p2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {p2}, Lo/ti7;->q()Lo/cg3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ut5;->r(Lo/cg3;)V

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q:Lo/ut5;

    invoke-virtual {p1, p0}, Lo/ut5;->m(Lo/ut5$e;)V

    :cond_2
    return-void
.end method

.method public final P0(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pos"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    invoke-direct {v2, v0}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, v2, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->pos:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->playWhenReady:Z

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->setMode(ZI)V

    invoke-static {p1}, Lcom/snaptube/mixed_list/util/IntentDecoder;->a(Landroid/content/Intent;)Lcom/snaptube/exoplayer/impl/VideoDetailInfo;

    move-result-object v1

    iput-object v1, v2, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->videoDetailInfo:Lcom/snaptube/exoplayer/impl/VideoDetailInfo;

    iput-boolean v0, v2, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->isAutoPlay:Z

    const-string v0, "video_play_info"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->g0(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->c0(Landroid/content/Intent;)V

    return-void
.end method

.method public final Q0()V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p:Lo/cu5;

    invoke-virtual {v0}, Lo/cu5;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q:Lo/ut5;

    invoke-virtual {v0}, Lo/ut5;->l()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->r:Lo/v55;

    invoke-virtual {v0}, Lo/v55;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->M()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->M()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->E:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z0()V

    return-void
.end method

.method public final R0()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->A:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->A:Lo/wu7;

    :cond_0
    return-void
.end method

.method public final S0()V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/playback/window/a;->b:Lcom/snaptube/premium/playback/window/a$a;

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {v1}, Lo/cj3;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/playback/window/a$a;->b(Ljava/lang/String;)Lcom/snaptube/premium/playback/window/a;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->c0(Landroid/content/Intent;)V

    return-void
.end method

.method public final T0()V
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803ab

    invoke-static {v1, v2}, Lo/in;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803c9

    invoke-static {v1, v2}, Lo/in;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->v:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->o0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->w:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->m0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final U0()V
    .locals 7

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->x:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v0}, Lo/ti7;->q()Lo/cg3;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    :goto_0
    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    move-wide v3, v1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v3

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->F0(J)I

    move-result v5

    iget-object v6, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v1

    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->F0(J)I

    move-result v1

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->M()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v2

    :goto_3
    if-eq v2, v1, :cond_6

    const/4 v1, 0x4

    if-eq v2, v1, :cond_6

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    if-ne v2, v0, :cond_5

    rem-long/2addr v3, v5

    sub-long/2addr v5, v3

    const-wide/16 v0, 0xc8

    cmp-long v2, v5, v0

    if-gez v2, :cond_5

    const-wide/16 v0, 0x7d0

    sub-long v5, v0, v3

    :cond_5
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->M()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_4
    return-void
.end method

.method public final V0()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v0}, Lo/py6;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->h:I

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v0}, Lo/py6;->g(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->i:I

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v1}, Lo/py6;->d(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/snaptube/util/a;->c(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->j:I

    return-void
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final c0(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {v0, p1}, Lo/mb3;->f(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {p1}, Lo/mb3;->clear()V

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {p1}, Lo/mb3;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {p1}, Lo/mb3;->d()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lo/mb3;->c(Z)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/premium/playback/window/PlayerWindowController$e;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController$e;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    new-instance v1, Lcom/snaptube/premium/playback/window/PlayerWindowController$f;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController$f;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    invoke-virtual {p1, v0, v1}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    :goto_0
    return-void
.end method

.method public final d0(I)I
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->j:I

    add-int/2addr p1, v0

    return p1
.end method

.method public e0()Lo/wo4;
    .locals 2

    new-instance v0, Lcom/snaptube/premium/playback/window/PlayerWindowController$WindowPlaySessionMediator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snaptube/premium/playback/window/PlayerWindowController$WindowPlaySessionMediator;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;Lo/wx5;)V

    return-object v0
.end method

.method public final f0()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {v0}, Lo/cj3;->s()Lcom/wandoujia/em/common/protomodel/Card;

    move-result-object v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->H()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {v1}, Lo/mb3;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/wandoujia/em/common/protomodel/Card;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {v0}, Lo/ri0;->O(Lcom/wandoujia/em/common/protomodel/Card;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0}, Lo/ri0;->q(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->K0(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q:Lo/ut5;

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v2}, Lo/q55;->B(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lo/ut5;->p(Z)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return v1
.end method

.method public final h0(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/snaptube/premium/configs/Config;->G6(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->i0(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p1

    const-string v0, "OP_SYSTEM_ALERT_WINDOW"

    invoke-static {p1, v0}, Lo/sq5;->j(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public i0(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->D:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->I:Z

    invoke-static {}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper;->c()Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper;->b(Landroid/content/Context;)Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;->b(Lo/ql6;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->exitWindowPlay()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lo/ti7;->U(Z)V

    :cond_2
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->g:Lcom/snaptube/exoplayer/impl/BasePlayerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lcom/snaptube/exoplayer/impl/BasePlayerView;->setPlayer(Lo/cg3;)V

    :cond_3
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->o:Lo/hi6;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo/hi6;->m()V

    :cond_4
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q:Lo/ut5;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lo/ut5;->t()V

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q:Lo/ut5;

    invoke-virtual {p1}, Lo/ut5;->j()V

    :cond_5
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->r:Lo/v55;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lo/v55;->d()V

    :cond_6
    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p:Lo/cu5;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lo/cu5;->f()V

    :cond_7
    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/kh3;->f(Z)V

    iput-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    return-void
.end method

.method public j0()V
    .locals 9

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/snaptube/premium/utils/WindowPlayUtils;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->d:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k0()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->V0()V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c0375

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v1, 0x7f09071e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    new-instance v1, Lo/cu5;

    invoke-direct {v1, v0}, Lo/cu5;-><init>(Landroid/view/ViewStub;)V

    iput-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p:Lo/cu5;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v0}, Lo/cu5;->p(F)V

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p:Lo/cu5;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo/cu5;->o(I)V

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v2, 0x7f090720

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    new-instance v2, Lo/ut5;

    invoke-direct {v2, v1}, Lo/ut5;-><init>(Landroid/view/ViewStub;)V

    iput-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q:Lo/ut5;

    invoke-virtual {v2, v0}, Lo/ut5;->o(F)V

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v2, 0x7f090726

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    new-instance v2, Lo/v55;

    invoke-direct {v2, v1}, Lo/v55;-><init>(Landroid/view/ViewStub;)V

    iput-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->r:Lo/v55;

    invoke-virtual {v2, p0}, Lo/v55;->g(Lo/v55$b;)V

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v2, 0x7f090152

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->t:Landroid/view/View;

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v2, 0x7f0901b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v3, 0x7f090b0c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v4, 0x7f090b0b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v5, 0x7f09071a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->u:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v6, 0x7f090452

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->v:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v7, 0x7f090727

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->w:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v8, 0x7f09072a

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->x:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_1

    const/16 v8, 0x3e8

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_1
    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f080294

    invoke-static {v4, v8}, Lo/in;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f0802f7

    invoke-static {v4, v8}, Lo/in;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->w:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f0803d7

    invoke-static {v4, v8}, Lo/in;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->v:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f0803d1

    invoke-static {v4, v8}, Lo/in;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->T0()V

    iget-object v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v4, 0x7f090aa8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/snaptube/mixed_list/widget/FixedAspectRatioFrameLayout;

    iput-object v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->y:Lcom/snaptube/mixed_list/widget/FixedAspectRatioFrameLayout;

    iget-object v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v4, 0x7f090aa9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v8, 0x7f090770

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->s:Landroid/view/View;

    new-instance v8, Lo/qx5;

    invoke-direct {v8, p0}, Lo/qx5;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lo/rx5;

    invoke-direct {v4, p0}, Lo/rx5;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lo/sx5;

    invoke-direct {v1, p0}, Lo/sx5;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lo/tx5;

    invoke-direct {v2, p0}, Lo/tx5;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lo/ux5;

    invoke-direct {v2, p0}, Lo/ux5;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lo/vx5;

    invoke-direct {v2, p0}, Lo/vx5;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const v2, 0x7f090734

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snaptube/exoplayer/impl/BasePlayerView;

    iput-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->g:Lcom/snaptube/exoplayer/impl/BasePlayerView;

    invoke-virtual {v1, v0}, Lcom/snaptube/exoplayer/impl/BasePlayerView;->setProgressBarScale(F)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->y:Lcom/snaptube/mixed_list/widget/FixedAspectRatioFrameLayout;

    const/16 v1, 0x168

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/mixed_list/widget/FixedAspectRatioFrameLayout;->c(II)Z

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->g:Lcom/snaptube/exoplayer/impl/BasePlayerView;

    invoke-virtual {v0}, Lcom/snaptube/exoplayer/impl/BasePlayerView;->getPlayerViewUIHelper()Lcom/snaptube/exoplayer/impl/a;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/playback/window/PlayerWindowController$i;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController$i;-><init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/exoplayer/impl/a;->w(Lcom/snaptube/exoplayer/impl/a$c;)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->J:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->d:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->e:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->h0(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k0()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    invoke-static {}, Lo/uh;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f6

    const/16 v4, 0x7f6

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/16 v0, 0x7d2

    const/16 v4, 0x7d2

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d5

    const/16 v4, 0x7d5

    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v1}, Lo/c89;->d(Landroid/content/Context;)I

    move-result v2

    const v5, 0x1040308

    const/4 v6, -0x3

    const/4 v3, -0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    return-object v0
.end method

.method public l0()Z
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/ti7;->q()Lo/cg3;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v0}, Lo/ti7;->q()Lo/cg3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2713

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2711

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne v2, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public n(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v0}, Lo/ti7;->q()Lo/cg3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/cg3;->l()Lo/jw5;

    move-result-object v0

    invoke-virtual {v0}, Lo/jw5;->D()V

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->f0()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->P0(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->N0()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->i0(Z)V

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->R0()V

    return-void
.end method

.method public bridge synthetic p(Ljava/lang/Object;Lo/mb8;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->y0(Landroid/graphics/Bitmap;Lo/mb8;)V

    return-void
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic q0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->G0()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->P0(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic r0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/snaptube/premium/service/PlayerService;->g(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->i0(Z)V

    return-void
.end method

.method public final synthetic s0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z0()V

    return-void
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {v0}, Lo/cj3;->s()Lcom/wandoujia/em/common/protomodel/Card;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    iget-object v1, v1, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->videoUrl:Ljava/lang/String;

    invoke-static {v0}, Lo/ri0;->G(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->l:Lo/ti7;

    invoke-virtual {v0}, Lo/ti7;->r()Lo/ig3;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->z:Lo/lb3;

    invoke-interface {v1}, Lo/cj3;->s()Lcom/wandoujia/em/common/protomodel/Card;

    move-result-object v1

    invoke-static {v0, v1}, Lo/y56;->g(Lo/ig3;Lcom/wandoujia/em/common/protomodel/Card;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic t0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->B0()V

    return-void
.end method

.method public synthetic u()Z
    .locals 1

    invoke-static {p0}, Lo/vt5;->a(Lo/ut5$e;)Z

    move-result v0

    return v0
.end method

.method public final synthetic u0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->C0()V

    return-void
.end method

.method public final synthetic v0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->A0()V

    return-void
.end method

.method public final synthetic x0(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->S0()V

    return-void
.end method

.method public y0(Landroid/graphics/Bitmap;Lo/mb8;)V
    .locals 0

    return-void
.end method

.method public final z0()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->resetPlayer:Z

    invoke-direct {p0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n0()Z

    move-result v2

    iput-boolean v2, v0, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->playWhenReady:Z

    new-instance v0, Lcom/snaptube/mixed_list/player/OverlayStatusData;

    invoke-direct {v0}, Lcom/snaptube/mixed_list/player/OverlayStatusData;-><init>()V

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->q:Lo/ut5;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/ut5;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    iput-boolean v1, v2, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->playWhenReady:Z

    const/4 v2, 0x1

    iput v2, v0, Lcom/snaptube/mixed_list/player/OverlayStatusData;->a:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->s:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    iput v2, v0, Lcom/snaptube/mixed_list/player/OverlayStatusData;->a:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p:Lo/cu5;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lo/cu5;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    iput v2, v0, Lcom/snaptube/mixed_list/player/OverlayStatusData;->a:I

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    iput-boolean v1, v2, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->playWhenReady:Z

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p:Lo/cu5;

    invoke-virtual {v2}, Lo/cu5;->d()F

    move-result v2

    iput v2, v0, Lcom/snaptube/mixed_list/player/OverlayStatusData;->c:F

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->p:Lo/cu5;

    invoke-virtual {v2}, Lo/cu5;->e()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snaptube/mixed_list/player/OverlayStatusData;->b:J

    :cond_3
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->m:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "auto_download"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "seek_pos"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EXTRA_OVERLAY_DATA"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "video_play_info"

    iget-object v3, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->n:Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    invoke-static {v0, v2}, Lo/uh1;->A(Landroid/content/Context;Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->i0(Z)V

    sget-object v1, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    iget-object v2, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController;->k:Landroid/content/Context;

    const-string v3, "/search_video_play"

    sget-object v4, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return-void
.end method
