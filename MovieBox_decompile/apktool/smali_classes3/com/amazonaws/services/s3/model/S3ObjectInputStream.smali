.class public Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "source.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->m(Ljava/io/InputStream;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/amazonaws/metrics/MetricFilterInputStream;

    .line 8
    .line 9
    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/amazonaws/metrics/MetricFilterInputStream;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "FYI"

    .line 15
    .line 16
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private static m(Ljava/io/InputStream;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isMetricsEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    instance-of v0, p0, Lcom/amazonaws/internal/MetricAware;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p0, Lcom/amazonaws/internal/MetricAware;

    .line 15
    .line 16
    invoke-interface {p0}, Lcom/amazonaws/internal/MetricAware;->d()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    xor-int/2addr p0, v1

    .line 21
    return p0

    .line 22
    :cond_1
    return v1
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :cond_0
    return v0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public read()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a:Z

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a:Z

    :cond_0
    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a:Z

    .line 6
    .line 7
    return-void
.end method
