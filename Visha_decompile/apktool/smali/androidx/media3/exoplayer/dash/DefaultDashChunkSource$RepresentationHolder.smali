.class public final Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepresentationHolder"
.end annotation


# instance fields
.field final chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final periodDurationUs:J

.field public final representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

.field public final segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final segmentNumShift:J

.field public final selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;


# direct methods
.method public constructor <init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V
    .locals 0
    .param p5    # Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/media3/exoplayer/dash/DashSegmentIndex;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iput-object p3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    iput-object p4, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    iput-wide p6, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    iput-object p5, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    iput-object p8, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    return-wide v0
.end method


# virtual methods
.method public copyWithNewRepresentation(JLandroidx/media3/exoplayer/dash/manifest/Representation;)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 19
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/source/BehindLiveWindowException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/dash/manifest/Representation;->getIndex()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/exoplayer/dash/manifest/Representation;->getIndex()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v9

    if-nez v8, :cond_0

    new-instance v9, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v6, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v0, v9

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v9

    :cond_0
    invoke-interface {v8}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v10, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v6, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v0, v10

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v10

    :cond_1
    invoke-interface {v8, v1, v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    new-instance v10, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v6, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v0, v10

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v10

    :cond_2
    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v5

    invoke-interface {v8, v5, v6}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v10

    add-long/2addr v3, v5

    const-wide/16 v12, 0x1

    sub-long v12, v3, v12

    invoke-interface {v8, v12, v13}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v14

    invoke-interface {v8, v12, v13, v1, v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v12

    add-long/2addr v14, v12

    invoke-interface {v9}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v12

    move-object/from16 v16, v8

    invoke-interface {v9, v12, v13}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v7

    move-wide/from16 v17, v5

    iget-wide v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    cmp-long v14, v14, v7

    if-nez v14, :cond_3

    :goto_0
    sub-long/2addr v3, v12

    add-long/2addr v5, v3

    :goto_1
    move-wide v6, v5

    goto :goto_2

    :cond_3
    if-ltz v14, :cond_5

    cmp-long v3, v7, v10

    if-gez v3, :cond_4

    invoke-interface {v9, v10, v11, v1, v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v3

    sub-long v3, v3, v17

    sub-long/2addr v5, v3

    goto :goto_1

    :cond_4
    move-object/from16 v3, v16

    invoke-interface {v3, v7, v8, v1, v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v3

    goto :goto_0

    :goto_2
    new-instance v10, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    move-object v0, v10

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v10

    :cond_5
    new-instance v0, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    throw v0
.end method

.method public copyWithNewSegmentIndex(Landroidx/media3/exoplayer/dash/DashSegmentIndex;)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 10
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    new-instance v9, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iget-object v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v6, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v9
.end method

.method public copyWithNewSelectedBaseUrl(Landroidx/media3/exoplayer/dash/manifest/BaseUrl;)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 10
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    new-instance v9, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iget-object v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v6, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    iget-object v8, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v9
.end method

.method public getFirstAvailableSegmentNum(J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v1, v2, p1, p2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-interface {v0}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastAvailableSegmentNum(J)J
    .locals 5

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v2, v3, v4, p1, p2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide p0

    add-long/2addr v0, p0

    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public getSegmentCount()J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentEndTimeUs(J)J
    .locals 5

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v2, p1, p2, v3, v4}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getSegmentNum(J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getSegmentStartTimeUs(J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSegmentUrl(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getSegmentUrl(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p0

    return-object p0
.end method

.method public isSegmentAvailableAtFullNetworkSpeed(JJ)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    invoke-interface {v0}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide p0

    cmp-long p0, p0, p3

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
