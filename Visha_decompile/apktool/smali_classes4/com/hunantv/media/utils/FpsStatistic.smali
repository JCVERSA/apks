.class public Lcom/hunantv/media/utils/FpsStatistic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FPS_CALCULATE_TIME_S:I = 0x3


# instance fields
.field private volatile mFps:I

.field private volatile mFpsCounter:I

.field private volatile mFpsStar:Z

.field private volatile mFpsStartTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsCounter:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFps:I

    return-void
.end method

.method private resetFpsTimeAndCounter()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsStartTimeMs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsCounter:I

    return-void
.end method


# virtual methods
.method public getFps()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFps:I

    return p0
.end method

.method public onFrame()V
    .locals 6

    iget-boolean v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsStar:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsStartTimeMs:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsStartTimeMs:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    iget-wide v4, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsStartTimeMs:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    if-lez v0, :cond_2

    iget v1, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsCounter:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget v1, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsCounter:I

    div-int/2addr v1, v0

    iput v1, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFps:I

    :cond_1
    invoke-direct {p0}, Lcom/hunantv/media/utils/FpsStatistic;->resetFpsTimeAndCounter()V

    :cond_2
    return-void
.end method

.method public resetFps()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFps:I

    invoke-direct {p0}, Lcom/hunantv/media/utils/FpsStatistic;->resetFpsTimeAndCounter()V

    return-void
.end method

.method public startFps()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsStar:Z

    return-void
.end method

.method public stopFps()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/utils/FpsStatistic;->mFpsStar:Z

    invoke-direct {p0}, Lcom/hunantv/media/utils/FpsStatistic;->resetFpsTimeAndCounter()V

    return-void
.end method
