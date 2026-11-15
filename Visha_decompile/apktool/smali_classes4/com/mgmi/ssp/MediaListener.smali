.class public interface abstract Lcom/mgmi/ssp/MediaListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/BasicADListener;


# virtual methods
.method public abstract getCurrentTime()I
.end method

.method public abstract getPositiveView()Lcom/hunantv/media/widget/IVideoView;
.end method

.method public abstract getSnapshot(II)Landroid/graphics/Bitmap;
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWith()I
.end method

.method public abstract isContentPlaying()Z
.end method

.method public abstract isFullScreen()Z
.end method

.method public abstract onAdClick()V
.end method

.method public abstract onAdClick(Ljava/lang/String;)V
.end method

.method public abstract onAdComplete()V
.end method

.method public abstract onAdCountClicked()V
.end method

.method public abstract onAdError(Lcom/mgmi/ssp/AdError;)V
    .param p1    # Lcom/mgmi/ssp/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdPrepared()V
.end method

.method public abstract onAdRequestSuccess()V
.end method

.method public abstract onAdStart()V
.end method

.method public abstract onClickBackButton()V
.end method

.method public abstract onClickFullScreenButton()V
.end method

.method public abstract onUpdateAdTime(I)V
.end method

.method public abstract onUpdateStatus(ZZZ)V
.end method

.method public abstract onVideoSizeChanged(II)V
.end method

.method public abstract resumePlay()V
.end method
