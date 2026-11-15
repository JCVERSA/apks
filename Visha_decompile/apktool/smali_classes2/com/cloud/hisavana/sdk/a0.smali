.class public final Lcom/cloud/hisavana/sdk/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwsd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/a0$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/cloud/hisavana/sdk/a0$a;

.field public static volatile p:Lcom/google/android/exoplayer2/upstream/a$a;

.field public static final q:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public c:Lcom/google/android/exoplayer2/ExoPlayer;

.field public d:Lxnd;

.field public e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/a0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/a0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/a0;->o:Lcom/cloud/hisavana/sdk/a0$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/a0;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExoPlayerImpl"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a0;->b:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/a0;->i:Z

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/a0;->j:Z

    return-void
.end method

.method public static final synthetic d(Lcom/cloud/hisavana/sdk/a0;Lcom/google/android/exoplayer2/PlaybackException;)Lcom/cloud/hisavana/sdk/p;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/a0;->e(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/cloud/hisavana/sdk/p;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/cloud/hisavana/sdk/a0;)Lxnd;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    return-object p0
.end method

.method public static final synthetic g(Lcom/cloud/hisavana/sdk/a0;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/a0;->l:Z

    return-void
.end method

.method public static final synthetic h(Lcom/google/android/exoplayer2/upstream/a$a;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/a0;->p:Lcom/google/android/exoplayer2/upstream/a$a;

    return-void
.end method

.method public static final synthetic i(Lcom/cloud/hisavana/sdk/a0;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method public static final synthetic j(Lcom/cloud/hisavana/sdk/a0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic k(Lcom/cloud/hisavana/sdk/a0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/a0;->l:Z

    return p0
.end method

.method public static final synthetic l(Lcom/cloud/hisavana/sdk/a0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/a0;->p()V

    return-void
.end method

.method public static final synthetic m()Lcom/google/android/exoplayer2/upstream/a$a;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/a0;->p:Lcom/google/android/exoplayer2/upstream/a$a;

    return-object v0
.end method

.method public static final synthetic n()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/a0;->q:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->getVolume()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/t;->setVolume(F)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a0;->g:Z

    .line 7
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, Lxnd;->onVolumeChanged(F)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/t;->setVolume(F)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a0;->g:Z

    .line 10
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    if-eqz p0, :cond_2

    invoke-interface {p0, v2}, Lxnd;->onVolumeChanged(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a0;->n:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 2
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/t;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/a0;->k:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->pause()V

    :cond_0
    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 4

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a0;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaData path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enableDiskCache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a0;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/a0;->f:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/a0;->g:Z

    .line 6
    iput-boolean p4, p0, Lcom/cloud/hisavana/sdk/a0;->h:Z

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/a0;->l:Z

    .line 8
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/a0;->m:Z

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialWith()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/a0;->m:Z

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/a0;->o()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->prepare()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/t;->seekTo(IJ)V

    .line 5
    :goto_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->play()V

    return-void
.end method

.method public c(Lxnd;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    return-void
.end method

.method public d()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lxnd;->c(Z)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/a0;->b()V

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Lxnd;->c(Z)V

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/a0;->e()V

    :goto_1
    return-void
.end method

.method public final e(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/cloud/hisavana/sdk/p;
    .locals 3

    .line 6
    iget p0, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7d8

    if-gt p0, v0, :cond_0

    .line 7
    new-instance p0, Lkotlin/Pair;

    sget-object v0, Lcom/cloud/hisavana/sdk/p$b;->a:Lcom/cloud/hisavana/sdk/p$b;

    const/16 v1, 0x1789

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xfa1

    if-lt p0, v0, :cond_1

    const/16 v0, 0xfa3

    if-gt p0, v0, :cond_1

    .line 8
    new-instance p0, Lkotlin/Pair;

    sget-object v0, Lcom/cloud/hisavana/sdk/p$b;->b:Lcom/cloud/hisavana/sdk/p$b;

    const/16 v1, 0x178a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1771

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1776

    if-gt p0, v0, :cond_2

    .line 9
    new-instance p0, Lkotlin/Pair;

    sget-object v0, Lcom/cloud/hisavana/sdk/p$b;->c:Lcom/cloud/hisavana/sdk/p$b;

    const/16 v1, 0x178b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    new-instance p0, Lkotlin/Pair;

    sget-object v0, Lcom/cloud/hisavana/sdk/p$b;->e:Lcom/cloud/hisavana/sdk/p$b;

    const/16 v1, 0x178c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/p$b;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 12
    new-instance v1, Lcom/cloud/hisavana/sdk/p;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "unknown playback error"

    .line 14
    :cond_3
    invoke-direct {v1, p0, v2, v0, p1}, Lcom/cloud/hisavana/sdk/p;-><init>(ILjava/lang/String;Lcom/cloud/hisavana/sdk/p$b;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/t;->seekTo(IJ)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->prepare()V

    .line 5
    :goto_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->play()V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/a0;->i:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->isPlaying()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/a0;->l:Z

    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$b;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a0;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$b;-><init>(Landroid/content/Context;)V

    new-instance v2, Ly32;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/a0;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Ly32;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ly32;->j(Z)Ly32;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$b;->l(Lms8;)Lcom/google/android/exoplayer2/ExoPlayer$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayer$b;->f()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a0;->n:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/t;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v2, Lcom/cloud/hisavana/sdk/a0$b;

    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/a0$b;-><init>(Lcom/cloud/hisavana/sdk/a0;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/t;->d(Lcom/google/android/exoplayer2/t$d;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a0;->f:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a0;->a:Ljava/lang/String;

    const-string/jumbo v3, "videoPath is null, skip initPlayer"

    invoke-virtual {v1, v2, v3}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/n;->d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n;

    move-result-object v2

    const-string v3, "fromUri(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/cloud/hisavana/sdk/a0;->h:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/cloud/hisavana/sdk/a0;->o:Lcom/cloud/hisavana/sdk/a0$a;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/a0;->b:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/a0$a;->b(Lcom/cloud/hisavana/sdk/a0$a;Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/a$a;

    move-result-object v3

    new-instance v4, Lcom/google/android/exoplayer2/source/n$b;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/source/n$b;-><init>(Lcom/google/android/exoplayer2/upstream/a$a;)V

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/n$b;->e(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/n;

    move-result-object v2

    const-string v3, "createMediaSource(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->a(Lcom/google/android/exoplayer2/source/i;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/t;->c(Lcom/google/android/exoplayer2/n;)V

    :goto_1
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/a0;->i:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/t;->setPlayWhenReady(Z)V

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/a0;->g:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/t;->setVolume(F)V

    :cond_4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/t;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/a0;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initPlayer failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    if-eqz p0, :cond_6

    new-instance v0, Lcom/cloud/hisavana/sdk/p;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "player init failed"

    :cond_5
    sget-object v3, Lcom/cloud/hisavana/sdk/p$b;->e:Lcom/cloud/hisavana/sdk/p$b;

    const/16 v4, 0x178c

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/cloud/hisavana/sdk/p;-><init>(ILjava/lang/String;Lcom/cloud/hisavana/sdk/p$b;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lxnd;->a(Lcom/cloud/hisavana/sdk/p;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final p()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/a0;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->getVideoSize()Lf7c;

    move-result-object v0

    const-string v1, "getVideoSize(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Lf7c;->b:I

    iget v0, v0, Lf7c;->c:I

    if-lez v1, :cond_3

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a0;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setMaterialWith(I)V

    :cond_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a0;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setMaterialHeight(I)V

    :cond_3
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    if-eqz p0, :cond_4

    invoke-interface {p0, v1, v0}, Lxnd;->onVideoSizeChanged(II)V

    :cond_4
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->play()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 6

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a0;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release player="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/t;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/t;->pause()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/google/android/exoplayer2/t;->stop()V

    invoke-interface {v1}, Lcom/google/android/exoplayer2/t;->release()V

    invoke-interface {v1}, Lcom/google/android/exoplayer2/t;->clearVideoSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/a0;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release error (ignored): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    :goto_2
    return-void

    :catchall_1
    move-exception v1

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a0;->d:Lxnd;

    throw v1
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/t;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/a0;->i:Z

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/t;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method
