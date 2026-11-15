.class final Landroidx/media3/transformer/Mp4Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;
    }
.end annotation


# instance fields
.field public final audioFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final durationUs:J

.field public final firstSyncSampleTimestampUsAfterTimeUs:J

.field public final firstVideoSampleTimestampUs:J

.field public final isFirstVideoSampleAfterTimeUsSyncSample:Z

.field public final lastSyncSampleTimestampUs:J

.field public final videoFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(JJJJZLandroidx/media3/common/Format;Landroidx/media3/common/Format;)V
    .locals 0
    .param p10    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/transformer/Mp4Info;->durationUs:J

    iput-wide p3, p0, Landroidx/media3/transformer/Mp4Info;->lastSyncSampleTimestampUs:J

    iput-wide p5, p0, Landroidx/media3/transformer/Mp4Info;->firstVideoSampleTimestampUs:J

    iput-wide p7, p0, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    iput-boolean p9, p0, Landroidx/media3/transformer/Mp4Info;->isFirstVideoSampleAfterTimeUsSyncSample:Z

    iput-object p10, p0, Landroidx/media3/transformer/Mp4Info;->videoFormat:Landroidx/media3/common/Format;

    iput-object p11, p0, Landroidx/media3/transformer/Mp4Info;->audioFormat:Landroidx/media3/common/Format;

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Landroidx/media3/transformer/Mp4Info;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    invoke-static {p0, p1, v0, v1}, Landroidx/media3/transformer/Mp4Info;->create(Landroid/content/Context;Ljava/lang/String;J)Landroidx/media3/transformer/Mp4Info;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;J)Landroidx/media3/transformer/Mp4Info;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    .line 2
    const-string v3, "The MP4 file is invalid"

    new-instance v4, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v5, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 3
    new-instance v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;

    invoke-direct {v5}, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;-><init>()V

    .line 4
    new-instance v12, Landroidx/media3/datasource/DefaultDataSource;

    const/4 v13, 0x0

    move-object/from16 v6, p0

    invoke-direct {v12, v6, v13}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Z)V

    .line 5
    new-instance v6, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v6}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-virtual {v6, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v6

    .line 6
    :try_start_0
    invoke-virtual {v12, v6}, Landroidx/media3/datasource/DefaultDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v10

    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    const/4 v14, 0x1

    if-eqz v6, :cond_0

    move v6, v14

    goto :goto_0

    :cond_0
    move v6, v13

    .line 7
    :goto_0
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 8
    new-instance v15, Landroidx/media3/extractor/DefaultExtractorInput;

    const-wide/16 v8, 0x0

    move-object v6, v15

    move-object v7, v12

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    .line 9
    invoke-virtual {v4, v15}, Landroidx/media3/extractor/mp4/Mp4Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v6

    invoke-static {v6, v3}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 10
    invoke-virtual {v4, v5}, Landroidx/media3/extractor/mp4/Mp4Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 11
    new-instance v10, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v10}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    .line 12
    :goto_1
    iget-boolean v6, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->seekMapInitialized:Z

    const/4 v7, -0x1

    if-nez v6, :cond_5

    .line 13
    invoke-virtual {v4, v15, v10}, Landroidx/media3/extractor/mp4/Mp4Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v6

    if-ne v6, v14, :cond_2

    .line 14
    invoke-virtual {v12}, Landroidx/media3/datasource/DefaultDataSource;->close()V

    .line 15
    new-instance v6, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v6}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 16
    invoke-virtual {v6, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    iget-wide v7, v10, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 17
    invoke-virtual {v6, v7, v8}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v6

    .line 19
    invoke-virtual {v12, v6}, Landroidx/media3/datasource/DefaultDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    .line 20
    iget-wide v8, v10, Landroidx/media3/extractor/PositionHolder;->position:J

    add-long/2addr v6, v8

    :cond_1
    move-wide v15, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 21
    :goto_2
    new-instance v17, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-wide v8, v10, Landroidx/media3/extractor/PositionHolder;->position:J

    move-object/from16 v6, v17

    move-object v7, v12

    move-object/from16 v18, v10

    move-wide v10, v15

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    move-object/from16 v15, v17

    goto :goto_3

    :cond_2
    move-object/from16 v18, v10

    if-ne v6, v7, :cond_4

    .line 22
    iget-boolean v6, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->seekMapInitialized:Z

    if-eqz v6, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    move-object/from16 v10, v18

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {v4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getDurationUs()J

    move-result-wide v8

    .line 25
    iget v0, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    const/4 v3, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v7, :cond_c

    .line 26
    iget-object v0, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->trackTypeToTrackOutput:Ljava/util/Map;

    const/4 v6, 0x2

    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    .line 28
    iget-object v0, v0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->format:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    cmp-long v6, v8, v10

    if-eqz v6, :cond_6

    move v6, v14

    goto :goto_4

    :cond_6
    move v6, v13

    .line 29
    :goto_4
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 30
    iget v6, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    .line 31
    invoke-virtual {v4, v8, v9, v6}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v6

    .line 32
    iget-object v6, v6, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    move-wide v15, v8

    iget-wide v7, v6, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v6, v1, v10

    if-eqz v6, :cond_b

    .line 33
    iget v6, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    .line 34
    invoke-virtual {v4, v1, v2, v6}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v6

    .line 35
    iget-object v9, v6, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v10, v9, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v9, v1, v10

    if-nez v9, :cond_7

    goto :goto_5

    .line 36
    :cond_7
    iget-object v6, v6, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v10, v6, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v6, v1, v10

    if-gtz v6, :cond_8

    goto :goto_5

    :cond_8
    const-wide/high16 v10, -0x8000000000000000L

    .line 37
    :goto_5
    iget v6, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    .line 38
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSampleTimestampsUs(I)[J

    move-result-object v6

    .line 39
    array-length v9, v6

    if-lez v9, :cond_9

    .line 40
    aget-wide v17, v6, v13

    goto :goto_6

    :cond_9
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    :goto_6
    invoke-static {v6, v1, v2, v14, v13}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result v1

    .line 42
    array-length v2, v6

    if-ge v1, v2, :cond_a

    .line 43
    aget-wide v1, v6, v1

    cmp-long v1, v1, v10

    if-nez v1, :cond_a

    move-object/from16 v29, v0

    move-wide/from16 v22, v7

    move-wide/from16 v26, v10

    move/from16 v28, v14

    :goto_7
    move-wide/from16 v24, v17

    goto :goto_9

    :cond_a
    move-object/from16 v29, v0

    move-wide/from16 v22, v7

    move-wide/from16 v26, v10

    move/from16 v28, v13

    goto :goto_7

    :cond_b
    move-object/from16 v29, v0

    move-wide/from16 v22, v7

    move/from16 v28, v13

    :goto_8
    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_9

    :cond_c
    move-wide v15, v8

    move-object/from16 v29, v3

    move/from16 v28, v13

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8

    .line 44
    :goto_9
    iget v0, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->audioTrackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 45
    iget-object v0, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->trackTypeToTrackOutput:Ljava/util/Map;

    .line 46
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    .line 47
    iget-object v0, v0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->format:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    move-object/from16 v30, v0

    goto :goto_a

    :cond_d
    move-object/from16 v30, v3

    .line 48
    :goto_a
    new-instance v0, Landroidx/media3/transformer/Mp4Info;

    move-object/from16 v19, v0

    move-wide/from16 v20, v15

    invoke-direct/range {v19 .. v30}, Landroidx/media3/transformer/Mp4Info;-><init>(JJJJZLandroidx/media3/common/Format;Landroidx/media3/common/Format;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {v12}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 50
    invoke-virtual {v4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->release()V

    return-object v0

    .line 51
    :goto_b
    invoke-static {v12}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 52
    invoke-virtual {v4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->release()V

    .line 53
    throw v0
.end method
