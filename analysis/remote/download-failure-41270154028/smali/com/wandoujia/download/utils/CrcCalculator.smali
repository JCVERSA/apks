.class public Lcom/wandoujia/download/utils/CrcCalculator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/utils/CrcCalculator$CrcVerifiedException;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/zip/Checksum;

.field public c:I

.field public d:J

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/util/List;JJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->b:Ljava/util/zip/Checksum;

    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->f:Z

    iput-object p1, p0, Lcom/wandoujia/download/utils/CrcCalculator;->a:Ljava/util/List;

    long-to-double v0, p2

    long-to-double v2, p4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/wandoujia/download/utils/CrcCalculator;->c:I

    iput-wide p2, p0, Lcom/wandoujia/download/utils/CrcCalculator;->d:J

    iput-wide p4, p0, Lcom/wandoujia/download/utils/CrcCalculator;->e:J

    return-void
.end method


# virtual methods
.method public a([BI)V
    .locals 10

    iget-wide v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->d:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->d:J

    iget-boolean v2, p0, Lcom/wandoujia/download/utils/CrcCalculator;->f:Z

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/wandoujia/download/utils/CrcCalculator;->c:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/wandoujia/download/utils/CrcCalculator;->e:J

    mul-long v3, v3, v5

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/wandoujia/download/utils/CrcCalculator;->c:I

    int-to-long v4, v3

    iget-wide v6, p0, Lcom/wandoujia/download/utils/CrcCalculator;->e:J

    mul-long v4, v4, v6

    const/4 v8, 0x0

    cmp-long v9, v0, v4

    if-ltz v9, :cond_4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/wandoujia/download/utils/CrcCalculator;->b:Ljava/util/zip/Checksum;

    int-to-long v3, v3

    mul-long v3, v3, v6

    sub-long/2addr v0, v3

    long-to-int v1, v0

    sub-int v0, p2, v1

    invoke-interface {v2, p1, v8, v0}, Ljava/util/zip/Checksum;->update([BII)V

    iget-object v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download/utils/CrcCalculator;->a:Ljava/util/List;

    iget v2, p0, Lcom/wandoujia/download/utils/CrcCalculator;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/download/model/SegmentInfo;

    invoke-virtual {v1}, Lcom/wandoujia/download/model/SegmentInfo;->getCrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->reset()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/wandoujia/download/utils/CrcCalculator$CrcVerifiedException;

    const-string p2, "crc result not equals the given one"

    invoke-direct {p1, p2}, Lcom/wandoujia/download/utils/CrcCalculator$CrcVerifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-boolean v8, p0, Lcom/wandoujia/download/utils/CrcCalculator;->f:Z

    iget-wide v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->d:J

    iget v2, p0, Lcom/wandoujia/download/utils/CrcCalculator;->c:I

    int-to-long v3, v2

    iget-wide v5, p0, Lcom/wandoujia/download/utils/CrcCalculator;->e:J

    mul-long v3, v3, v5

    cmp-long v7, v0, v3

    if-eqz v7, :cond_3

    iget-object v3, p0, Lcom/wandoujia/download/utils/CrcCalculator;->b:Ljava/util/zip/Checksum;

    int-to-long v7, v2

    mul-long v7, v7, v5

    sub-long v7, v0, v7

    long-to-int v4, v7

    sub-int/2addr p2, v4

    int-to-long v7, v2

    mul-long v7, v7, v5

    sub-long/2addr v0, v7

    long-to-int v1, v0

    invoke-interface {v3, p1, p2, v1}, Ljava/util/zip/Checksum;->update([BII)V

    :cond_3
    iget p1, p0, Lcom/wandoujia/download/utils/CrcCalculator;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/wandoujia/download/utils/CrcCalculator;->c:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/wandoujia/download/utils/CrcCalculator;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, v8, p2}, Ljava/util/zip/Checksum;->update([BII)V

    :goto_1
    return-void
.end method
