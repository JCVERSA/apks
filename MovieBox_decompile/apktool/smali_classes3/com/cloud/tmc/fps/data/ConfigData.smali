.class public final Lcom/cloud/tmc/fps/data/ConfigData;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/tmc/fps/data/ConfigData;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "grayScale",
        "",
        "jankThreshold",
        "",
        "traceInterval",
        "(FJJ)V",
        "getGrayScale",
        "()F",
        "setGrayScale",
        "(F)V",
        "getJankThreshold",
        "()J",
        "setJankThreshold",
        "(J)V",
        "getTraceInterval",
        "setTraceInterval",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "com.cloud.tmc.minifps"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private grayScale:F

.field private jankThreshold:J

.field private traceInterval:J


# direct methods
.method public constructor <init>(FJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/cloud/tmc/fps/data/ConfigData;->grayScale:F

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/cloud/tmc/fps/data/ConfigData;->jankThreshold:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/cloud/tmc/fps/data/ConfigData;->traceInterval:J

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/fps/data/ConfigData;FJJILjava/lang/Object;)Lcom/cloud/tmc/fps/data/ConfigData;
    .locals 2

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/cloud/tmc/fps/data/ConfigData;->grayScale:F

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lcom/cloud/tmc/fps/data/ConfigData;->jankThreshold:J

    .line 12
    .line 13
    :cond_1
    move-wide v0, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-wide p4, p0, Lcom/cloud/tmc/fps/data/ConfigData;->traceInterval:J

    .line 19
    .line 20
    :cond_2
    move-wide p6, p4

    .line 21
    move-object p2, p0

    .line 22
    move p3, p1

    .line 23
    move-wide p4, v0

    .line 24
    invoke-virtual/range {p2 .. p7}, Lcom/cloud/tmc/fps/data/ConfigData;->copy(FJJ)Lcom/cloud/tmc/fps/data/ConfigData;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/fps/data/ConfigData;->grayScale:F

    .line 2
    .line 3
    return v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/fps/data/ConfigData;->jankThreshold:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/fps/data/ConfigData;->traceInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(FJJ)Lcom/cloud/tmc/fps/data/ConfigData;
    .locals 7

    .line 1
    new-instance v6, Lcom/cloud/tmc/fps/data/ConfigData;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-wide v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/fps/data/ConfigData;-><init>(FJJ)V

    .line 8
    .line 9
    .line 10
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/fps/data/ConfigData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/tmc/fps/data/ConfigData;

    .line 12
    .line 13
    iget v1, p0, Lcom/cloud/tmc/fps/data/ConfigData;->grayScale:F

    .line 14
    .line 15
    iget v3, p1, Lcom/cloud/tmc/fps/data/ConfigData;->grayScale:F

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lcom/cloud/tmc/fps/data/ConfigData;->jankThreshold:J

    .line 25
    .line 26
    iget-wide v5, p1, Lcom/cloud/tmc/fps/data/ConfigData;->jankThreshold:J

    .line 27
    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-wide v3, p0, Lcom/cloud/tmc/fps/data/ConfigData;->traceInterval:J

    .line 34
    .line 35
    iget-wide v5, p1, Lcom/cloud/tmc/fps/data/ConfigData;->traceInterval:J

    .line 36
    .line 37
    cmp-long p1, v3, v5

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final getGrayScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/fps/data/ConfigData;->grayScale:F

    .line 2
    .line 3
    return v0
.end method

.method public final getJankThreshold()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/fps/data/ConfigData;->jankThreshold:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTraceInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/fps/data/ConfigData;->traceInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/cloud/tmc/fps/data/ConfigData;->grayScale:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/cloud/tmc/fps/data/ConfigData;->jankThreshold:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/cloud/tmc/fps/data/ConfigData;->traceInterval:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final setGrayScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/fps/data/ConfigData;->grayScale:F

    .line 2
    .line 3
    return-void
.end method

.method public final setJankThreshold(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/fps/data/ConfigData;->jankThreshold:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTraceInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/fps/data/ConfigData;->traceInterval:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/cloud/tmc/fps/data/ConfigData;->grayScale:F

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/cloud/tmc/fps/data/ConfigData;->jankThreshold:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/cloud/tmc/fps/data/ConfigData;->traceInterval:J

    .line 6
    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v6, "ConfigData(grayScale="

    .line 13
    .line 14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", jankThreshold="

    .line 21
    .line 22
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", traceInterval="

    .line 29
    .line 30
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
