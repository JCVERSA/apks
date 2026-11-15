.class public Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/service/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public b:I

.field public c:Landroid/support/v4/media/MediaMetadataCompat;

.field public final synthetic d:Lcom/transsion/audio/service/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/service/MediaSessionService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->a:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->b:I

    return-void
.end method


# virtual methods
.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaButtonEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    const-string p0, "doMediaButtonEvent  event null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doMediaButtonEvent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lil6;->e()Lil6;

    invoke-static {v0}, Lil6;->d(Landroid/view/KeyEvent;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    const-string v0, "AudioSessionService"

    const-string v1, "mPlaybackState onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->B1()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->onPrepare()V

    invoke-static {}, Lcom/transsion/playercommon/player/a;->a()Lcom/transsion/playercommon/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/player/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/service/MediaSessionService;->k(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->B1()V

    const-string p0, "AudioSessionService"

    const-string v0, "onPlayFromMediaId: MediaSession active"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepare()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicPlayManager.getPlayerState(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {v0, v2}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {v0, v4}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {v0, v3}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepare mPlayMediaItem ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v3}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepare getDuration ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v3}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/service/MediaSessionService;->l(Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->c:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->f(Lcom/transsion/audio/service/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->c:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->f(Lcom/transsion/audio/service/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/audio/service/MediaSessionService;->f(Lcom/transsion/audio/service/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    return-void
.end method

.method public onSeekTo(J)V
    .locals 0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->m1(I)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 5

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v1, v4}, Lcom/transsion/audio/service/MediaSessionService;->g(Lcom/transsion/audio/service/MediaSessionService;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/audio/service/MediaSessionService;->f(Lcom/transsion/audio/service/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->U0()V

    invoke-virtual {p0}, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->onPrepare()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 5

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v1, v4}, Lcom/transsion/audio/service/MediaSessionService;->g(Lcom/transsion/audio/service/MediaSessionService;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/audio/service/MediaSessionService;->f(Lcom/transsion/audio/service/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->Y0()V

    invoke-virtual {p0}, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->onPrepare()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;->d:Lcom/transsion/audio/service/MediaSessionService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    const-string p0, "AudioSessionService"

    const-string v0, "mPlaybackState onStop"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
