.class public interface abstract Lcom/yandex/mobile/ads/impl/hi1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hi1$b;,
        Lcom/yandex/mobile/ads/impl/hi1$a;,
        Lcom/yandex/mobile/ads/impl/hi1$c;
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/yandex/mobile/ads/impl/m60;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract a(Lcom/yandex/mobile/ads/impl/hi1$b;)V
.end method

.method public abstract b(Lcom/yandex/mobile/ads/impl/hi1$b;)V
.end method

.method public abstract getContentPosition()J
.end method

.method public abstract getCurrentAdGroupIndex()I
.end method

.method public abstract getCurrentAdIndexInAdGroup()I
.end method

.method public abstract getCurrentMediaItemIndex()I
.end method

.method public abstract getCurrentPeriodIndex()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentTimeline()Lcom/yandex/mobile/ads/impl/i52;
.end method

.method public abstract getCurrentTracks()Lcom/yandex/mobile/ads/impl/b72;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getPlaybackSuppressionReason()I
.end method

.method public abstract getTotalBufferedDuration()J
.end method

.method public abstract getVolume()F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end method

.method public abstract hasNextMediaItem()Z
.end method

.method public abstract hasPreviousMediaItem()Z
.end method

.method public abstract isCurrentMediaItemDynamic()Z
.end method

.method public abstract isCurrentMediaItemLive()Z
.end method

.method public abstract isCurrentMediaItemSeekable()Z
.end method

.method public abstract isPlayingAd()Z
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setVideoTextureView(Landroid/view/TextureView;)V
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVolume(F)V
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
.end method

.method public abstract stop()V
.end method
