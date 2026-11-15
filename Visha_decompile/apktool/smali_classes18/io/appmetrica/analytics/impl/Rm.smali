.class public final Lio/appmetrica/analytics/impl/Rm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage$Entry;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:[B


# direct methods
.method public constructor <init>(JLjava/lang/String;J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Rm;->a:J

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Rm;->b:Ljava/lang/String;

    iput-wide p4, p0, Lio/appmetrica/analytics/impl/Rm;->c:J

    iput-object p6, p0, Lio/appmetrica/analytics/impl/Rm;->d:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lio/appmetrica/analytics/impl/Rm;

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    if-eqz p1, :cond_6

    check-cast p1, Lio/appmetrica/analytics/impl/Rm;

    iget-wide v2, p0, Lio/appmetrica/analytics/impl/Rm;->a:J

    iget-wide v4, p1, Lio/appmetrica/analytics/impl/Rm;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rm;->b:Ljava/lang/String;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Rm;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lio/appmetrica/analytics/impl/Rm;->c:J

    iget-wide v4, p1, Lio/appmetrica/analytics/impl/Rm;->c:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->d:[B

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Rm;->d:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type io.appmetrica.analytics.impl.db.storage.TempCacheEntry"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getData()[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->d:[B

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Rm;->a:J

    return-wide v0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Rm;->c:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Rm;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rm;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lio/appmetrica/analytics/impl/Rm;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->d:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TempCacheEntry(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Rm;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scope=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Rm;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", data=array["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->d:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "])"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
