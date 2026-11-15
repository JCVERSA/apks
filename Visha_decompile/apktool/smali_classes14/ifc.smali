.class public Lifc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/player/b;
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
.implements Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;
.implements Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;


# static fields
.field public static V:I = 0x186a2

.field public static W:I = 0x186ab

.field public static X:I = 0x186ac

.field public static Y:I = 0x186a4

.field public static Z:I = 0x186a1

.field public static a0:I = 0x1e8481


# instance fields
.field public A:Landroid/net/Uri;

.field public B:F

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/util/ArrayList;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/ref/WeakReference;

.field public G:Z

.field public H:Z

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:I

.field public final L:Ljava/util/Map;

.field public M:Ljb8;

.field public N:Ljava/util/ArrayList;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:I

.field public final S:Ljava/lang/Runnable;

.field public final T:Ljava/lang/Runnable;

.field public U:Z

.field public b:Lcom/transsion/tranplayer/TranMediaPlayer;

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

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lifc;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lifc;->c:I

    .line 4
    iput v0, p0, Lifc;->l:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lifc;->q:J

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lifc;->s:Z

    .line 7
    iput-boolean v0, p0, Lifc;->z:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lifc;->B:F

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lifc;->C:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lifc;->D:Ljava/util/ArrayList;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lifc;->I:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lifc;->J:Ljava/lang/String;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lifc;->K:I

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lifc;->L:Ljava/util/Map;

    .line 15
    new-instance v1, Ljb8;

    invoke-direct {v1}, Ljb8;-><init>()V

    iput-object v1, p0, Lifc;->M:Ljb8;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lifc;->N:Ljava/util/ArrayList;

    .line 17
    iput v0, p0, Lifc;->R:I

    .line 18
    new-instance v0, Lgfc;

    invoke-direct {v0, p0}, Lgfc;-><init>(Lifc;)V

    iput-object v0, p0, Lifc;->S:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Lhfc;

    invoke-direct {v0, p0}, Lhfc;-><init>(Lifc;)V

    iput-object v0, p0, Lifc;->T:Ljava/lang/Runnable;

    .line 20
    iput-boolean p2, p0, Lifc;->n:Z

    .line 21
    iput-object p1, p0, Lifc;->e:Landroid/content/Context;

    .line 22
    iput-boolean p3, p0, Lifc;->v:Z

    return-void
.end method

.method public static synthetic S(Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lifc;->n0(Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T(Lifc;Lcom/transsion/tranplayer/IMediaPlayer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lifc;->u0(Lcom/transsion/tranplayer/IMediaPlayer;)V

    return-void
.end method

.method public static synthetic U(Lifc;Lcom/transsion/tranplayer/IMediaPlayer;IIII)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lifc;->w0(Lcom/transsion/tranplayer/IMediaPlayer;IIII)V

    return-void
.end method

.method public static synthetic V(Lifc;Lcom/transsion/tranplayer/IMediaPlayer;II)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lifc;->r0(Lcom/transsion/tranplayer/IMediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic W(Lifc;)V
    .locals 0

    invoke-virtual {p0}, Lifc;->p0()V

    return-void
.end method

.method public static synthetic X(Lifc;)V
    .locals 0

    invoke-virtual {p0}, Lifc;->q0()V

    return-void
.end method

.method public static synthetic Y(Lifc;Lcom/transsion/tranplayer/IMediaPlayer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lifc;->v0(Lcom/transsion/tranplayer/IMediaPlayer;)V

    return-void
.end method

.method public static synthetic Z(ILcom/transsion/dbdata/database/AudioTrack;)Z
    .locals 0

    invoke-static {p0, p1}, Lifc;->o0(ILcom/transsion/dbdata/database/AudioTrack;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a0(Lifc;Lcom/transsion/tranplayer/IMediaPlayer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lifc;->t0(Lcom/transsion/tranplayer/IMediaPlayer;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    iget p0, p0, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic o0(ILcom/transsion/dbdata/database/AudioTrack;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    const/4 v1, 0x0

    const-string v2, "VishaTranPlayer"

    if-nez v0, :cond_0

    const-string p0, "getAudioTracks return"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getAudioTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    new-instance v3, Lcom/transsion/dbdata/database/AudioTrack;

    invoke-direct {v3}, Lcom/transsion/dbdata/database/AudioTrack;-><init>()V

    aget-object v4, v0, v2

    iget v5, v4, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    iput v5, v3, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    iget-object v4, v4, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/transsion/dbdata/database/AudioTrack;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lifc;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lifc;->N:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioTracks null "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public A0(Lcom/transsion/playercommon/player/b$a;)Lifc;
    .locals 1

    iput-object p1, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p1, :cond_0

    iget v0, p0, Lifc;->c:I

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/player/b$a;->onPlayerStateUpdate(I)V

    :cond_0
    return-object p0
.end method

.method public B()I
    .locals 1

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-nez p0, :cond_0

    const-string p0, "VishaTranPlayer"

    const-string v0, "getAudioTrack play not init"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getAudioTrack()I

    move-result p0

    return p0
.end method

.method public final B0(I)Z
    .locals 3

    iget-boolean v0, p0, Lifc;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iput-boolean v1, p0, Lifc;->g:Z

    :cond_0
    iget-boolean p0, p0, Lifc;->g:Z

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final C0(IZ)V
    .locals 5

    iget v0, p0, Lifc;->c:I

    if-eq v0, p1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlayerState state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lifc;->A:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    iget-boolean v3, p0, Lifc;->n:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x42a

    goto :goto_0

    :cond_0
    const/16 v3, 0x429

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    iput p1, p0, Lifc;->c:I

    invoke-virtual {p0, p1}, Lifc;->B0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lifc;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_5

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lifc;->S:Ljava/lang/Runnable;

    if-eqz p2, :cond_4

    const-wide/16 v3, 0xc8

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0x0

    :goto_2
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerStateUpdateRunnable state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lifc;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lifc;->A:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    iget v0, p0, Lifc;->c:I

    invoke-interface {p2, v0}, Lcom/transsion/playercommon/player/b$a;->onPlayerStateUpdate(I)V

    :cond_6
    :goto_3
    iget-boolean p2, p0, Lifc;->h:Z

    if-eq p2, p1, :cond_7

    iput-boolean p1, p0, Lifc;->h:Z

    invoke-virtual {p0}, Lifc;->F0()V

    iget p1, p0, Lifc;->c:I

    invoke-virtual {p0, v2, p1}, Lifc;->c0(ZI)V

    :cond_7
    return-void
.end method

.method public final D0(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlayerTargetState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lifc;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lifc;->l:I

    :cond_0
    return-void
.end method

.method public E()Z
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E0(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lifc;->I:Ljava/lang/String;

    iput p2, p0, Lifc;->K:I

    return-void
.end method

.method public F()Z
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getIsVideoMediaCodec()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final F0()V
    .locals 2

    iget-object v0, p0, Lifc;->i:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget p0, p0, Lifc;->c:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method public G(Landroid/view/SurfaceView;)Z
    .locals 1

    iget-object v0, p0, Lifc;->F:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lifc;->F:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public H(ZI)V
    .locals 0

    iput-boolean p1, p0, Lifc;->P:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lifc;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lifc;->M(I)V

    :goto_0
    return-void
.end method

.method public I()I
    .locals 0

    iget p0, p0, Lifc;->l:I

    return p0
.end method

.method public J()F
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getVideoFPS()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public K(Z)V
    .locals 2

    iput-boolean p1, p0, Lifc;->x:Z

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    const-string v0, "VishaTranPlayer"

    if-nez p0, :cond_0

    const-string p0, "start player not init"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setPictureInPictureMode(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPictureInPictureMode "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public L(Landroid/view/SurfaceView;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubtitleDisplay isAdd\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "::surfaceView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    const-string p1, "setSubtitleDisplay remove view"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lifc;->F:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setTimedTextView(Landroid/view/SurfaceView;)V

    :cond_1
    return-void

    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lifc;->F:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-nez p1, :cond_3

    const-string p0, "setSubtitleDisplay player not init"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lifc;->i0()Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->setTimedTextView(Landroid/view/SurfaceView;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSubtitleDisplay "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public M(I)V
    .locals 1

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public N(Z)V
    .locals 0

    iput-boolean p1, p0, Lifc;->s:Z

    return-void
.end method

.method public O(Landroid/view/SurfaceHolder;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplay surfaceHolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lifc;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lifc;->i:Landroid/view/SurfaceHolder;

    const-string p0, "setDisplay player not init"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iput-object v2, p0, Lifc;->i:Landroid/view/SurfaceHolder;

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "setDisplay player error"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    iget-object v0, p0, Lifc;->F:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lifc;->L(Landroid/view/SurfaceView;Z)V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_2
    if-eqz p2, :cond_5

    iput-object p1, p0, Lifc;->i:Landroid/view/SurfaceHolder;

    iget-object p2, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p2, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean p1, p0, Lifc;->y:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lifc;->T:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lifc;->T:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lifc;->b0()V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lifc;->i:Landroid/view/SurfaceHolder;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p1, v2}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iput-object v2, p0, Lifc;->i:Landroid/view/SurfaceHolder;

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lifc;->F0()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

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

    iget p0, p0, Lifc;->m:I

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->cannot_play_video:I

    :cond_0
    return p0
.end method

.method public Q(Z)V
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public R(Ljb8;)V
    .locals 3

    const-string v0, "VishaTranPlayer"

    if-eqz p1, :cond_0

    iput-object p1, p0, Lifc;->M:Ljb8;

    iget-boolean v1, p1, Ljb8;->f:Z

    iput-boolean v1, p0, Lifc;->z:Z

    iget-wide v1, p1, Ljb8;->c:J

    long-to-int v1, v1

    iput v1, p0, Lifc;->j:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startToPlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lifc;->Q:Z

    iget-object v0, p1, Ljb8;->a:Landroid/net/Uri;

    iget-wide v1, p1, Ljb8;->b:J

    iget-boolean p1, p1, Ljb8;->d:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lifc;->x0(Landroid/net/Uri;JZ)V

    goto :goto_0

    :cond_0
    const-string p0, "startToPlay error no player parameters"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a()I
    .locals 0

    iget p0, p0, Lifc;->c:I

    return p0
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getAudioSessionId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b0()V
    .locals 3

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lifc;->T:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const-string v1, "VishaTranPlayer"

    if-nez v0, :cond_0

    const-string v0, "autoResumeCheckKeyguardState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lifc;->i(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "autoResumeCheckKeyguardState isKeyguardLocked delay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lifc;->T:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-nez p0, :cond_0

    const-string p0, "VishaTranPlayer"

    const-string p1, "changeLoopForMediaPlayer return"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public final c0(ZI)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lifc;->h:Z

    if-nez p1, :cond_4

    :cond_0
    iget-wide v2, p0, Lifc;->q:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    cmp-long p1, v4, v0

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lifc;->G:Z

    if-nez p1, :cond_2

    iget-boolean v6, p0, Lifc;->n:Z

    iget-boolean v7, p0, Lifc;->r:Z

    iget-object p1, p0, Lifc;->A:Landroid/net/Uri;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v8, p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lifc;->getDuration()I

    move-result p1

    div-int/lit16 v9, p1, 0x3e8

    move v10, p2

    invoke-static/range {v4 .. v10}, Lp06;->x0(JZZLjava/lang/String;II)V

    :cond_2
    iget-boolean p1, p0, Lifc;->n:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lifc;->G:Z

    if-eqz p1, :cond_4

    :cond_3
    sget-object p1, Lry5;->a:Ljava/lang/String;

    iget-boolean p2, p0, Lifc;->G:Z

    iget-boolean v0, p0, Lifc;->H:Z

    invoke-static {p1, p2, v0}, Lp06;->w0(Ljava/lang/String;ZZ)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lifc;->q:J

    return-void
.end method

.method public d(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-nez v0, :cond_0

    const-string p0, "start player not init"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0}, Lifc;->m0()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lifc;->f0()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_4

    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/playercommon/player/a;->a()Lcom/transsion/playercommon/player/a;

    move-result-object v2

    iget-boolean v3, p0, Lifc;->n:Z

    invoke-virtual {v2, v3}, Lcom/transsion/playercommon/player/a;->d(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x472

    invoke-virtual {v2, v5, v4}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v2, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {v2}, Lcom/transsion/tranplayer/TranMediaPlayer;->start()V

    iget-object v2, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v3}, Lcom/transsion/playercommon/player/b$a;->d(II)V

    :cond_2
    iget-boolean v2, p0, Lifc;->n:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lifc;->z:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lifc;->e:Landroid/content/Context;

    invoke-static {v2}, Lw6c;->b(Landroid/content/Context;)F

    move-result v2

    goto :goto_1

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v2}, Lifc;->l(F)V

    goto :goto_3

    :cond_4
    iget-boolean v2, p0, Lifc;->G:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lifc;->p:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lifc;->A:Landroid/net/Uri;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    :goto_2
    invoke-static {p0, v2}, Lp16;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_3
    invoke-virtual {p0, v0, v3}, Lifc;->C0(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start player "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    if-eqz p1, :cond_8

    invoke-virtual {p0, v0}, Lifc;->D0(I)V

    :cond_8
    invoke-static {}, Lpw2;->e()V

    return-void
.end method

.method public final d0()V
    .locals 4

    invoke-virtual {p0}, Lifc;->j0()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "VishaTranPlayer"

    if-ne v0, v1, :cond_0

    const-string p0, "clearLastItemSubtitleSurface return"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lifc;->F:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lifc;->F:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearLastItemSubtitleSurface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 6

    iget v0, p0, Lifc;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "VishaTranPlayer"

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lifc;->y0(Z)V

    invoke-virtual {p0, v3, p1}, Lifc;->E0(Ljava/lang/String;I)V

    const-string p0, "setSubtitleTrack player not PREPARED"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lifc;->G:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, p1}, Lifc;->E0(Ljava/lang/String;I)V

    const-string p0, "setSubtitleTrack in music mode"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lifc;->j0()I

    move-result v0

    if-ne p1, v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSubtitleTrack current track is same :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setSpuTrack(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSubtitleTrack :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lifc;->y0(Z)V

    invoke-virtual {p0, v3, p1}, Lifc;->E0(Ljava/lang/String;I)V

    return-void
.end method

.method public final e0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Track"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public f(Z)Z
    .locals 2

    iget-object v0, p0, Lifc;->A:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iput v1, p0, Lifc;->f:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lifc;->k:I

    iput p1, p0, Lifc;->f:I

    :goto_0
    iget-object p1, p0, Lifc;->M:Ljb8;

    invoke-virtual {p0, p1}, Lifc;->R(Ljb8;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final f0()Z
    .locals 1

    iget v0, p0, Lifc;->c:I

    if-nez v0, :cond_0

    iget p0, p0, Lifc;->l:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lifc;->t:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lifc;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lifc;->e:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->h(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lifc;->e:Landroid/content/Context;

    const-string v3, "audio_play_repeat_mode"

    invoke-static {v0, v3, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setLooping(Z)V

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lifc;->U:Z

    :cond_2
    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lifc;->v:Z

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Lifc;->U:Z

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setLooping(Z)V

    :cond_3
    return-void
.end method

.method public g0()Lcom/transsion/tranplayer/IMediaPlayer;
    .locals 4

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/tranplayer/TranMediaPlayer;

    iget-object v1, p0, Lifc;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    new-instance v1, Lwec;

    invoke-direct {v1, p0}, Lwec;-><init>(Lifc;)V

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->setOnCompletionListener(Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    new-instance v1, Lzec;

    invoke-direct {v1, p0}, Lzec;-><init>(Lifc;)V

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->setOnPreparedListener(Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    new-instance v1, Lafc;

    invoke-direct {v1, p0}, Lafc;-><init>(Lifc;)V

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->setOnErrorListener(Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    new-instance v1, Lbfc;

    invoke-direct {v1, p0}, Lbfc;-><init>(Lifc;)V

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->setOnSeekCompleteListener(Lcom/transsion/tranplayer/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    new-instance v1, Lcfc;

    invoke-direct {v1, p0}, Lcfc;-><init>(Lifc;)V

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->setOnInfoListener(Lcom/transsion/tranplayer/IMediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    new-instance v1, Ldfc;

    invoke-direct {v1, p0}, Ldfc;-><init>(Lifc;)V

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->setOnTimedTextListener(Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;)V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    new-instance v1, Lefc;

    invoke-direct {v1, p0}, Lefc;-><init>(Lifc;)V

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->setOnSubTitleTypeListener(Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;)V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    new-instance v1, Lffc;

    invoke-direct {v1, p0}, Lffc;-><init>(Lifc;)V

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->setOnVideoSizeChangedListener(Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

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

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/transsion/tranplayer/TranMediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-boolean v0, p0, Lifc;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Llc3;->g(I)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lpp3;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lifc;->e:Landroid/content/Context;

    invoke-static {v0}, Lpw2;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Ljrb;->f(I)V

    :goto_0
    invoke-virtual {p0}, Lifc;->g()V

    :cond_2
    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget v0, p0, Lifc;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget v0, p0, Lifc;->j:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lifc;->m0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    iget-boolean v1, p0, Lifc;->O:Z

    if-eqz v1, :cond_1

    iget p0, p0, Lifc;->k:I

    return p0

    :cond_1
    iput v0, p0, Lifc;->k:I

    return v0

    :cond_2
    iget p0, p0, Lifc;->k:I

    return p0
.end method

.method public getDuration()I
    .locals 2

    invoke-virtual {p0}, Lifc;->m0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lifc;->j:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lifc;->j:I

    :cond_1
    iget p0, p0, Lifc;->j:I

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

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lifc;->G:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lifc;->k0()V

    :cond_0
    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setListenVideoMode(Z)V

    :cond_1
    return-void
.end method

.method public final h0()V
    .locals 9

    iget-boolean v0, p0, Lifc;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lifc;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getSpuTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    new-instance v5, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {v5}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iget v6, v4, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    iput v6, v5, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lifc;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/playercommon/R$string;->subtitle_unselected:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lifc;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    iget-object v7, p0, Lifc;->D:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lyec;

    invoke-direct {v8, v4}, Lyec;-><init>(Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget v6, v4, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I

    :goto_2
    iput v6, v5, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSpuTracks "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lifc;->C:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    const-string p0, "getSpuTracks no"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public i(Z)V
    .locals 3

    iput-boolean p1, p0, Lifc;->u:Z

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lifc;->n:Z

    if-nez p1, :cond_0

    iget v2, p0, Lifc;->l:I

    if-eq v2, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget p1, p0, Lifc;->l:I

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lifc;->G:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lifc;->i:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lifc;->D0(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lifc;->d(Z)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "autoPauseOrResume "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lifc;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lifc;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mIsMusicModeForVideo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lifc;->G:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsPlayVideo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lifc;->n:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VishaTranPlayer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lifc;->T:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lifc;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lifc;->c:I

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, v1}, Lifc;->D0(I)V

    :cond_4
    invoke-virtual {p0, v0}, Lifc;->pause(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final i0()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lifc;->F:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceView;

    return-object p0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lifc;->m0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lifc;->R:I

    return p0
.end method

.method public j0()I
    .locals 2

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "VishaTranPlayer"

    const-string v1, "getSubtitleTrack play not init"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getSpuTrack()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public k(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p2, Landroid/view/SurfaceView;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/ref/WeakReference;

    check-cast p2, Landroid/view/SurfaceView;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lifc;->F:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k0()V
    .locals 2

    iget-object v0, p0, Lifc;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lifc;->I:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lifc;->y(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lifc;->K:I

    invoke-virtual {p0, v0}, Lifc;->e(I)V

    :goto_0
    return-void
.end method

.method public l(F)V
    .locals 4

    iput p1, p0, Lifc;->B:F

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    const-string v1, "VishaTranPlayer"

    if-nez v0, :cond_0

    const-string p0, "setPlayerSpeed return"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getSpeed()F

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayerSpeed currentSpeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setSpeed(F)V
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

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final l0()Z
    .locals 1

    iget-boolean v0, p0, Lifc;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lifc;->G:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lifc;->R:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m(J)V
    .locals 2

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-nez p0, :cond_0

    const-string p0, "VishaTranPlayer"

    const-string p1, "setSubtitleDelay error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tranplayer/TranMediaPlayer;->setTimedTextDelay(J)V

    return-void
.end method

.method public m0()Z
    .locals 1

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lifc;->c:I

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

.method public bridge synthetic n(Lcom/transsion/playercommon/player/b$a;)Lcom/transsion/playercommon/player/b;
    .locals 0

    invoke-virtual {p0, p1}, Lifc;->A0(Lcom/transsion/playercommon/player/b$a;)Lifc;

    move-result-object p0

    return-object p0
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Lifc;->p:Z

    return-void
.end method

.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method

.method public onSubTitleType(Lcom/transsion/tranplayer/IMediaPlayer;II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSubTitleType subtype:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VishaTranPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iput p2, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    iput p3, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I

    iget-object p0, p0, Lifc;->D:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTimedText(Lcom/transsion/tranplayer/IMediaPlayer;Lcom/transsion/tranplayer/ITimedText;)V
    .locals 2

    iget-boolean p1, p0, Lifc;->w:Z

    const-string v0, "VishaTranPlayer"

    if-nez p1, :cond_0

    const-string p0, "onTimedText subtitleLoad not Finished"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/transsion/tranplayer/ITimedText;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object p2, p0, Lifc;->E:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimedText newText:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lifc;->E:Ljava/lang/String;

    iget-object p0, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b$a;->onSubtitleText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lifc;->y:Z

    return-void
.end method

.method public final synthetic p0()V
    .locals 2

    iget-object v0, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerStateUpdateRunnable state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lifc;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lifc;->A:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    iget p0, p0, Lifc;->c:I

    invoke-interface {v0, p0}, Lcom/transsion/playercommon/player/b$a;->onPlayerStateUpdate(I)V

    :cond_0
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

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-nez v0, :cond_0

    const-string p0, "pause player not init"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lifc;->n:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lifc;->G:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lifc;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lifc;->A:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-static {p0, v0}, Lp16;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lifc;->Q:Z

    iget-boolean v0, p0, Lifc;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->pause()V

    :cond_3
    invoke-virtual {p0}, Lifc;->m0()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lifc;->C0(IZ)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lifc;->D0(I)V

    :cond_5
    invoke-static {}, Lpw2;->a()V

    return-void
.end method

.method public q(Z)V
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setOnPause(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic q0()V
    .locals 2

    iget-object v0, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz v0, :cond_0

    const-string v0, "VishaTranPlayer"

    const-string v1, "autoPauseOrResumeRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lifc;->b0()V

    :cond_0
    return-void
.end method

.method public r()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lifc;->C:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final r0(Lcom/transsion/tranplayer/IMediaPlayer;II)Z
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

    const-string v0, "VishaTranPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lifc;->c:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_a

    const/16 p1, 0x104

    if-ne p2, p1, :cond_0

    sget v3, Lm88;->a:I

    if-ne p3, v3, :cond_0

    goto :goto_1

    :cond_0
    const p3, 0x186a9

    if-eq p2, p3, :cond_1

    const p3, 0x186aa

    if-ne p2, p3, :cond_2

    :cond_1
    iget-object p3, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p3}, Lcom/transsion/tranplayer/TranMediaPlayer;->stop()V

    iget-object p3, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p3}, Lcom/transsion/tranplayer/TranMediaPlayer;->release()V

    :cond_2
    invoke-virtual {p0}, Lifc;->getCurrentPosition()I

    move-result p3

    invoke-virtual {p0, p3}, Lifc;->z0(I)V

    invoke-virtual {p0, v2}, Lifc;->D0(I)V

    invoke-virtual {p0, v2, v1}, Lifc;->C0(IZ)V

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
    const p1, 0x1869f

    if-ne p2, p1, :cond_8

    sget p1, Lcom/transsion/playercommon/R$string;->visha_resolution_high_forbidden_play:I

    goto :goto_0

    :cond_8
    iget-boolean p1, p0, Lifc;->n:Z

    if-eqz p1, :cond_9

    sget p1, Lcom/transsion/playercommon/R$string;->cannot_play_video:I

    goto :goto_0

    :cond_9
    sget p1, Lcom/transsion/playercommon/R$string;->cannot_play_music:I

    :goto_0
    iput p1, p0, Lifc;->m:I

    iget-object p0, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

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

.method public reset()V
    .locals 2

    const-string v0, "VishaTranPlayer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->reset()V

    :cond_0
    iget-object v0, p0, Lifc;->L:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lifc;->C0(IZ)V

    invoke-virtual {p0, v1}, Lifc;->D0(I)V

    return-void
.end method

.method public s()Lcom/transsion/dbdata/database/AudioTrack;
    .locals 4

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    const/4 v1, 0x0

    const-string v2, "VishaTranPlayer"

    if-nez v0, :cond_0

    const-string p0, "getTheAudioTrack play not init"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lifc;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lifc;->A()Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lifc;->B()I

    move-result v0

    iget-object p0, p0, Lifc;->N:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lxec;

    invoke-direct {v3, v0}, Lxec;-><init>(I)V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTheAudioTrack "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public s0(Lcom/transsion/tranplayer/IMediaPlayer;II)Z
    .locals 5

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

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const v1, 0x186a4

    if-ne p2, v1, :cond_0

    iput-boolean v0, p0, Lifc;->w:Z

    :cond_0
    iget-object v2, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    const v4, 0x186a9

    if-eq p2, v4, :cond_8

    const v4, 0x186aa

    if-ne p2, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const p1, 0x186a2

    if-ne p2, p1, :cond_2

    sget p0, Lifc;->V:I

    invoke-interface {v2, p0, p3}, Lcom/transsion/playercommon/player/b$a;->onInfo(II)Z

    goto/16 :goto_1

    :cond_2
    const p1, 0x186ac

    if-ne p2, p1, :cond_3

    sget p0, Lifc;->X:I

    invoke-interface {v2, p0, p3}, Lcom/transsion/playercommon/player/b$a;->onInfo(II)Z

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_4

    sget p0, Lifc;->Y:I

    invoke-interface {v2, p0, p3}, Lcom/transsion/playercommon/player/b$a;->onInfo(II)Z

    goto :goto_1

    :cond_4
    const p1, 0x186a1

    if-ne p2, p1, :cond_5

    sget p1, Lifc;->Z:I

    invoke-interface {v2, p1, p3}, Lcom/transsion/playercommon/player/b$a;->onInfo(II)Z

    iget-boolean p1, p0, Lifc;->o:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lifc;->t:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    invoke-interface {p1, v3, v0}, Lcom/transsion/playercommon/player/b$a;->onLoadingOnlineVideo(ZZ)V

    iput-boolean v3, p0, Lifc;->o:Z

    goto :goto_1

    :cond_5
    const p1, 0x186ad

    if-ne p2, p1, :cond_6

    iput p3, p0, Lifc;->R:I

    invoke-virtual {p0}, Lifc;->l0()Z

    move-result p0

    if-eqz p0, :cond_9

    sget p0, Lcom/transsion/playercommon/R$string;->video_has_no_audio:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_1

    :cond_6
    invoke-interface {v2, p2, p3}, Lcom/transsion/playercommon/player/b$a;->onInfo(II)Z

    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_7

    iget-boolean p1, p0, Lifc;->t:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    iget-boolean p0, p0, Lifc;->o:Z

    invoke-interface {p1, v0, p0}, Lcom/transsion/playercommon/player/b$a;->onLoadingOnlineVideo(ZZ)V

    goto :goto_1

    :cond_7
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_9

    iget-boolean p1, p0, Lifc;->t:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    iget-boolean p2, p0, Lifc;->o:Z

    invoke-interface {p1, v3, p2}, Lcom/transsion/playercommon/player/b$a;->onLoadingOnlineVideo(ZZ)V

    iput-boolean v3, p0, Lifc;->o:Z

    goto :goto_1

    :cond_8
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lifc;->r0(Lcom/transsion/tranplayer/IMediaPlayer;II)Z

    :cond_9
    :goto_1
    return v3
.end method

.method public seekTo(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lifc;->m0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lifc;->j:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lifc;->O:Z

    invoke-virtual {p0, p1}, Lifc;->z0(I)V

    iget-object v1, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3, v0, v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lifc;->z0(I)V

    :goto_0
    iget-object p0, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p0, :cond_2

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/playercommon/player/b$a;->d(II)V

    :cond_2
    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tranplayer/TranMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public t(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lifc;->D0(I)V

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lifc;->pause(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lifc;->l0()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lifc;->d(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final t0(Lcom/transsion/tranplayer/IMediaPlayer;)V
    .locals 5

    iget-boolean v0, p0, Lifc;->U:Z

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eqz v0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    iget-boolean v3, p0, Lifc;->n:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x42a

    goto :goto_0

    :cond_0
    const/16 v3, 0x429

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lh27;->e(I[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, v2, v1}, Lifc;->C0(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completion start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/transsion/tranplayer/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x3

    invoke-interface {p0, v0, p1}, Lcom/transsion/playercommon/player/b$a;->d(II)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2, v1}, Lifc;->C0(IZ)V

    invoke-virtual {p0, v2}, Lifc;->D0(I)V

    :cond_2
    :goto_2
    return-void
.end method

.method public u(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaTranPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    :cond_0
    iget-object v0, p0, Lifc;->L:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lifc;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lifc;->C0(IZ)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lifc;->D0(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lifc;->y0(Z)V

    invoke-static {}, Llc3;->j()V

    invoke-static {}, Lpw2;->a()V

    iput-boolean v0, p0, Lifc;->O:Z

    return-void
.end method

.method public final u0(Lcom/transsion/tranplayer/IMediaPlayer;)V
    .locals 6

    iget v0, p0, Lifc;->f:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lifc;->O:Z

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lifc;->C0(IZ)V

    invoke-interface {p1}, Lcom/transsion/tranplayer/IMediaPlayer;->getDuration()J

    move-result-wide v2

    iget v0, p0, Lifc;->j:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-interface {p1}, Lcom/transsion/tranplayer/IMediaPlayer;->getDuration()J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, p0, Lifc;->j:I

    :cond_1
    const-string p1, "VishaTranPlayer"

    const-string v0, "onPlayerPrepared"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lifc;->n:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/playercommon/player/b$a;->e()V

    iget-object p1, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    sget v0, Lifc;->a0:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/transsion/playercommon/player/b$a;->onInfo(II)Z

    :cond_2
    invoke-virtual {p0}, Lifc;->k0()V

    invoke-virtual {p0}, Lifc;->h0()V

    iget p1, p0, Lifc;->f:I

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lifc;->seekTo(I)V

    :cond_3
    iget-boolean p1, p0, Lifc;->v:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Lifc;->pause(Z)V

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lifc;->s:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lifc;->Q:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lifc;->n:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lifc;->M:Ljb8;

    iget-boolean p1, p1, Ljb8;->g:Z

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lifc;->l0()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v1}, Lifc;->d(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final v0(Lcom/transsion/tranplayer/IMediaPlayer;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lifc;->O:Z

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getVideoCodecName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final w0(Lcom/transsion/tranplayer/IMediaPlayer;IIII)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onVideoSizeChanged, width = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", height = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "VishaTranPlayer"

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p3}, Lcom/transsion/playercommon/player/b$a;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public x(I)Z
    .locals 0

    iget-object p0, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-nez p0, :cond_0

    const-string p0, "VishaTranPlayer"

    const-string p1, "setAudioTrack play not init"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setAudioTrack(I)Z

    move-result p0

    return p0
.end method

.method public x0(Landroid/net/Uri;JZ)V
    .locals 5

    const-string v0, "unable to open content: "

    const-string v1, "VishaTranPlayer"

    iput-object p1, p0, Lifc;->A:Landroid/net/Uri;

    long-to-int p2, p2

    iput p2, p0, Lifc;->f:I

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object p3

    iget-object v2, p0, Lifc;->T:Ljava/lang/Runnable;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lifc;->d0()V

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lifc;->u(Z)V

    invoke-virtual {p0}, Lifc;->g0()Lcom/transsion/tranplayer/IMediaPlayer;

    iget-object v2, p0, Lifc;->M:Ljb8;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Ljb8;->h:Z

    if-eqz v2, :cond_0

    iget-object p1, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    const p2, 0x1869f

    invoke-virtual {p0, p1, p2, p3}, Lifc;->r0(Lcom/transsion/tranplayer/IMediaPlayer;II)Z

    return-void

    :cond_0
    iget-boolean v2, p0, Lifc;->z:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lifc;->n:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lifc;->B:F

    iget-object v3, p0, Lifc;->e:Landroid/content/Context;

    invoke-static {v3, v2}, Lw6c;->B(Landroid/content/Context;F)V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lifc;->g:Z

    iput-boolean v2, p0, Lifc;->o:Z

    iget-object v3, p0, Lifc;->d:Lcom/transsion/playercommon/player/b$a;

    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    invoke-interface {v3, v2, v2}, Lcom/transsion/playercommon/player/b$a;->onLoadingOnlineVideo(ZZ)V

    :cond_2
    iput-boolean p4, p0, Lifc;->t:Z

    invoke-virtual {p0, p2}, Lifc;->z0(I)V

    :try_start_0
    iget-object p2, p0, Lifc;->L:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    iget-boolean p2, p0, Lifc;->G:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "1"

    if-nez p2, :cond_3

    :try_start_1
    iget-boolean p2, p0, Lifc;->n:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lifc;->p:Z

    if-nez p2, :cond_4

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto/16 :goto_4

    :cond_3
    :goto_0
    iget-object p2, p0, Lifc;->L:Ljava/util/Map;

    const-string v4, "listen-video"

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean p2, p0, Lifc;->P:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lifc;->L:Ljava/util/Map;

    const-string v4, "audio-setmute"

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p2, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    iget-boolean v3, p0, Lifc;->x:Z

    invoke-virtual {p2, v3}, Lcom/transsion/tranplayer/TranMediaPlayer;->setPictureInPictureMode(Z)V

    const/4 p2, -0x1

    iput p2, p0, Lifc;->R:I

    if-eqz p4, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v3, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    iget-object v4, p0, Lifc;->L:Ljava/util/Map;

    invoke-virtual {v3, p4, v4}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_6
    iget-object p4, p0, Lifc;->L:Ljava/util/Map;

    invoke-static {}, Li44;->d()Li44;

    move-result-object v3

    invoke-virtual {v3}, Li44;->c()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p4, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    iget-object v3, p0, Lifc;->e:Landroid/content/Context;

    iget-object v4, p0, Lifc;->L:Ljava/util/Map;

    invoke-virtual {p4, v3, p1, v4}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_1
    iget-object p4, p0, Lifc;->D:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    iget-object p4, p0, Lifc;->i:Landroid/view/SurfaceHolder;

    if-eqz p4, :cond_8

    iget-boolean v3, p0, Lifc;->n:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lifc;->p:Z

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p0, p4, v2}, Lifc;->O(Landroid/view/SurfaceHolder;Z)V

    :cond_8
    iget-object p4, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p4}, Lcom/transsion/tranplayer/TranMediaPlayer;->prepareAsync()V

    invoke-virtual {p0}, Lifc;->g()V

    iget p4, p0, Lifc;->c:I

    if-ne p4, p2, :cond_9

    invoke-virtual {p0, v2, p3}, Lifc;->C0(IZ)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v2, v2}, Lifc;->C0(IZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-void

    :goto_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p0, p1, v2, p3}, Lifc;->r0(Lcom/transsion/tranplayer/IMediaPlayer;II)Z

    return-void

    :goto_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p0, p1, v2, p3}, Lifc;->r0(Lcom/transsion/tranplayer/IMediaPlayer;II)Z

    return-void
.end method

.method public y(Ljava/lang/String;Z)Z
    .locals 4

    iget p2, p0, Lifc;->c:I

    const/4 v0, 0x2

    const-string v1, "VishaTranPlayer"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, v3}, Lifc;->y0(Z)V

    invoke-virtual {p0, p1, v2}, Lifc;->E0(Ljava/lang/String;I)V

    const-string p0, "addSubtitle player not PREPARED"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-boolean p2, p0, Lifc;->G:Z

    if-eqz p2, :cond_1

    const-string p2, "addSubtitle in music mode"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v2}, Lifc;->E0(Ljava/lang/String;I)V

    return v3

    :cond_1
    iget-object p2, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    if-nez p2, :cond_2

    return v3

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addSubtitle uri :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lifc;->J:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "addSubtitle same path"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object p2, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-virtual {p2, v2}, Lcom/transsion/tranplayer/TranMediaPlayer;->setSpuTrack(I)Z

    iget-object p2, p0, Lifc;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lifc;->y0(Z)V

    invoke-virtual {p0, p1, v2}, Lifc;->E0(Ljava/lang/String;I)V

    iput-object p1, p0, Lifc;->J:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public final y0(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lifc;->onTimedText(Lcom/transsion/tranplayer/IMediaPlayer;Lcom/transsion/tranplayer/ITimedText;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lifc;->w:Z

    const-string v0, ""

    iput-object v0, p0, Lifc;->J:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1}, Lifc;->E0(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public z(ZI)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lifc;->c0(ZI)V

    iput-boolean p1, p0, Lifc;->r:Z

    return-void
.end method

.method public final z0(I)V
    .locals 1

    iput p1, p0, Lifc;->k:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLastPosition, mLastPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lifc;->k:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VishaTranPlayer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
