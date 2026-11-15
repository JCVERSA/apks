.class public Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mediasession/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/mediasession/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCustomAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "com.transsion.play.notify.close"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->E(Lcom/transsion/mediasession/MediaSessionService;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.transsion.play.notify.favorite"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->C(Lcom/transsion/mediasession/MediaSessionService;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaButtonEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->m(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    const-string p0, "doMediaButtonEvent  event null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

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

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->x(Lcom/transsion/mediasession/MediaSessionService;)V

    return-void
.end method

.method public onPlay()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->y(Lcom/transsion/mediasession/MediaSessionService;)V

    return-void
.end method

.method public onPrepare()V
    .locals 0

    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    return-void
.end method

.method public onSeekTo(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnSeekTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " current listen video mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->h(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->j(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->j(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->i(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q1(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->m(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->m(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->m1(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/mediasession/MediaSessionService;->l(Lcom/transsion/mediasession/MediaSessionService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/mediasession/MediaSessionService;->w(Lcom/transsion/mediasession/MediaSessionService;J)V

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1, v4}, Lcom/transsion/mediasession/MediaSessionService;->z(Lcom/transsion/mediasession/MediaSessionService;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    const-string v0, "VishaMediaSessionService"

    const-string v1, "MediaSession onSkipToNext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/mediasession/MediaSessionService;->F(Lcom/transsion/mediasession/MediaSessionService;Z)V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/mediasession/MediaSessionService;->l(Lcom/transsion/mediasession/MediaSessionService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/mediasession/MediaSessionService;->w(Lcom/transsion/mediasession/MediaSessionService;J)V

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1, v4}, Lcom/transsion/mediasession/MediaSessionService;->z(Lcom/transsion/mediasession/MediaSessionService;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    const-string v0, "VishaMediaSessionService"

    const-string v1, "MediaSession onSkipToPrevious"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/mediasession/MediaSessionService;->G(Lcom/transsion/mediasession/MediaSessionService;Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "from media session: onStop"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->x(Lcom/transsion/mediasession/MediaSessionService;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    :cond_0
    return-void
.end method
