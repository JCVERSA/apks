.class public abstract Lcom/transsion/tranplayer/AbstractMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/IMediaPlayer;


# instance fields
.field private mOnBufferingUpdateListener:Lcom/transsion/tranplayer/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCodecDeleteCompleteListener:Lcom/transsion/tranplayer/IMediaPlayer$OnCodecDeleteCompleteListener;

.field private mOnCompletionListener:Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/transsion/tranplayer/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/transsion/tranplayer/IMediaPlayer$OnSeekCompleteListener;

.field private mOnSubTitleTypeListener:Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;

.field private mOnTimedTextListener:Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyOnBufferingUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/transsion/tranplayer/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/transsion/tranplayer/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/transsion/tranplayer/IMediaPlayer;I)V

    :cond_0
    return-void
.end method

.method public final notifyOnCodecDeleteComplete()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnCodecDeleteCompleteListener:Lcom/transsion/tranplayer/IMediaPlayer$OnCodecDeleteCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/tranplayer/IMediaPlayer$OnCodecDeleteCompleteListener;->onCodecDeleteComplete(Lcom/transsion/tranplayer/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnCompletion()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnCompletionListener:Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/transsion/tranplayer/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnError(II)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnErrorListener:Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;->onError(Lcom/transsion/tranplayer/IMediaPlayer;II)Z

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

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnInfoListener:Lcom/transsion/tranplayer/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/tranplayer/IMediaPlayer$OnInfoListener;->onInfo(Lcom/transsion/tranplayer/IMediaPlayer;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyOnPrepared()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnPreparedListener:Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/transsion/tranplayer/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnSeekComplete()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/transsion/tranplayer/IMediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/tranplayer/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/transsion/tranplayer/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnSubTitleTypeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnSubTitleTypeListener:Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;->onSubTitleType(Lcom/transsion/tranplayer/IMediaPlayer;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnTimedText(Lcom/transsion/tranplayer/ITimedText;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/transsion/tranplayer/IMediaPlayer;Lcom/transsion/tranplayer/ITimedText;)V

    :cond_0
    return-void
.end method

.method public final notifyOnVideoSizeChanged(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/transsion/tranplayer/IMediaPlayer;IIII)V

    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnPreparedListener:Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/transsion/tranplayer/IMediaPlayer$OnBufferingUpdateListener;

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnCompletionListener:Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/transsion/tranplayer/IMediaPlayer$OnSeekCompleteListener;

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnErrorListener:Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnInfoListener:Lcom/transsion/tranplayer/IMediaPlayer$OnInfoListener;

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnSubTitleTypeListener:Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;

    iput-object v0, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnCodecDeleteCompleteListener:Lcom/transsion/tranplayer/IMediaPlayer$OnCodecDeleteCompleteListener;

    return-void
.end method

.method public setDataSource(Lcom/transsion/tranplayer/IMediaDataSource;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setOnBufferingUpdateListener(Lcom/transsion/tranplayer/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/transsion/tranplayer/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public final setOnCodecDeleteCompleteListener(Lcom/transsion/tranplayer/IMediaPlayer$OnCodecDeleteCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnCodecDeleteCompleteListener:Lcom/transsion/tranplayer/IMediaPlayer$OnCodecDeleteCompleteListener;

    return-void
.end method

.method public final setOnCompletionListener(Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnCompletionListener:Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public final setOnErrorListener(Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnErrorListener:Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setOnInfoListener(Lcom/transsion/tranplayer/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnInfoListener:Lcom/transsion/tranplayer/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public final setOnPreparedListener(Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnPreparedListener:Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public final setOnSeekCompleteListener(Lcom/transsion/tranplayer/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/transsion/tranplayer/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public final setOnSubTitleTypeListener(Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnSubTitleTypeListener:Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;

    return-void
.end method

.method public final setOnTimedTextListener(Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public final setOnVideoSizeChangedListener(Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method
