.class public Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.super Lcom/amazonaws/metrics/SimpleMetricType;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/metrics/ServiceMetricType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
    }
.end annotation


# static fields
.field public static final b:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final c:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final d:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final e:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field private static final f:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;

    .line 2
    .line 3
    const-string v1, "DownloadThroughput"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 13
    .line 14
    new-instance v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 15
    .line 16
    const-string v2, "DownloadByteCount"

    .line 17
    .line 18
    invoke-static {v2}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->c:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 26
    .line 27
    new-instance v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;

    .line 28
    .line 29
    const-string v3, "UploadThroughput"

    .line 30
    .line 31
    invoke-static {v3}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v2, v3}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->d:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 39
    .line 40
    new-instance v3, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 41
    .line 42
    const-string v4, "UploadByteCount"

    .line 43
    .line 44
    invoke-static {v4}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v3, v4}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v3, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->e:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    new-array v4, v4, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    aput-object v0, v4, v5

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    aput-object v1, v4, v0

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    aput-object v2, v4, v0

    .line 64
    .line 65
    const/4 v0, 0x3

    .line 66
    aput-object v3, v4, v0

    .line 67
    .line 68
    sput-object v4, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->f:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 69
    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/amazonaws/metrics/SimpleMetricType;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "S3"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static b()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->f:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
