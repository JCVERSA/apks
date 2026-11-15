.class public interface abstract Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoListener"
.end annotation


# virtual methods
.method public abstract OnVideoFirstFrame()V
.end method

.method public abstract isFullScreen()I
.end method

.method public abstract onBuffering(I)V
.end method

.method public abstract onSubtitlesError(Ljava/lang/String;)V
.end method

.method public abstract onSubtitlesSuccess(Ljava/lang/String;)V
.end method

.method public abstract onVideoComplete()V
.end method

.method public abstract onVideoDefinitionChanged(Ljava/lang/String;)V
.end method

.method public abstract onVideoDefinitionChanging()V
.end method

.method public abstract onVideoLoading(I)V
.end method

.method public abstract onVideoPaused()V
.end method

.method public abstract onVideoPrepare()V
.end method

.method public abstract onVideoPreparing()V
.end method

.method public abstract onVideoSizeChanged(II)V
.end method

.method public abstract onVideoStartPlayering(Z)V
.end method

.method public abstract onVideoStarted()V
.end method

.method public abstract onVideoStopped()V
.end method

.method public abstract ontSubtitleList(Ljava/util/ArrayList;Lcom/mgtv/ssp/play/bean/SubTitleData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mgtv/ssp/play/bean/SubTitleData;",
            ">;",
            "Lcom/mgtv/ssp/play/bean/SubTitleData;",
            ")V"
        }
    .end annotation
.end method
