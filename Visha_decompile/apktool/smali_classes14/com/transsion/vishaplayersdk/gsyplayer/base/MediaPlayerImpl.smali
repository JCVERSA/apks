.class public Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;
.implements Lh27$b;


# instance fields
.field protected mOnPlayerCoreBufferingUpdateListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnBufferingUpdateListener;

.field protected mOnPlayerCoreCompletionListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;

.field protected mOnPlayerCoreErrorListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;

.field protected mOnPlayerCoreInfoListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnInfoListener;

.field protected mOnPlayerCorePreparedListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnPreparedListener;

.field protected mOnPlayerCoreSeekCompleteListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSeekCompleteListener;

.field protected mOnPlayerCoreSubtitlesListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

.field protected mOnPlayerCoreTimedTextListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnTimedTextListener;

.field private mOnPlayerCoreVideoFirstFrameListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoFirstFrameShowListener;

.field protected mOnPlayerCoreVideoSizeChangedListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;

.field protected mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x408

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aget-object p1, p2, v0

    check-cast p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->userLogout()V

    goto :goto_0

    :pswitch_2
    aget-object p1, p2, v0

    check-cast p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x407
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAudioSessionId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIsPausedByUser()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTrackInfo()[Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/ITrackInfo;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/ITrackInfo;

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLooping()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlayable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyOnBufferingUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreBufferingUpdateListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V

    :cond_0
    return-void
.end method

.method public final notifyOnCompletion()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreCompletionListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnError(II)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreErrorListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;->onError(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyOnInfo(II)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreInfoListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnInfoListener;->onInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyOnPrepared()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCorePreparedListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnSeekComplete()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSeekCompleteListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnTimedText(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkTimedText;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreTimedTextListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnTimedTextListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkTimedText;)V

    :cond_0
    return-void
.end method

.method public notifyOnVideoFirstFrameShow()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreVideoFirstFrameListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoFirstFrameShowListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoFirstFrameShowListener;->OnVideoFirstFrameShow(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnVideoSizeChanged(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreVideoSizeChangedListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;IIII)V

    :cond_0
    return-void
.end method

.method public notifyStartPlay()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x3f6

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayerInitFailed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->getPlayerManagerListener()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->getPlayerManagerListener()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;->onPlayerInitResult(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V

    :cond_0
    return-void
.end method

.method public onPlayerInitSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->getPlayerManagerListener()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->getPlayerManagerListener()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;->onPlayerInitResult(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V

    :cond_0
    return-void
.end method

.method public onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    return-void
.end method

.method public onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public varargs postErrorState([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v2, p1, v1

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {p0, v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x40a

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs postNotificationMsg(I[Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x408

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->resetListeners()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resetListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCorePreparedListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnPreparedListener;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreBufferingUpdateListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnBufferingUpdateListener;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreCompletionListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSeekCompleteListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSeekCompleteListener;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreVideoSizeChangedListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreErrorListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreInfoListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnInfoListener;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreTimedTextListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public setDataSource(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;)V
    .locals 0

    .line 3
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 5
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreBufferingUpdateListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreCompletionListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreErrorListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreInfoListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCorePreparedListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSeekCompleteListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSubtitlesListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSubtitlesListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    return-void
.end method

.method public setOnTimedTextListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreTimedTextListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public setOnVideoFirstFrameListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoFirstFrameShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreVideoFirstFrameListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoFirstFrameShowListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreVideoSizeChangedListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlayerManager(Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V
    .locals 0

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public togglePlay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public userLogout()V
    .locals 0

    return-void
.end method
