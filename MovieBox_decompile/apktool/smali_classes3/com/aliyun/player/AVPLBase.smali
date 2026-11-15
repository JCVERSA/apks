.class public abstract Lcom/aliyun/player/AVPLBase;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/IListPlayer;
.implements Lcom/aliyun/player/IPlayer;


# instance fields
.field private mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

.field private mNativePlayer:Lcom/aliyun/player/IPlayer;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/AVPLBase;->getNativePlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/IPlayer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getNativeContextAddr()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/aliyun/player/AVPLBase;->createListPlayer(Landroid/content/Context;Ljava/lang/String;J)Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->addExtSubtitle(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearScreen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->clearScreen()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected abstract createListPlayer(Landroid/content/Context;Ljava/lang/String;J)Lcom/aliyun/player/nativeclass/JniListPlayerBase;
.end method

.method public currentTrack(I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->currentTrack(I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public currentTrack(Lcom/aliyun/player/nativeclass/TrackInfo$Type;)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->currentTrack(Lcom/aliyun/player/nativeclass/TrackInfo$Type;)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->enableHardwareDecoder(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aliyun/player/IPlayer;->getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->getCurrentUid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getMaxPreloadMemorySizeMB()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->getMaxPreloadMemorySizeMB()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMediaInfo()Lcom/aliyun/player/nativeclass/MediaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getMediaInfo()Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNativeContextAddr()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getNativeContextAddr()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method protected getNativePlayer()Lcom/aliyun/player/IPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    return-object v0
.end method

.method protected abstract getNativePlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/IPlayer;
.end method

.method public getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getPlayerName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPropertyString(Lcom/aliyun/player/IPlayer$PropertyKey;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->getPropertyString(Lcom/aliyun/player/IPlayer$PropertyKey;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getSpeed()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVideoHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVideoRotation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVideoWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVolume()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->isAutoPlay()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->isLoop()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->isMute()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->prepare()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public redraw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->redraw()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->release()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public reload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->reload()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->removeSource(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer;->seekTo(J)V

    return-void
.end method

.method public seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/player/IPlayer;->seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V

    return-void
.end method

.method public selectExtSubtitle(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer;->selectExtSubtitle(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->selectTrack(I)V

    return-void
.end method

.method public selectTrack(IZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer;->selectTrack(IZ)V

    return-void
.end method

.method public sendCustomEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->sendCustomEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setAutoPlay(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDefaultBandWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setDefaultBandWidth(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFastStart(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setFastStart(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFilterConfig(Lcom/aliyun/player/FilterConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setFilterConfig(Lcom/aliyun/player/FilterConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFilterInvalid(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer;->setFilterInvalid(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setLoop(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxAccurateSeekDelta(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setMaxAccurateSeekDelta(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxPreloadMemorySizeMB(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->setMaxPreloadMemorySizeMB(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setMute(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnTrackChangedListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnTrackChangedListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnTrackReadyListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnTrackReadyListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPreferPlayerName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setPreferPlayerName(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPreloadCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mListPlayer:Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->setPreloadCount(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setSpeed(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStreamDelayTime(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer;->setStreamDelayTime(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setTraceId(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setVideoBackgroundColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoTag([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setVideoTag([I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setVolume(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public snapshot()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->snapshot()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public surfaceChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->surfaceChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPLBase;->mNativePlayer:Lcom/aliyun/player/IPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer;->updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
