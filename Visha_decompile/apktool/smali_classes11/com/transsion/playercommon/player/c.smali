.class public Lcom/transsion/playercommon/player/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/player/b;
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljb8;

.field public final D:Ljava/lang/Runnable;

.field public final E:Ljava/lang/Runnable;

.field public F:Z

.field public b:Landroid/media/MediaPlayer;

.field public c:I

.field public d:Lcom/transsion/playercommon/player/b$a;

.field public e:Landroid/content/Context;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Landroid/view/SurfaceHolder;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:J

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/playercommon/player/c;->c:I

    .line 3
    iput v0, p0, Lcom/transsion/playercommon/player/c;->l:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/transsion/playercommon/player/c;->q:J

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/playercommon/player/c;->s:Z

    .line 6
    iput-boolean v0, p0, Lcom/transsion/playercommon/player/c;->w:Z

    .line 7
    new-instance v0, Ljb8;

    invoke-direct {v0}, Ljb8;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->C:Ljb8;

    .line 8
    new-instance v0, Ldaa;

    invoke-direct {v0, p0}, Ldaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->D:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Leaa;

    invoke-direct {v0, p0}, Leaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->E:Ljava/lang/Runnable;

    .line 10
    iput-boolean p2, p0, Lcom/transsion/playercommon/player/c;->n:Z

    .line 11
    iput-object p1, p0, Lcom/transsion/playercommon/player/c;->e:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/transsion/playercommon/player/c;->c:I

    .line 14
    iput v0, p0, Lcom/transsion/playercommon/player/c;->l:I

    const-wide/16 v0, -0x1

    .line 15
    iput-wide v0, p0, Lcom/transsion/playercommon/player/c;->q:J

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/transsion/playercommon/player/c;->s:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/playercommon/player/c;->w:Z

    .line 18
    new-instance v0, Ljb8;

    invoke-direct {v0}, Ljb8;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->C:Ljb8;

    .line 19
    new-instance v0, Ldaa;

    invoke-direct {v0, p0}, Ldaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->D:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Leaa;

    invoke-direct {v0, p0}, Leaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->E:Ljava/lang/Runnable;

    .line 21
    iput-boolean p2, p0, Lcom/transsion/playercommon/player/c;->n:Z

    .line 22
    iput-object p1, p0, Lcom/transsion/playercommon/player/c;->e:Landroid/content/Context;

    .line 23
    iput-boolean p3, p0, Lcom/transsion/playercommon/player/c;->v:Z

    return-void
.end method

.method public static synthetic S(Lcom/transsion/playercommon/player/c;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->l0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/playercommon/player/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/player/c;->f0()V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/playercommon/player/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/player/c;->g0()V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/playercommon/player/c;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->j0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/playercommon/player/c;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/player/c;->h0(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic X(Lcom/transsion/playercommon/player/c;Landroid/media/MediaPlayer;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/player/c;->m0(Landroid/media/MediaPlayer;II)V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/playercommon/player/c;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->k0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private Z(ZI)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->h:Z

    if-nez p1, :cond_3

    :cond_0
    iget-wide v2, p0, Lcom/transsion/playercommon/player/c;->q:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    cmp-long p1, v4, v0

    if-lez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->A:Z

    if-nez p1, :cond_1

    iget-boolean v6, p0, Lcom/transsion/playercommon/player/c;->n:Z

    iget-boolean v7, p0, Lcom/transsion/playercommon/player/c;->r:Z

    iget-object v8, p0, Lcom/transsion/playercommon/player/c;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->getDuration()I

    move-result p1

    div-int/lit16 v9, p1, 0x3e8

    move v10, p2

    invoke-static/range {v4 .. v10}, Lp06;->x0(JZZLjava/lang/String;II)V

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->A:Z

    if-eqz p1, :cond_3

    :cond_2
    sget-object p1, Lry5;->a:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/transsion/playercommon/player/c;->A:Z

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->B:Z

    invoke-static {p1, p2, v0}, Lp06;->w0(Ljava/lang/String;ZZ)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/playercommon/player/c;->q:J

    return-void
.end method

.method private synthetic f0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p0

    invoke-static {p0}, Llc3;->g(I)V

    return-void
.end method

.method private synthetic g0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerStateUpdateRunnable state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/player/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/player/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    iget p0, p0, Lcom/transsion/playercommon/player/c;->c:I

    invoke-interface {v0, p0}, Lcom/transsion/playercommon/player/b$a;->onPlayerStateUpdate(I)V

    :cond_0
    return-void
.end method

.method private p0(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/playercommon/player/c;->k:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLastPosition, mLastPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/playercommon/player/c;->k:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicMediaPlayer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private r0(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/playercommon/player/c;->g:Z

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/playercommon/player/c;->g:Z

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private s0(IZ)V
    .locals 5

    iget v0, p0, Lcom/transsion/playercommon/player/c;->c:I

    if-eq v0, p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlayerState state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/player/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x42a

    goto :goto_0

    :cond_0
    const/16 v2, 0x429

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    iput p1, p0, Lcom/transsion/playercommon/player/c;->c:I

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/player/c;->r0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/player/c;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/player/c;->E:Ljava/lang/Runnable;

    if-eqz p2, :cond_4

    const-wide/16 v3, 0xc8

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0x0

    :goto_2
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean p2, p0, Lcom/transsion/playercommon/player/c;->h:Z

    if-eq p2, p1, :cond_6

    iput-boolean p1, p0, Lcom/transsion/playercommon/player/c;->h:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->c0()V

    :cond_5
    iget p1, p0, Lcom/transsion/playercommon/player/c;->c:I

    invoke-direct {p0, v1, p1}, Lcom/transsion/playercommon/player/c;->Z(ZI)V

    :cond_6
    return-void
.end method

.method private t0(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/player/c;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/player/c;->l:I

    :cond_0
    return-void
.end method


# virtual methods
.method public D(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/player/c;->z:I

    return-void
.end method

.method public E()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public F()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public H(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/player/c;->M(I)V

    :goto_0
    return-void
.end method

.method public I()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/player/c;->l:I

    return p0
.end method

.method public J()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public M(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_1

    if-lez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public N(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/player/c;->s:Z

    return-void
.end method

.method public O(Landroid/view/SurfaceHolder;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplay surfaceHolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lcom/transsion/playercommon/player/c;->i:Landroid/view/SurfaceHolder;

    const-string p0, "setDisplay player not init"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->getCurrentPosition()I

    move-result v0

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/transsion/playercommon/player/c;->i:Landroid/view/SurfaceHolder;

    iget-object p2, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    iget-object p2, p0, Lcom/transsion/playercommon/player/c;->i:Landroid/view/SurfaceHolder;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iput-object v2, p0, Lcom/transsion/playercommon/player/c;->i:Landroid/view/SurfaceHolder;

    :cond_3
    :goto_1
    iget p1, p0, Lcom/transsion/playercommon/player/c;->c:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/transsion/playercommon/player/c;->c:I

    if-ne v2, p2, :cond_5

    const/4 p2, 0x2

    goto :goto_3

    :cond_5
    const/4 p2, 0x3

    :goto_3
    invoke-virtual {p0, v0, p2}, Lcom/transsion/playercommon/player/c;->o0(II)V

    :cond_6
    iget-object p2, p0, Lcom/transsion/playercommon/player/c;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/playercommon/player/c;->a0(Landroid/view/SurfaceHolder;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setDisplay "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public P()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/player/c;->m:I

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->cannot_play_video:I

    :cond_0
    return p0
.end method

.method public Q(Z)V
    .locals 0

    return-void
.end method

.method public R(Ljb8;)V
    .locals 3

    const-string v0, "MusicMediaPlayer"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startToPlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/transsion/playercommon/player/c;->C:Ljb8;

    iget-boolean v0, p1, Ljb8;->f:Z

    iput-boolean v0, p0, Lcom/transsion/playercommon/player/c;->w:Z

    iget-wide v0, p1, Ljb8;->c:J

    long-to-int v0, v0

    iput v0, p0, Lcom/transsion/playercommon/player/c;->j:I

    iget-object v0, p1, Ljb8;->a:Landroid/net/Uri;

    iget-wide v1, p1, Ljb8;->b:J

    iget-boolean p1, p1, Ljb8;->d:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/transsion/playercommon/player/c;->n0(Landroid/net/Uri;JZ)V

    goto :goto_0

    :cond_0
    const-string p0, "startToPlay error no player parameters"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/player/c;->c:I

    return p0
.end method

.method public a0(Landroid/view/SurfaceHolder;Z)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const/16 p0, 0xc8

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    const/4 p0, 0x5

    int-to-long v2, p0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b0()Landroid/media/MediaPlayer;
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lfaa;

    invoke-direct {v1, p0}, Lfaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lgaa;

    invoke-direct {v1, p0}, Lgaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lhaa;

    invoke-direct {v1, p0}, Lhaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    new-instance v1, Liaa;

    invoke-direct {v1, p0}, Liaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    new-instance v1, Ljaa;

    invoke-direct {v1, p0}, Ljaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lkaa;

    invoke-direct {v1, p0}, Lkaa;-><init>(Lcom/transsion/playercommon/player/c;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->g()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final c0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->p:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/player/c;->p:Z

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->d0()V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lpp3;->u:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->e:Landroid/content/Context;

    invoke-static {p0}, Lpw2;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p0

    invoke-static {p0}, Ljrb;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string p0, "start player not init"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->e0()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/transsion/playercommon/player/a;->a()Lcom/transsion/playercommon/player/a;

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/playercommon/player/c;->n:Z

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/player/a;->d(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->n:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->x:Ljava/lang/String;

    invoke-static {p0, v0}, Lp16;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->i(Landroid/content/Context;)F

    move-result v2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/player/c;->l(F)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->w:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->b(Landroid/content/Context;)F

    move-result v2

    :cond_4
    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/player/c;->l(F)V

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/playercommon/player/c;->s0(IZ)V

    iget-object v2, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz v2, :cond_5

    invoke-interface {v2, v1, v0}, Lcom/transsion/playercommon/player/b$a;->d(II)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-direct {p0, v1}, Lcom/transsion/playercommon/player/c;->t0(I)V

    :cond_6
    invoke-static {}, Lmw2;->h()V

    return-void
.end method

.method public final declared-synchronized d0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/player/c;->D:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e0()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/playercommon/player/c;->c:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->t:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->h(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->e:Landroid/content/Context;

    const-string v3, "audio_play_repeat_mode"

    invoke-static {v0, v3, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/playercommon/player/c;->F:Z

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->v:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/transsion/playercommon/player/c;->F:Z

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_3
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/player/c;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/player/c;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/player/c;->j:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/transsion/playercommon/player/c;->k:I

    return p0
.end method

.method public getDuration()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->t:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/player/c;->j:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/player/c;->j:I

    :cond_1
    iget p0, p0, Lcom/transsion/playercommon/player/c;->j:I

    return p0
.end method

.method public h(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/playercommon/player/c;->A:Z

    return-void
.end method

.method public final h0(Landroid/media/MediaPlayer;II)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "), what = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extra = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicMediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/transsion/playercommon/player/c;->c:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_a

    const/16 p1, 0x104

    if-ne p2, p1, :cond_0

    sget v3, Lm88;->a:I

    if-ne p3, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 p3, 0x324

    if-eq p2, p3, :cond_1

    const/16 p3, 0x325

    if-ne p2, p3, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/player/c;->u(Z)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/transsion/playercommon/player/c;->t0(I)V

    invoke-direct {p0, v2, v1}, Lcom/transsion/playercommon/player/c;->s0(IZ)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->getCurrentPosition()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/transsion/playercommon/player/c;->p0(I)V

    if-ne p2, p1, :cond_3

    sget p1, Lcom/transsion/playercommon/R$string;->str_video_bad_file:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x105

    if-ne p2, p1, :cond_4

    sget p1, Lcom/transsion/playercommon/R$string;->str_video_cannot_connect_to_server:I

    goto :goto_0

    :cond_4
    const/16 p1, 0x106

    if-ne p2, p1, :cond_5

    sget p1, Lcom/transsion/playercommon/R$string;->str_video_type_not_supported:I

    goto :goto_0

    :cond_5
    const/16 p1, 0x107

    if-ne p2, p1, :cond_6

    sget p1, Lcom/transsion/playercommon/R$string;->str_video_drm_not_supported:I

    goto :goto_0

    :cond_6
    const/16 p1, 0x108

    if-ne p2, p1, :cond_7

    sget p1, Lcom/transsion/playercommon/R$string;->str_video_invalid_connection:I

    goto :goto_0

    :cond_7
    const/16 p1, 0xc8

    if-ne p2, p1, :cond_8

    sget p1, Lcom/transsion/playercommon/R$string;->str_video_invalid_progressive_playback:I

    goto :goto_0

    :cond_8
    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-eqz p1, :cond_9

    sget p1, Lcom/transsion/playercommon/R$string;->cannot_play_video:I

    goto :goto_0

    :cond_9
    sget p1, Lcom/transsion/playercommon/R$string;->cannot_play_music:I

    :goto_0
    iput p1, p0, Lcom/transsion/playercommon/player/c;->m:I

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p0, :cond_b

    invoke-interface {p0, p2, p1}, Lcom/transsion/playercommon/player/b$a;->onShowError(II)V

    goto :goto_2

    :cond_a
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "current state is error, skip error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    return v1
.end method

.method public i(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/playercommon/player/c;->u:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/playercommon/player/c;->l:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->getCurrentPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->seekTo(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->d(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->pause(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i0(Landroid/media/MediaPlayer;II)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/16 v2, 0x324

    if-eq p2, v2, :cond_2

    const/16 v2, 0x325

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/transsion/playercommon/player/b$a;->onInfo(II)Z

    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    const/4 p2, 0x1

    iget-boolean p0, p0, Lcom/transsion/playercommon/player/c;->o:Z

    invoke-interface {p1, p2, p0}, Lcom/transsion/playercommon/player/b$a;->onLoadingOnlineVideo(ZZ)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    iget-boolean p2, p0, Lcom/transsion/playercommon/player/c;->o:Z

    invoke-interface {p1, v1, p2}, Lcom/transsion/playercommon/player/b$a;->onLoadingOnlineVideo(ZZ)V

    iput-boolean v1, p0, Lcom/transsion/playercommon/player/c;->o:Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/player/c;->h0(Landroid/media/MediaPlayer;II)Z

    :cond_3
    :goto_1
    return v1
.end method

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j0(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->F:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x42a

    goto :goto_0

    :cond_0
    const/16 v1, 0x429

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/transsion/playercommon/player/b$a;->d(II)V

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/transsion/playercommon/player/c;->s0(IZ)V

    invoke-direct {p0, v0}, Lcom/transsion/playercommon/player/c;->t0(I)V

    return-void
.end method

.method public final k0(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/playercommon/player/c;->s0(IZ)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->t:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->v:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/player/c;->pause(Z)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->s:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/player/c;->C:Ljb8;

    iget-boolean p1, p1, Ljb8;->g:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/player/c;->d(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/player/c;->y:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->x:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-eqz p1, :cond_6

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlayerPrepared: mLastPlayUrl = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mPlayUrl = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicMediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/transsion/playercommon/player/c;->f:I

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->seekTo(I)V

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->u:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/transsion/playercommon/player/c;->s:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/player/c;->d(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public l(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPlayerSpeed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicMediaPlayer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final l0(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public final m0(Landroid/media/MediaPlayer;II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoSizeChanged, width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicMediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p3}, Lcom/transsion/playercommon/player/b$a;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic n(Lcom/transsion/playercommon/player/b$a;)Lcom/transsion/playercommon/player/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->q0(Lcom/transsion/playercommon/player/b$a;)Lcom/transsion/playercommon/player/c;

    move-result-object p0

    return-object p0
.end method

.method public n0(Landroid/net/Uri;JZ)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->y:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->x:Ljava/lang/String;

    long-to-int p2, p2

    iput p2, p0, Lcom/transsion/playercommon/player/c;->f:I

    invoke-static {}, Llc3;->j()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/transsion/playercommon/player/c;->p:Z

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/transsion/playercommon/player/c;->s0(IZ)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->b0()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-boolean v1, p0, Lcom/transsion/playercommon/player/c;->w:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/player/c;->e:Landroid/content/Context;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lw6c;->B(Landroid/content/Context;F)V

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/playercommon/player/c;->g:Z

    iput-boolean v0, p0, Lcom/transsion/playercommon/player/c;->o:Z

    iget-object v1, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    invoke-interface {v1, v0, v0}, Lcom/transsion/playercommon/player/b$a;->onLoadingOnlineVideo(ZZ)V

    :cond_1
    iput-boolean p4, p0, Lcom/transsion/playercommon/player/c;->t:Z

    invoke-direct {p0, p2}, Lcom/transsion/playercommon/player/c;->p0(I)V

    const-string p2, "unable to open content: "

    const-string v1, "MusicMediaPlayer"

    if-eqz p4, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lfn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v2, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p4

    goto :goto_1

    :catch_1
    move-exception p4

    goto :goto_2

    :cond_2
    iget-object p4, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/playercommon/player/c;->e:Landroid/content/Context;

    invoke-virtual {p4, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iget-object p4, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p4}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-boolean p4, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/transsion/playercommon/player/c;->i:Landroid/view/SurfaceHolder;

    if-eqz p4, :cond_3

    invoke-virtual {p0, p4, v0}, Lcom/transsion/playercommon/player/c;->O(Landroid/view/SurfaceHolder;Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->g()V

    invoke-direct {p0, v0, v0}, Lcom/transsion/playercommon/player/c;->s0(IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, v0, p3}, Lcom/transsion/playercommon/player/c;->h0(Landroid/media/MediaPlayer;II)Z

    return-void

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, v0, p3}, Lcom/transsion/playercommon/player/c;->h0(Landroid/media/MediaPlayer;II)Z

    return-void
.end method

.method public o0(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekToMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/player/c;->j:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/player/c;->p0(I)V

    :goto_0
    return-void
.end method

.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method

.method public pause(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string p0, "pause player not init"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/player/c;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->x:Ljava/lang/String;

    invoke-static {p0, v0}, Lp16;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/transsion/playercommon/player/c;->s0(IZ)V

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/transsion/playercommon/player/c;->t0(I)V

    :cond_2
    invoke-static {}, Lmw2;->a()V

    return-void
.end method

.method public q(Z)V
    .locals 0

    return-void
.end method

.method public q0(Lcom/transsion/playercommon/player/b$a;)Lcom/transsion/playercommon/player/c;
    .locals 1

    iput-object p1, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/player/c;->c:I

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/player/b$a;->onPlayerStateUpdate(I)V

    :cond_0
    return-object p0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/playercommon/player/c;->s0(IZ)V

    invoke-direct {p0, v1}, Lcom/transsion/playercommon/player/c;->t0(I)V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/player/c;->o0(II)V

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p0, :cond_0

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/playercommon/player/b$a;->d(II)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public t(ZZ)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->pause(Z)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->getDuration()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->getCurrentPosition()I

    move-result v0

    if-eq p2, v0, :cond_2

    iget p2, p0, Lcom/transsion/playercommon/player/c;->c:I

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/transsion/playercommon/player/c;->n:Z

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/player/c;->getCurrentPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/player/c;->seekTo(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/player/c;->seekTo(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/player/c;->d(Z)V

    :goto_2
    return-void
.end method

.method public u(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/player/c;->b:Landroid/media/MediaPlayer;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/playercommon/player/c;->s0(IZ)V

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/transsion/playercommon/player/c;->t0(I)V

    :cond_1
    invoke-static {}, Llc3;->j()V

    invoke-static {}, Lmw2;->a()V

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public z(ZI)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/transsion/playercommon/player/c;->Z(ZI)V

    iput-boolean p1, p0, Lcom/transsion/playercommon/player/c;->r:Z

    return-void
.end method
