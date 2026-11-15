.class final Landroidx/media3/transformer/AudioGraphInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/GraphInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;
    }
.end annotation


# static fields
.field private static final MAX_AUDIO_DRIFT_ALLOWED_US:J = 0x7d0L

.field private static final MAX_INPUT_BUFFER_COUNT:I = 0xa


# instance fields
.field private audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field private final availableInputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentItemExpectedInputDurationUs:J

.field private currentItemInputBytesRead:J

.field private currentItemSilenceAppended:Z

.field private inputBlocked:Z

.field private isCurrentItemLast:Z

.field private final outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private final pendingInputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingMediaItemChanges:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;",
            ">;"
        }
    .end annotation
.end field

.field private processedFirstMediaItemChange:Z

.field private queueEndOfStreamAfterSilence:Z

.field private receivedEndOfStreamFromInput:Z

.field private silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

.field private final startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v0, p3}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    invoke-static {v0}, Landroidx/media3/transformer/AudioGraph;->isInputAudioFormatValid(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result v1

    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move v3, v1

    :goto_0
    const/16 v4, 0xa

    const/4 v5, 0x2

    if-ge v3, v4, :cond_0

    new-instance v4, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {v4, v5}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v2, v4, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    new-instance v2, Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-direct {v2, v0}, Landroidx/media3/transformer/SilentAudioGenerator;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    iput-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-static {p2, p3, v0, p1}, Landroidx/media3/transformer/AudioGraphInput;->configureProcessing(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessingPipeline;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush()V

    iget-object p1, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInput;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget p2, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-ne p2, v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1, p1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    iput-wide p2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    return-void
.end method

.method private appendSilence()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    iget-wide v1, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->currentItemActualInputDurationUs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroidx/media3/transformer/SilentAudioGenerator;->addSilence(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemSilenceAppended:Z

    iget-boolean v1, p0, Landroidx/media3/transformer/AudioGraphInput;->isCurrentItemLast:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->queueEndOfStreamAfterSilence:Z

    :cond_0
    return-void
.end method

.method private clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private configureForPendingMediaItemChange()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    iget-boolean v3, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->isLast:Z

    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->isCurrentItemLast:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemSilenceAppended:Z

    iget-object v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->format:Landroidx/media3/common/Format;

    if-eqz v4, :cond_0

    iget-wide v1, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->durationUs:J

    iput-wide v1, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    new-instance v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object v2, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->format:Landroidx/media3/common/Format;

    invoke-direct {v1, v2}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    new-instance v2, Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-direct {v2, v1}, Landroidx/media3/transformer/SilentAudioGenerator;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    iput-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    goto :goto_1

    :cond_0
    iget-object v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v4, v4, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v4, v4, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-wide v5, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->durationUs:J

    invoke-virtual {v4, v5, v6}, Landroidx/media3/transformer/EditedMediaItem;->getDurationAfterEffectsApplied(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    goto :goto_0

    :cond_1
    iget-wide v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->durationUs:J

    iput-wide v4, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    :goto_0
    iget-object v4, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    iget-object v4, v4, Landroidx/media3/transformer/SilentAudioGenerator;->audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object v5, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v5, v6, v7, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    move-object v1, v4

    :goto_1
    iget-boolean v2, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v0, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->format:Landroidx/media3/common/Format;

    iget-object v4, p0, Landroidx/media3/transformer/AudioGraphInput;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-static {v2, v0, v1, v4}, Landroidx/media3/transformer/AudioGraphInput;->configureProcessing(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessingPipeline;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush()V

    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    return-void
.end method

.method private static configureProcessing(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessingPipeline;
    .locals 4
    .param p1    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    iget-boolean v1, p0, Landroidx/media3/transformer/EditedMediaItem;->flattenForSlowMotion:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;

    new-instance v2, Landroidx/media3/transformer/SegmentSpeedProvider;

    iget-object p1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-direct {v2, p1}, Landroidx/media3/transformer/SegmentSpeedProvider;-><init>(Landroidx/media3/common/Metadata;)V

    invoke-direct {v1, v2}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;-><init>(Landroidx/media3/common/audio/SpeedProvider;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object p0, p0, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    iget p0, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    new-instance p0, Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-direct {p0}, Landroidx/media3/common/audio/SonicAudioProcessor;-><init>()V

    iget v1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-virtual {p0, v1}, Landroidx/media3/common/audio/SonicAudioProcessor;->setOutputSampleRateHz(I)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :cond_1
    iget p0, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    if-ne p0, v1, :cond_3

    :cond_2
    new-instance p0, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;

    invoke-direct {p0}, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;-><init>()V

    iget v3, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v2, v3}, Landroidx/media3/common/audio/ChannelMixingMatrix;->create(II)Landroidx/media3/common/audio/ChannelMixingMatrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;->putChannelMixingMatrix(Landroidx/media3/common/audio/ChannelMixingMatrix;)V

    iget v2, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v1, v2}, Landroidx/media3/common/audio/ChannelMixingMatrix;->create(II)Landroidx/media3/common/audio/ChannelMixingMatrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;->putChannelMixingMatrix(Landroidx/media3/common/audio/ChannelMixingMatrix;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :cond_3
    new-instance p0, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-virtual {p0, p2}, Landroidx/media3/common/audio/AudioProcessingPipeline;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v0

    iget v1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-eq v1, p1, :cond_4

    iget v2, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v1, v2, :cond_6

    :cond_4
    iget v1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-eq v1, p1, :cond_5

    iget v2, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ne v1, v2, :cond_6

    :cond_5
    iget p3, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-eq p3, p1, :cond_7

    iget p1, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-ne p3, p1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    const-string p1, "Audio can not be modified to match downstream format"

    invoke-direct {p0, p1, p2}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0

    :cond_7
    :goto_0
    return-object p0
.end method

.method private currentItemActualInputDurationUs()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    iget-object p0, p0, Landroidx/media3/transformer/SilentAudioGenerator;->audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private feedOutputFromInput()Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {p0}, Landroidx/media3/transformer/SilentAudioGenerator;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->shouldAppendSilence()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    :cond_3
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_4
    iget-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    return-object v1

    :cond_6
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->shouldAppendSilence()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    :cond_7
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private feedProcessingPipelineFromInput()Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v3, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    return v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->shouldAppendSilence()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    return v1

    :cond_3
    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    :cond_4
    return v2

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->shouldAppendSilence()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    return v1

    :cond_6
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    iput-boolean v1, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    return v2

    :cond_7
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v5, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    return v1
.end method

.method private getOutputInternal()Ljava/nio/ByteBuffer;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    if-nez v0, :cond_0

    sget-object p0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->feedOutputFromInput()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->feedProcessingPipelineFromInput()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private hasDataToOutput()Z
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private shouldAppendSilence()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemSilenceAppended:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->currentItemActualInputDurationUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public blockInput()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->inputBlocked:Z

    return-void
.end method

.method public flush()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->flush()V

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush()V

    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->queueEndOfStreamAfterSilence:Z

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-wide v1, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemSilenceAppended:Z

    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->isCurrentItemLast:Z

    return-void
.end method

.method public getInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->inputBlocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/decoder/DecoderInputBuffer;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->getOutputInternal()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->hasDataToOutput()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->configureForPendingMediaItemChange()V

    :cond_1
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p0
.end method

.method public getStartTimeUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEnded()Z
    .locals 6

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->hasDataToOutput()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->isCurrentItemLast:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Landroidx/media3/transformer/AudioGraphInput;->queueEndOfStreamAfterSilence:Z

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-nez v0, :cond_5

    iget-boolean p0, p0, Landroidx/media3/transformer/AudioGraphInput;->queueEndOfStreamAfterSilence:Z

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;Z)V
    .locals 7
    .param p4    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p4, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Could not generate silent audio because duration is unknown."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v0, p4}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    invoke-static {v0}, Landroidx/media3/transformer/AudioGraph;->isInputAudioFormatValid(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result v1

    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    :goto_1
    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    new-instance v6, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;-><init>(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;Z)V

    invoke-interface {p0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queueInputBuffer()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->inputBlocked:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v3, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->reset()V

    return-void
.end method

.method public unblockInput()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->inputBlocked:Z

    return-void
.end method
