.class public abstract Lcom/amazonaws/metrics/ByteThroughputProvider;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:J

.field private b:I

.field private final c:Lcom/amazonaws/metrics/ThroughputMetricType;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->c:Lcom/amazonaws/metrics/ThroughputMetricType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected d(IJ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    sub-long/2addr v2, p2

    .line 13
    add-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    .line 15
    .line 16
    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputProvider;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->c:Lcom/amazonaws/metrics/ThroughputMetricType;

    .line 6
    .line 7
    iget v2, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-wide v3, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    .line 14
    .line 15
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x4

    .line 20
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v0, v4, v5

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v4, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-object v2, v4, v0

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    aput-object v3, v4, v0

    .line 33
    .line 34
    const-string v0, "providerId=%s, throughputType=%s, byteCount=%d, duration=%d"

    .line 35
    .line 36
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
