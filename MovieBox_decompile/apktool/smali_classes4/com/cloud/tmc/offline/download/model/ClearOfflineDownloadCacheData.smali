.class public final Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "clear",
        "",
        "intervalTime",
        "",
        "(ZJ)V",
        "getClear",
        "()Z",
        "getIntervalTime",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "com.cloud.tmc.offline_download"
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
.field private final clear:Z

.field private final intervalTime:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;-><init>(ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->clear:Z

    iput-wide p2, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->intervalTime:J

    return-void
.end method

.method public synthetic constructor <init>(ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;-><init>(ZJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;ZJILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->clear:Z

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->intervalTime:J

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->copy(ZJ)Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->clear:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->intervalTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(ZJ)Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;-><init>(ZJ)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;

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
    check-cast p1, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->clear:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->clear:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->intervalTime:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->intervalTime:J

    .line 23
    .line 24
    cmp-long p1, v3, v5

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    return v0
.end method

.method public final getClear()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->clear:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getIntervalTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->intervalTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->clear:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->intervalTime:J

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->clear:Z

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->intervalTime:J

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v4, "ClearOfflineDownloadCacheData(clear="

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", intervalTime="

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
