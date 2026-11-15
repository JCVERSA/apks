.class public final Lio/appmetrica/analytics/impl/zg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigMetaInfo;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/zg;->a:J

    iput-wide p3, p0, Lio/appmetrica/analytics/impl/zg;->b:J

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/zg;JJILjava/lang/Object;)Lio/appmetrica/analytics/impl/zg;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 3
    iget-wide p1, p0, Lio/appmetrica/analytics/impl/zg;->a:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 4
    iget-wide p3, p0, Lio/appmetrica/analytics/impl/zg;->b:J

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p0, Lio/appmetrica/analytics/impl/zg;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/zg;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/zg;->a:J

    return-wide v0
.end method

.method public final a(JJ)Lio/appmetrica/analytics/impl/zg;
    .locals 0

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/zg;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/zg;-><init>(JJ)V

    return-object p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/zg;->b:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/impl/zg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/impl/zg;

    iget-wide v3, p0, Lio/appmetrica/analytics/impl/zg;->a:J

    iget-wide v5, p1, Lio/appmetrica/analytics/impl/zg;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lio/appmetrica/analytics/impl/zg;->b:J

    iget-wide p0, p1, Lio/appmetrica/analytics/impl/zg;->b:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFirstSendTime()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/zg;->a:J

    return-wide v0
.end method

.method public final getLastUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/zg;->b:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/zg;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/zg;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteConfigMetaInfoModel(firstSendTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/zg;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/zg;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
