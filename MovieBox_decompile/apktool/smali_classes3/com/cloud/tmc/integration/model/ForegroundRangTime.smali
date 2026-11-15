.class public final Lcom/cloud/tmc/integration/model/ForegroundRangTime;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/ForegroundRangTime;",
        "",
        "startTime",
        "",
        "endTime",
        "costTime",
        "foregroundStartCount",
        "",
        "foregroundRandomId",
        "",
        "(JJJILjava/lang/String;)V",
        "getCostTime",
        "()J",
        "getEndTime",
        "getForegroundRandomId",
        "()Ljava/lang/String;",
        "getForegroundStartCount",
        "()I",
        "getStartTime",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "com.cloud.tmc.integration"
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
.field private final costTime:J

.field private final endTime:J

.field private final foregroundRandomId:Ljava/lang/String;

.field private final foregroundStartCount:I

.field private final startTime:J


# direct methods
.method public constructor <init>(JJJILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "foregroundRandomId"

    .line 2
    .line 3
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    .line 10
    .line 11
    iput-wide p3, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    .line 12
    .line 13
    iput-wide p5, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    .line 14
    .line 15
    iput p7, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    .line 16
    .line 17
    iput-object p8, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/ForegroundRangTime;JJJILjava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/integration/model/ForegroundRangTime;
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    and-int/lit8 v1, p9, 0x1

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v1, p1

    .line 10
    :goto_0
    and-int/lit8 v3, p9, 0x2

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    iget-wide v3, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-wide v3, p3

    .line 18
    :goto_1
    and-int/lit8 v5, p9, 0x4

    .line 19
    .line 20
    if-eqz v5, :cond_2

    .line 21
    .line 22
    iget-wide v5, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-wide v5, p5

    .line 26
    :goto_2
    and-int/lit8 v7, p9, 0x8

    .line 27
    .line 28
    if-eqz v7, :cond_3

    .line 29
    .line 30
    iget v7, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move/from16 v7, p7

    .line 34
    .line 35
    :goto_3
    and-int/lit8 v8, p9, 0x10

    .line 36
    .line 37
    if-eqz v8, :cond_4

    .line 38
    .line 39
    iget-object v8, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_4
    move-object/from16 v8, p8

    .line 43
    .line 44
    :goto_4
    move-wide p1, v1

    .line 45
    move-wide p3, v3

    .line 46
    move-wide p5, v5

    .line 47
    move/from16 p7, v7

    .line 48
    .line 49
    move-object/from16 p8, v8

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p8}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->copy(JJJILjava/lang/String;)Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(JJJILjava/lang/String;)Lcom/cloud/tmc/integration/model/ForegroundRangTime;
    .locals 10

    .line 1
    const-string v0, "foregroundRandomId"

    .line 2
    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    move-wide v2, p1

    .line 12
    move-wide v4, p3

    .line 13
    move-wide v6, p5

    .line 14
    move/from16 v8, p7

    .line 15
    .line 16
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;-><init>(JJJILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
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
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;

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
    check-cast p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    .line 23
    .line 24
    iget-wide v5, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    .line 32
    .line 33
    iget-wide v5, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    .line 41
    .line 42
    iget v3, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    .line 43
    .line 44
    if-eq v1, v3, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    return v0
.end method

.method public final getCostTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getForegroundRandomId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getForegroundStartCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

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
    iget-wide v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

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
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    .line 6
    .line 7
    iget v6, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    .line 8
    .line 9
    iget-object v7, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v9, "ForegroundRangTime(startTime="

    .line 17
    .line 18
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", endTime="

    .line 25
    .line 26
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", costTime="

    .line 33
    .line 34
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", foregroundStartCount="

    .line 41
    .line 42
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", foregroundRandomId="

    .line 49
    .line 50
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
