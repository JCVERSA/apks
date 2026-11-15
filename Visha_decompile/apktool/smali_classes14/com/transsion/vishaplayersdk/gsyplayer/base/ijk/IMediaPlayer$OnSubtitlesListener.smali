.class public interface abstract Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSubtitlesListener"
.end annotation


# virtual methods
.method public abstract onSetSubtitlesFailed(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/lang/String;)V
.end method

.method public abstract onSetSubtitlesSuccess(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/lang/String;)V
.end method

.method public abstract onSubtitlesAvailable(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;",
            ">;)V"
        }
    .end annotation
.end method
