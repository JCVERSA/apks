.class public final Lorg/libtorrent4j/SessionStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/SessionStats$Average;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_IP_PROTOCOL:I = 0x5

.field private static final DOWNLOAD_PAYLOAD:I = 0x3

.field private static final DOWNLOAD_PROTOCOL:I = 0x4

.field private static final NUM_AVERAGES:I = 0x6

.field private static final UPLOAD_IP_PROTOCOL:I = 0x2

.field private static final UPLOAD_PAYLOAD:I = 0x0

.field private static final UPLOAD_PROTOCOL:I = 0x1


# instance fields
.field private dhtNodes:J

.field private lastTickTime:J

.field private final stat:[Lorg/libtorrent4j/SessionStats$Average;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/libtorrent4j/SessionStats$Average;

    iput-object v0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lorg/libtorrent4j/SessionStats$Average;

    invoke-direct {v2}, Lorg/libtorrent4j/SessionStats$Average;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tick(J)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/libtorrent4j/SessionStats$Average;->tick(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/libtorrent4j/SessionStats$Average;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/libtorrent4j/SessionStats;->dhtNodes:J

    return-void
.end method

.method public dhtNodes()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/SessionStats;->dhtNodes:J

    return-wide v0
.end method

.method public downloadRate()J
    .locals 4

    iget-object v0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/libtorrent4j/SessionStats$Average;->rate()J

    move-result-wide v0

    iget-object v2, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/libtorrent4j/SessionStats$Average;->rate()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v2, 0x5

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats$Average;->rate()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public totalDownload()J
    .locals 4

    iget-object v0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v0

    iget-object v2, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v2, 0x5

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public totalUpload()J
    .locals 4

    iget-object v0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v0

    iget-object v2, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public update(Lorg/libtorrent4j/alerts/SessionStatsAlert;)V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/libtorrent4j/SessionStats;->lastTickTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lorg/libtorrent4j/SessionStats;->lastTickTime:J

    sget v0, Lorg/libtorrent4j/StatsMetric;->NET_RECV_BYTES_COUNTER_INDEX:I

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/alerts/SessionStatsAlert;->value(I)J

    move-result-wide v0

    sget v4, Lorg/libtorrent4j/StatsMetric;->NET_RECV_PAYLOAD_BYTES_COUNTER_INDEX:I

    invoke-virtual {p1, v4}, Lorg/libtorrent4j/alerts/SessionStatsAlert;->value(I)J

    move-result-wide v4

    sub-long/2addr v0, v4

    sget v6, Lorg/libtorrent4j/StatsMetric;->NET_RECV_IP_OVERHEAD_BYTES_COUNTER_INDEX:I

    invoke-virtual {p1, v6}, Lorg/libtorrent4j/alerts/SessionStatsAlert;->value(I)J

    move-result-wide v6

    iget-object v8, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v10

    sub-long/2addr v4, v10

    iget-object v8, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v10, 0x4

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v11

    sub-long/2addr v0, v11

    iget-object v8, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v11, 0x5

    aget-object v8, v8, v11

    invoke-virtual {v8}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v12

    sub-long/2addr v6, v12

    iget-object v8, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    aget-object v8, v8, v9

    invoke-virtual {v8, v4, v5}, Lorg/libtorrent4j/SessionStats$Average;->add(J)V

    iget-object v4, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    aget-object v4, v4, v10

    invoke-virtual {v4, v0, v1}, Lorg/libtorrent4j/SessionStats$Average;->add(J)V

    iget-object v0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    aget-object v0, v0, v11

    invoke-virtual {v0, v6, v7}, Lorg/libtorrent4j/SessionStats$Average;->add(J)V

    sget v0, Lorg/libtorrent4j/StatsMetric;->NET_SENT_BYTES_COUNTER_INDEX:I

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/alerts/SessionStatsAlert;->value(I)J

    move-result-wide v0

    sget v4, Lorg/libtorrent4j/StatsMetric;->NET_SENT_PAYLOAD_BYTES_COUNTER_INDEX:I

    invoke-virtual {p1, v4}, Lorg/libtorrent4j/alerts/SessionStatsAlert;->value(I)J

    move-result-wide v4

    sub-long/2addr v0, v4

    sget v6, Lorg/libtorrent4j/StatsMetric;->NET_SENT_IP_OVERHEAD_BYTES_COUNTER_INDEX:I

    invoke-virtual {p1, v6}, Lorg/libtorrent4j/alerts/SessionStatsAlert;->value(I)J

    move-result-wide v6

    iget-object v8, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v10

    sub-long/2addr v4, v10

    iget-object v8, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v11

    sub-long/2addr v0, v11

    iget-object v8, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v11, 0x2

    aget-object v8, v8, v11

    invoke-virtual {v8}, Lorg/libtorrent4j/SessionStats$Average;->total()J

    move-result-wide v12

    sub-long/2addr v6, v12

    iget-object v8, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    aget-object v8, v8, v9

    invoke-virtual {v8, v4, v5}, Lorg/libtorrent4j/SessionStats$Average;->add(J)V

    iget-object v4, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    aget-object v4, v4, v10

    invoke-virtual {v4, v0, v1}, Lorg/libtorrent4j/SessionStats$Average;->add(J)V

    iget-object v0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    aget-object v0, v0, v11

    invoke-virtual {v0, v6, v7}, Lorg/libtorrent4j/SessionStats$Average;->add(J)V

    invoke-direct {p0, v2, v3}, Lorg/libtorrent4j/SessionStats;->tick(J)V

    sget v0, Lorg/libtorrent4j/StatsMetric;->DHT_NODES_GAUGE_INDEX:I

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/alerts/SessionStatsAlert;->value(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/libtorrent4j/SessionStats;->dhtNodes:J

    return-void
.end method

.method public uploadRate()J
    .locals 4

    iget-object v0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/libtorrent4j/SessionStats$Average;->rate()J

    move-result-wide v0

    iget-object v2, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/libtorrent4j/SessionStats$Average;->rate()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/libtorrent4j/SessionStats;->stat:[Lorg/libtorrent4j/SessionStats$Average;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats$Average;->rate()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
