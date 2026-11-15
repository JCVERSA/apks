.class final Landroidx/media3/transformer/VideoSampleExporter;
.super Landroidx/media3/transformer/SampleExporter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;,
        Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;
    }
.end annotation


# instance fields
.field private final encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

.field private volatile finalFramePresentationTimeUs:J

.field private hasMuxedTimestampZero:Z

.field private final initialTimestampOffsetUs:J

.field private lastMuxerInputBufferTimestampUs:J

.field private final videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/Format;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/common/util/Consumer;Landroidx/media3/transformer/FallbackListener;Landroidx/media3/common/DebugViewProvider;JZZI)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/transformer/TransformationRequest;",
            "Landroidx/media3/common/VideoCompositorSettings;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;",
            "Landroidx/media3/common/VideoFrameProcessor$Factory;",
            "Landroidx/media3/transformer/Codec$EncoderFactory;",
            "Landroidx/media3/transformer/MuxerWrapper;",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/transformer/ExportException;",
            ">;",
            "Landroidx/media3/transformer/FallbackListener;",
            "Landroidx/media3/common/DebugViewProvider;",
            "JZZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    invoke-direct {p0, v1, v3}, Landroidx/media3/transformer/SampleExporter;-><init>(Landroidx/media3/common/Format;Landroidx/media3/transformer/MuxerWrapper;)V

    move-wide/from16 v4, p12

    iput-wide v4, v0, Landroidx/media3/transformer/VideoSampleExporter;->initialTimestampOffsetUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    iput-wide v4, v0, Landroidx/media3/transformer/VideoSampleExporter;->lastMuxerInputBufferTimestampUs:J

    iget-object v4, v1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/ColorInfo;

    iget v5, v4, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v7, "image/jpeg_r"

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v5}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v5

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v5

    goto :goto_0

    :cond_0
    sget-object v5, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    new-instance v14, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v9

    invoke-virtual {v3, v6}, Landroidx/media3/transformer/MuxerWrapper;->getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    move-object v7, v14

    move-object/from16 v8, p7

    move/from16 v10, p15

    move-object/from16 v12, p3

    move-object/from16 v13, p10

    invoke-direct/range {v7 .. v13}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;-><init>(Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/common/Format;ZLjava/util/List;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/FallbackListener;)V

    iput-object v14, v0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    new-instance v1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v1, v0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v14}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getHdrModeAfterFallback()I

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    move-object v5, v1

    :cond_2
    :try_start_0
    new-instance v11, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    if-eqz p14, :cond_3

    new-instance v1, Landroidx/media3/transformer/TransformerMultipleInputVideoGraph$Factory;

    invoke-direct {v1, v2}, Landroidx/media3/transformer/TransformerMultipleInputVideoGraph$Factory;-><init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V

    :goto_1
    move-object v4, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    new-instance v1, Landroidx/media3/transformer/TransformerSingleInputVideoGraph$Factory;

    invoke-direct {v1, v2}, Landroidx/media3/transformer/TransformerSingleInputVideoGraph$Factory;-><init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V

    goto :goto_1

    :goto_2
    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p9

    move-object/from16 v7, p11

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p16

    invoke-direct/range {v1 .. v10}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;-><init>(Landroidx/media3/transformer/VideoSampleExporter;Landroid/content/Context;Landroidx/media3/transformer/TransformerVideoGraph$Factory;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/util/Consumer;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;I)V

    iput-object v11, v0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {v11}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->initialize()V
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    invoke-static {v0}, Landroidx/media3/transformer/ExportException;->createForVideoFrameProcessingException(Landroidx/media3/common/VideoFrameProcessingException;)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    throw v0
.end method

.method public static synthetic access$000(Landroidx/media3/transformer/VideoSampleExporter;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->initialTimestampOffsetUs:J

    return-wide v0
.end method

.method public static synthetic access$100(Landroidx/media3/transformer/VideoSampleExporter;)Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/transformer/VideoSampleExporter;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    return-wide v0
.end method

.method public static synthetic access$202(Landroidx/media3/transformer/VideoSampleExporter;J)J
    .locals 0

    iput-wide p1, p0, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    return-wide p1
.end method


# virtual methods
.method public getInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/GraphInput;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {p0, p3}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->createInput(I)Landroidx/media3/transformer/GraphInput;

    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroidx/media3/transformer/ExportException;->createForVideoFrameProcessingException(Landroidx/media3/common/VideoFrameProcessingException;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0
.end method

.method public getMuxerInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {v1}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getOutputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {v1}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->hasProducedFrameWithTimestampZero()Z

    move-result v1

    iget-boolean v2, p0, Landroidx/media3/transformer/VideoSampleExporter;->hasMuxedTimestampZero:Z

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_1

    iget-wide v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_1
    iget-object v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v1, v2}, Landroidx/media3/decoder/Buffer;->setFlags(I)V

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->lastMuxerInputBufferTimestampUs:J

    iget-object p0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    return-object p0
.end method

.method public getMuxerInputFormat()Landroidx/media3/common/Format;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {p0}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getOutputFormat()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public isMuxerInputEnded()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {p0}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->hasEncoderReleasedAllBuffersAfterEndOfStream()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->release()V

    iget-object p0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {p0}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->release()V

    return-void
.end method

.method public releaseMuxerInputBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->lastMuxerInputBufferTimestampUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->hasMuxedTimestampZero:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->releaseOutputBuffer(Z)V

    iget-object p0, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {p0}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->onEncoderBufferReleased()V

    return-void
.end method
