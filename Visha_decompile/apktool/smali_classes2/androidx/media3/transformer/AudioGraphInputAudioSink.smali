.class final Landroidx/media3/transformer/AudioGraphInputAudioSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;,
        Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;
    }
.end annotation


# instance fields
.field private final controller:Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;

.field private currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentInputFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputPositionUs:J

.field private inputStreamEnded:Z

.field private offsetToCompositionTimeUs:J

.field private outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private signalledEndOfStream:Z


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->controller:Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;

    return-void
.end method

.method private getCompositionPlayerPositionUs()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->controller:Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;

    iget-boolean v1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    invoke-interface {v0, v1}, Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->offsetToCompositionTimeUs:J

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private handleBufferInternal(Ljava/nio/ByteBuffer;JI)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->signalledEndOfStream:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraphInput;

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraphInput;->getInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object v3, v1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, p2, v3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->offsetToCompositionTimeUs:J

    add-long/2addr v3, p2

    :goto_0
    iput-wide v3, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {v1, p4}, Landroidx/media3/decoder/Buffer;->setFlags(I)V

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraphInput;->queueInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/Format;

    iget v0, p4, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v1, p4, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v0

    div-int/2addr v2, v0

    int-to-long v0, v2

    iget p4, p4, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v0, v1, p4}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputPositionUs:J

    :cond_2
    return p1
.end method


# virtual methods
.method public configure(Landroidx/media3/common/Format;I[I)V
    .locals 6
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result p2

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object p2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    iget-object v1, p2, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    if-nez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    if-eqz v0, :cond_1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/transformer/AudioGraphInput;->onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;Z)V

    :cond_1
    return-void
.end method

.method public disableTunneling()V
    .locals 0

    return-void
.end method

.method public enableTunnelingV21()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->signalledEndOfStream:Z

    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioTrackBufferSizeUs()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isEnded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputPositionUs:J

    return-wide p0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->getCompositionPlayerPositionUs()J

    move-result-wide p0

    return-wide p0
.end method

.method public getFormatSupport(Landroidx/media3/common/Format;)I
    .locals 1

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "audio/raw"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    sget-object p0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    iget-boolean p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    xor-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    iget-object v1, p4, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    const/4 v6, 0x0

    if-nez p4, :cond_1

    :try_start_0
    iget-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->controller:Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    invoke-interface {p4, v1, v0}, Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;->getAudioGraphInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return v6

    :cond_0
    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    iget-object v4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    const/4 v5, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/transformer/AudioGraphInput;->onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;Z)V

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget-object v3, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    const/4 v4, 0x0

    const-string v1, "Error creating AudioGraphInput"

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(Ljava/lang/String;ILandroidx/media3/common/Format;ZLjava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3, v6}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->handleBufferInternal(Ljava/nio/ByteBuffer;JI)Z

    move-result p0

    return p0
.end method

.method public handleDiscontinuity()V
    .locals 0

    return-void
.end method

.method public hasPendingData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnded()Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    return p0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->getCompositionPlayerPositionUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputPositionUs:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JZ)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    invoke-direct {v0, p1, p4}, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;-><init>(Landroidx/media3/transformer/EditedMediaItem;Z)V

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    iput-wide p2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->offsetToCompositionTimeUs:J

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public playToEndOfStream()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->signalledEndOfStream:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    iget-boolean v0, v0, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;->isLastInSequence:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->handleBufferInternal(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->signalledEndOfStream:Z

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 0

    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
    .locals 0

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
