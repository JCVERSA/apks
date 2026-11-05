.class public Lcom/snaptube/ads/view/AdPlayerContainer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/exoplayer2/j$c;
.implements Lo/kh1;
.implements Lcom/snaptube/ads/nativead/AdView$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/ads/view/AdPlayerContainer$f;,
        Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;,
        Lcom/snaptube/ads/view/AdPlayerContainer$g;,
        Lcom/snaptube/ads/view/AdPlayerContainer$h;,
        Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;
    }
.end annotation


# instance fields
.field public final A:Lcom/snaptube/ads/view/AdPlayerContainer$f;

.field public B:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

.field public C:I

.field public D:I

.field public E:F

.field public F:Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;

.field public G:Lcom/snaptube/ads/view/AdPlayerContainer$h;

.field public final H:Landroidx/recyclerview/widget/RecyclerView$q;

.field public final I:Lcom/google/android/exoplayer2/Player$c;

.field public a:Ljava/lang/String;

.field public b:Landroid/view/View;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/snaptube/ads/view/AdPlayerView;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lo/wu7;

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Lcom/snaptube/ads/nativead/AdView;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:J

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public s:J

.field public t:J

.field public u:Z

.field public v:Lo/qa;

.field public final w:Landroid/os/Handler;

.field public x:Landroid/view/View;

.field public y:Lcom/snaptube/ads/view/AdPlayerView$b;

.field public z:Lo/ga8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->c:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->i:Lo/wu7;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->w:Landroid/os/Handler;

    new-instance p3, Lcom/snaptube/ads/view/AdPlayerContainer$f;

    invoke-direct {p3, p2}, Lcom/snaptube/ads/view/AdPlayerContainer$f;-><init>(Lo/oa;)V

    iput-object p3, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->A:Lcom/snaptube/ads/view/AdPlayerContainer$f;

    sget-object p2, Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;->INITIAL:Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;

    iput-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->F:Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;

    new-instance p2, Lcom/snaptube/ads/view/AdPlayerContainer$a;

    invoke-direct {p2, p0}, Lcom/snaptube/ads/view/AdPlayerContainer$a;-><init>(Lcom/snaptube/ads/view/AdPlayerContainer;)V

    iput-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->H:Landroidx/recyclerview/widget/RecyclerView$q;

    new-instance p2, Lcom/snaptube/ads/view/AdPlayerContainer$d;

    invoke-direct {p2, p0}, Lcom/snaptube/ads/view/AdPlayerContainer$d;-><init>(Lcom/snaptube/ads/view/AdPlayerContainer;)V

    iput-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->I:Lcom/google/android/exoplayer2/Player$c;

    invoke-direct {p0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->i0(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/snaptube/ads/view/AdPlayerContainer;)Lcom/snaptube/ads/view/AdPlayerView;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    return-object p0
.end method

.method public static bridge synthetic M(Lcom/snaptube/ads/view/AdPlayerContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic R(Lcom/snaptube/ads/view/AdPlayerContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->x:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic T(Lcom/snaptube/ads/view/AdPlayerContainer;)Lo/ga8;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->z:Lo/ga8;

    return-object p0
.end method

.method public static bridge synthetic U(Lcom/snaptube/ads/view/AdPlayerContainer;Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/ads/view/AdPlayerContainer;->g0(Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public static bridge synthetic V(Lcom/snaptube/ads/view/AdPlayerContainer;Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->setRenderState(Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;)V

    return-void
.end method

.method public static bridge synthetic W(Lcom/snaptube/ads/view/AdPlayerContainer;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/ads/view/AdPlayerContainer;->D0(J)V

    return-void
.end method

.method public static bridge synthetic Y(Lcom/snaptube/ads/view/AdPlayerContainer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->E0()V

    return-void
.end method

.method public static bridge synthetic a0(Lcom/snaptube/ads/view/AdPlayerContainer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->F0()V

    return-void
.end method

.method public static synthetic e(Lcom/snaptube/ads/view/AdPlayerContainer;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/ads/view/AdPlayerContainer;->j0(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/snaptube/ads/view/AdPlayerContainer;Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->l0(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    return-void
.end method

.method public static synthetic g(Lcom/snaptube/ads/view/AdPlayerContainer;Lcom/google/android/exoplayer2/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->k0(Lcom/google/android/exoplayer2/j;)V

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/ads/view/AdPlayerContainer;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->m0(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method private h0()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lo/x24;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lo/x24;

    invoke-interface {v0}, Lo/x24;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Lo/w24;)V

    :cond_0
    return-void
.end method

.method public static synthetic i(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->n0(Ljava/lang/Throwable;)V

    return-void
.end method

.method private i0(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/snaptube/ads/R$layout;->ad_feed_player_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Lo/qa;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/qa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    sget p1, Lcom/snaptube/ads/R$id;->play_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->x:Landroid/view/View;

    sget p1, Lcom/snaptube/premium/base/ui/R$id;->nativeAdPlayerContainer:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public static synthetic n0(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "AdPlayerException"

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/snaptube/ads/view/AdPlayerContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->n:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/snaptube/ads/view/AdPlayerContainer;)Lo/qa;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/snaptube/ads/view/AdPlayerContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->h:Ljava/lang/String;

    return-object p0
.end method

.method private setRenderState(Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->F:Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;

    sget-object v1, Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;->NORMAL:Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->G:Lcom/snaptube/ads/view/AdPlayerContainer$h;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer$h;->onStateChange(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->F:Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;

    :cond_1
    return-void
.end method

.method public static bridge synthetic t(Lcom/snaptube/ads/view/AdPlayerContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->a:Ljava/lang/String;

    return-object p0
.end method

.method private x0()V
    .locals 10

    iget-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->n:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->p:Z

    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->s:J

    cmp-long v0, v4, v1

    if-lez v0, :cond_0

    iget-wide v6, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->q:J

    const-wide/16 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/snaptube/ads/view/AdPlayerContainer;->r0(JJJ)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->n:Z

    iput-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->o:Z

    iput-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->p:Z

    iput-wide v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->q:J

    iput-wide v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->s:J

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->F0()V

    return-void
.end method


# virtual methods
.method public final A0(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Lo/iy8;

    move-result-object p1

    if-nez p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lo/iy8;->b(F)Lo/iy8;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lo/iy8;->f(J)Lo/iy8;

    move-result-object p1

    new-instance v0, Lcom/snaptube/ads/view/AdPlayerContainer$c;

    invoke-direct {v0, p0, p2}, Lcom/snaptube/ads/view/AdPlayerContainer$c;-><init>(Lcom/snaptube/ads/view/AdPlayerContainer;I)V

    invoke-virtual {p1, v0}, Lo/iy8;->h(Lo/ky8;)Lo/iy8;

    move-result-object p1

    invoke-virtual {p1}, Lo/iy8;->l()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final B0(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget p2, Lcom/snaptube/ui/library/R$drawable;->ic_ad_voice_mute:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/snaptube/ui/library/R$drawable;->ic_ad_voice_normal:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public final C0(Lcom/google/android/exoplayer2/j;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->m:Lcom/snaptube/ads/nativead/AdView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/snaptube/ads/nativead/AdView;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j;->getPlayWhenReady()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final D0(J)V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {v0}, Lo/qa;->e()Lcom/google/android/exoplayer2/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->p:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->u:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->u:Z

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->w:Landroid/os/Handler;

    new-instance v2, Lo/ma;

    invoke-direct {v2, p0, v0}, Lo/ma;-><init>(Lcom/snaptube/ads/view/AdPlayerContainer;Lcom/google/android/exoplayer2/j;)V

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public E(Lo/x24;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->c()V

    return-void
.end method

.method public final E0()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/snaptube/ads/view/AdPlayerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/snaptube/ads/view/AdPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/AdPlayerView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    sget v0, Lcom/snaptube/ads/R$id;->playerContainer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    sget-object v0, Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;->StartPlayer:Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->g0(Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->y:Lcom/snaptube/ads/view/AdPlayerView$b;

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/AdPlayerView;->setAdPlayerListener(Lcom/snaptube/ads/view/AdPlayerView$b;)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->I:Lcom/google/android/exoplayer2/Player$c;

    invoke-virtual {v0, v1}, Lo/qa;->f(Lcom/google/android/exoplayer2/Player$c;)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {v0, p0}, Lo/qa;->n(Lcom/google/android/exoplayer2/j$c;)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    new-instance v1, Lo/ja;

    invoke-direct {v1, p0}, Lo/ja;-><init>(Lcom/snaptube/ads/view/AdPlayerContainer;)V

    invoke-virtual {v0, v1}, Lo/qa;->m(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->z0(Z)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    iget-object v2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/qa;->j(Lcom/snaptube/ads/view/AdPlayerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final F0()V
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->u:Z

    :cond_0
    return-void
.end method

.method public final G0()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->i:Lo/wu7;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x44f

    const/16 v2, 0x450

    const/16 v3, 0x42a

    const/16 v4, 0x42b

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/ka;

    invoke-direct {v1, p0}, Lo/ka;-><init>(Lcom/snaptube/ads/view/AdPlayerContainer;)V

    new-instance v2, Lo/la;

    invoke-direct {v2}, Lo/la;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->i:Lo/wu7;

    return-void
.end method

.method public H0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/AdPlayerView;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->c:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/snaptube/ads/view/AdPlayerContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/snaptube/ads/view/AdPlayerContainer;

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->d:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->e:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    iget v2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->c:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->c:I

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->u0(Z)V

    return-void
.end method

.method public final I0()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->i:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->i:Lo/wu7;

    :cond_0
    return-void
.end method

.method public L(Lo/x24;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->a()V

    return-void
.end method

.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->G0()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->z0(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->I0()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->t0(Z)Z

    return-void
.end method

.method public c0(Lcom/snaptube/ads/view/AdPlayerContainer$g;)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->A:Lcom/snaptube/ads/view/AdPlayerContainer$f;

    invoke-virtual {v0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer$f;->b(Lcom/snaptube/ads/view/AdPlayerContainer$g;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->u0(Z)V

    return-void
.end method

.method public d0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;Landroid/view/View;Lcom/snaptube/ads/nativead/AdView;)V
    .locals 7

    iput-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->B:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getTrackingModel()Lo/ga8;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->z:Lo/ga8;

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->f0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    invoke-direct {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->x0()V

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdVideoWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->E:F

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/od;->d(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->t:J

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_7

    iput-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iget-object v4, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v6, p2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_2
    if-le v5, v2, :cond_7

    iget-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    if-eqz p2, :cond_7

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->d:I

    iget-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->e:I

    iput v5, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->c:I

    iget-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-nez v3, :cond_5

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_5
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3
    instance-of p2, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_6

    move-object p2, v3

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_6
    invoke-virtual {v0, p0, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/snaptube/ads/view/AdPlayerContainer$b;

    invoke-direct {v0, p0}, Lcom/snaptube/ads/view/AdPlayerContainer$b;-><init>(Lcom/snaptube/ads/view/AdPlayerContainer;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_7
    iget-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->m:Lcom/snaptube/ads/nativead/AdView;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p0}, Lcom/snaptube/ads/nativead/AdView;->l0(Lcom/snaptube/ads/nativead/AdView$e;)V

    :cond_8
    iput-object p3, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->m:Lcom/snaptube/ads/nativead/AdView;

    if-eqz p3, :cond_9

    invoke-virtual {p3, p0}, Lcom/snaptube/ads/nativead/AdView;->M(Lcom/snaptube/ads/nativead/AdView$e;)V

    :cond_9
    iget-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_a

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    invoke-virtual {p0, v1, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->setAdCoverViewVisibility(IZ)V

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdVastUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->E0()V

    return-void
.end method

.method public e0(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {v0}, Lo/qa;->g()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->B0(Landroid/widget/ImageView;Z)V

    new-instance v0, Lo/na;

    invoke-direct {v0, p0, p1}, Lo/na;-><init>(Lcom/snaptube/ads/view/AdPlayerContainer;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final f0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->l:Ljava/lang/String;

    return-void
.end method

.method public final g0(Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->A:Lcom/snaptube/ads/view/AdPlayerContainer$f;

    invoke-virtual {v0}, Lcom/snaptube/ads/view/AdPlayerContainer$f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/ads/view/AdPlayerContainer$g;

    sget-object v2, Lcom/snaptube/ads/view/AdPlayerContainer$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->E:F

    invoke-interface {v1, v2}, Lcom/snaptube/ads/view/AdPlayerContainer$g;->d(F)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v1}, Lcom/snaptube/ads/view/AdPlayerContainer$g;->c()V

    goto :goto_0

    :pswitch_2
    invoke-interface {v1}, Lcom/snaptube/ads/view/AdPlayerContainer$g;->a()V

    goto :goto_0

    :pswitch_3
    invoke-interface {v1, p2}, Lcom/snaptube/ads/view/AdPlayerContainer$g;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_0

    :pswitch_4
    invoke-interface {v1}, Lcom/snaptube/ads/view/AdPlayerContainer$g;->b()V

    goto :goto_0

    :pswitch_5
    invoke-interface {v1}, Lcom/snaptube/ads/view/AdPlayerContainer$g;->f()V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdVastUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->getPlayer()Lcom/google/android/exoplayer2/j;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->getPlayer()Lcom/google/android/exoplayer2/j;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/j;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/qa;->e()Lcom/google/android/exoplayer2/j;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic j0(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {p2}, Lo/qa;->g()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {v0, p2}, Lo/qa;->h(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/ads/view/AdPlayerContainer;->B0(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public final synthetic k0(Lcom/google/android/exoplayer2/j;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->u:Z

    iget-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->q0(JJ)V

    iget-wide v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->t:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->D0(J)V

    :cond_1
    return-void
.end method

.method public final synthetic l0(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 1

    sget-object v0, Lcom/snaptube/ads/view/AdPlayerContainer$e;->b:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->B:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    instance-of v0, p1, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    iget-object p1, p1, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;->model:Lcom/snaptube/ads/selfbuild/request/model/SnaptubeAdModel;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/snaptube/ads/selfbuild/request/model/SnaptubeAdModel;->handleClick(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic m0(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 2

    iget-object v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->l:Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Lcom/wandoujia/base/utils/RxBus$d;->a:I

    const/16 v0, 0x42a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x44f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x450

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->k:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->z0(Z)V

    :cond_2
    iput-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->k:Z

    iput-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->j:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->t0(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->k:Z

    iput-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->j:Z

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->j:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->z0(Z)V

    :cond_5
    iput-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->j:Z

    iput-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->k:Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->t0(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->j:Z

    iput-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->k:Z

    :goto_0
    return-void
.end method

.method public synthetic n(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/vr8;->a(Lo/wr8;II)V

    return-void
.end method

.method public o0(Lcom/snaptube/ads/view/AdPlayerContainer$h;)V
    .locals 1

    iput-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->G:Lcom/snaptube/ads/view/AdPlayerContainer$h;

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->F:Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;

    invoke-virtual {v0}, Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/snaptube/ads/view/AdPlayerContainer$h;->onStateChange(Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->h0()V

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->G0()V

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->E0()V

    return-void
.end method

.method public onDestroy(Lo/x24;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->d()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->t0(Z)Z

    invoke-virtual {p0, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->u0(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->C:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->D:I

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->setAdCoverViewVisibility(IZ)V

    sget-object v0, Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;->RenderedFistFrame:Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->g0(Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->z:Lo/ga8;

    invoke-static {v0}, Lcom/snaptube/ad/tracker/TrackManager;->e(Lo/ga8;)V

    return-void
.end method

.method public synthetic onStart(Lo/x24;)V
    .locals 0

    invoke-static {p0, p1}, Lo/jh1;->e(Lo/kh1;Lo/x24;)V

    return-void
.end method

.method public synthetic onStop(Lo/x24;)V
    .locals 0

    invoke-static {p0, p1}, Lo/jh1;->f(Lo/kh1;Lo/x24;)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->C:I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->D:I

    if-eqz p2, :cond_0

    iget p4, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->C:I

    int-to-float p4, p4

    int-to-float v0, p2

    div-float/2addr p4, v0

    cmpg-float p4, p1, p4

    if-gez p4, :cond_0

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->C:I

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iput p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->E:F

    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public p0()V
    .locals 4

    sget-object v0, Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;->AdPlayerFinish:Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->g0(Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->s0()V

    iget-wide v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->q:J

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->q0(JJ)V

    iget-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->B:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->o:Z

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-wide v2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->q:J

    invoke-static {v0, v1, v2, v3}, Lo/jc;->b(Lnet/pubnative/mediation/request/model/PubnativeAdModel;IJ)V

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->F0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public q0(JJ)V
    .locals 7

    iget-wide v5, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->t:J

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/snaptube/ads/view/AdPlayerContainer;->r0(JJJ)V

    return-void
.end method

.method public final r0(JJJ)V
    .locals 0

    iput-wide p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->s:J

    iput-wide p3, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->q:J

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->s0()V

    iget-boolean p3, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->p:Z

    if-nez p3, :cond_1

    cmp-long p3, p1, p5

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->p:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public s0()V
    .locals 6

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {v0}, Lo/qa;->e()Lcom/google/android/exoplayer2/j;

    move-result-object v0

    iget-wide v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->q:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->q:J

    :cond_0
    iget-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->n:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->B:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;->AdPlayerStart:Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer;->g0(Lcom/snaptube/ads/view/AdPlayerContainer$AdPlayerListenerStatus;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->n:Z

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->B:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-wide v2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->q:J

    invoke-static {v0, v1, v2, v3}, Lo/jc;->d(Lnet/pubnative/mediation/request/model/PubnativeAdModel;IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAdCoverViewVisibility(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->A0(Landroid/view/View;I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->b:Landroid/view/View;

    if-nez p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->m:Lcom/snaptube/ads/nativead/AdView;

    if-eqz v0, :cond_5

    sget v3, Lcom/snaptube/ads/R$id;->nativeAdBlackBackground2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, p1, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->A0(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setAdPlayerViewListener(Lcom/snaptube/ads/view/AdPlayerView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->y:Lcom/snaptube/ads/view/AdPlayerView$b;

    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->a:Ljava/lang/String;

    return-void
.end method

.method public t0(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {v0}, Lo/qa;->e()Lcom/google/android/exoplayer2/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j;->getVolume()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/16 v0, 0x450

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/base/utils/RxBus;->g(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {p1}, Lo/qa;->i()V

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->F0()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic u(Lo/x24;)V
    .locals 0

    invoke-static {p0, p1}, Lo/jh1;->a(Lo/kh1;Lo/x24;)V

    return-void
.end method

.method public final u0(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->x0()V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x450

    iget-object v2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/base/utils/RxBus;->g(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->I0()V

    invoke-virtual {p0}, Lcom/snaptube/ads/view/AdPlayerContainer;->v0()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer;->setAdCoverViewVisibility(IZ)V

    iget-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->m:Lcom/snaptube/ads/nativead/AdView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/snaptube/ads/nativead/AdView;->l0(Lcom/snaptube/ads/nativead/AdView$e;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lo/x24;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lo/x24;

    invoke-interface {p1}, Lo/x24;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Lo/w24;)V

    :cond_1
    return-void
.end method

.method public final v0()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {v0}, Lo/qa;->k()V

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/AdPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->G:Lcom/snaptube/ads/view/AdPlayerContainer$h;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;->DESTROY:Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;

    invoke-virtual {v1}, Lcom/snaptube/ads/view/AdPlayerContainer$RenderState;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snaptube/ads/view/AdPlayerContainer$h;->onStateChange(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->toastExceptionForDebugging(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public w0(Lcom/snaptube/ads/view/AdPlayerContainer$g;)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->A:Lcom/snaptube/ads/view/AdPlayerContainer$f;

    invoke-virtual {v0, p1}, Lcom/snaptube/ads/view/AdPlayerContainer$f;->c(Lcom/snaptube/ads/view/AdPlayerContainer$g;)V

    return-void
.end method

.method public y0()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {v0}, Lo/qa;->e()Lcom/google/android/exoplayer2/j;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->f:Lcom/snaptube/ads/view/AdPlayerView;

    iget-object v2, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/qa;->j(Lcom/snaptube/ads/view/AdPlayerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/b;->seekTo(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final z0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {v0}, Lo/qa;->e()Lcom/google/android/exoplayer2/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->C0(Lcom/google/android/exoplayer2/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/16 v0, 0x44f

    iget-object v1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/base/utils/RxBus;->g(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer;->v:Lo/qa;

    invoke-virtual {p1}, Lo/qa;->l()V

    :cond_1
    return-void
.end method
