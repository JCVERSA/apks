.class final Landroidx/media3/transformer/AudioGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/AudioGraph$InputInfo;
    }
.end annotation


# instance fields
.field private final audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field private finishedInputs:I

.field private final inputInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/transformer/AudioGraph$InputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isMixerConfigured:Z

.field private isMixerReady:Z

.field private final mixer:Landroidx/media3/transformer/AudioMixer;

.field private mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private mixerOutput:Ljava/nio/ByteBuffer;

.field private pendingStartTimeUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/AudioMixer$Factory;Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/transformer/AudioMixer$Factory;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {p1}, Landroidx/media3/transformer/AudioMixer$Factory;->create()Landroidx/media3/transformer/AudioMixer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object p1, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    new-instance p1, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-direct {p1, p2}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    return-void
.end method

.method private ensureMixerReady()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerConfigured:Z

    const/4 v2, -0x1

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    iget-object v3, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-wide v4, p0, Landroidx/media3/transformer/AudioGraph;->pendingStartTimeUs:J

    invoke-interface {v0, v3, v2, v4, v5}, Landroidx/media3/transformer/AudioMixer;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;IJ)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v1, p0, Landroidx/media3/transformer/AudioGraph;->isMixerConfigured:Z

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error while configuring mixer"

    invoke-static {p0, v0}, Landroidx/media3/transformer/ExportException;->createForAudioProcessing(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v3, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/AudioGraph$InputInfo;

    iget v4, v3, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    if-eq v4, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v3, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    :try_start_1
    invoke-virtual {v4}, Landroidx/media3/transformer/AudioGraphInput;->getOutput()Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Landroidx/media3/transformer/AudioGraphInput;->getStartTimeUs()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v5, v7

    if-nez v7, :cond_3

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_3
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-virtual {v4}, Landroidx/media3/transformer/AudioGraphInput;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v4

    invoke-interface {v7, v4, v5, v6}, Landroidx/media3/transformer/AudioMixer;->addSource(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;J)I

    move-result v4

    iput v4, v3, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I
    :try_end_1
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled format while adding source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/transformer/ExportException;->createForAudioProcessing(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0

    :cond_5
    iget-boolean p0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    return p0
.end method

.method private feedMixer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/AudioGraph$InputInfo;

    invoke-direct {p0, v1}, Landroidx/media3/transformer/AudioGraph;->feedMixerFromInput(Landroidx/media3/transformer/AudioGraph$InputInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private feedMixerFromInput(Landroidx/media3/transformer/AudioGraph$InputInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    iget v0, p1, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v1, v0}, Landroidx/media3/transformer/AudioMixer;->hasSource(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraphInput;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v1, v0}, Landroidx/media3/transformer/AudioMixer;->removeSource(I)V

    const/4 v0, -0x1

    iput v0, p1, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    iget p1, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    return-void

    :cond_1
    :try_start_0
    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraphInput;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroidx/media3/transformer/AudioMixer;->queueInput(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioGraphInput (sourceId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") reconfiguration"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/transformer/ExportException;->createForAudioProcessing(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0
.end method

.method private feedProcessingPipelineFromMixer()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->isMixerEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static isInputAudioFormatValid(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z
    .locals 3

    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ne p0, v2, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isMixerEnded()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {p0}, Landroidx/media3/transformer/AudioMixer;->isEnded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public blockInput()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/AudioGraph$InputInfo;

    iget-object v1, v1, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraphInput;->blockInput()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/AudioGraph$InputInfo;

    const/4 v3, -0x1

    iput v3, v2, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    iget-object v2, v2, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-virtual {v2}, Landroidx/media3/transformer/AudioGraphInput;->flush()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v1}, Landroidx/media3/transformer/AudioMixer;->reset()V

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerConfigured:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush()V

    iput v0, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->ensureMixerReady()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v0}, Landroidx/media3/transformer/AudioMixer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->feedMixer()V

    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v0}, Landroidx/media3/transformer/AudioMixer;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->feedProcessingPipelineFromMixer()V

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method public isEnded()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->isMixerEnded()Z

    move-result p0

    return p0
.end method

.method public registerInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    iget v0, p2, Landroidx/media3/common/Format;->pcmEncoding:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    :try_start_0
    new-instance v0, Landroidx/media3/transformer/AudioGraphInput;

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/transformer/AudioGraphInput;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)V

    iget-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraphInput;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v1, p1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object p1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush()V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    new-instance p1, Landroidx/media3/transformer/AudioGraph$InputInfo;

    invoke-direct {p1, v0}, Landroidx/media3/transformer/AudioGraph$InputInfo;-><init>(Landroidx/media3/transformer/AudioGraphInput;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "%s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    const-string v1, "AudioGraph"

    const-string v2, "RegisterNewInputStream"

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static/range {v1 .. v6}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while registering input "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/media3/transformer/ExportException;->createForAudioProcessing(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/AudioGraph$InputInfo;

    iget-object v2, v2, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-virtual {v2}, Landroidx/media3/transformer/AudioGraphInput;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v1}, Landroidx/media3/transformer/AudioMixer;->reset()V

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->reset()V

    iput v0, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-void
.end method

.method public setPendingStartTimeUs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/transformer/AudioGraph;->pendingStartTimeUs:J

    return-void
.end method

.method public unblockInput()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/AudioGraph$InputInfo;

    iget-object v1, v1, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraphInput;->unblockInput()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
