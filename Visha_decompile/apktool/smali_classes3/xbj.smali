.class public final Lxbj;
.super Lcom/google/android/gms/ads/internal/util/client/zzx;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:D

.field public final d:Z


# direct methods
.method public constructor <init>(IIDZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/client/zzx;-><init>()V

    iput p1, p0, Lxbj;->a:I

    iput p2, p0, Lxbj;->b:I

    iput-wide p3, p0, Lxbj;->c:D

    iput-boolean p5, p0, Lxbj;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/ads/internal/util/client/zzx;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/ads/internal/util/client/zzx;

    iget v1, p0, Lxbj;->a:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzc()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lxbj;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzb()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lxbj;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zza()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lxbj;->d:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzd()Z

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lxbj;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    xor-long/2addr v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lxbj;->d:Z

    if-eq v2, v3, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    iget v3, p0, Lxbj;->a:I

    iget p0, p0, Lxbj;->b:I

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v3, v1

    mul-int/2addr v3, v1

    xor-int/2addr p0, v3

    mul-int/2addr p0, v1

    xor-int/2addr p0, v0

    mul-int/2addr p0, v1

    xor-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PingStrategy{maxAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lxbj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initialBackoffMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lxbj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backoffMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lxbj;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bufferAfterMaxAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lxbj;->d:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()D
    .locals 2

    iget-wide v0, p0, Lxbj;->c:D

    return-wide v0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lxbj;->b:I

    return p0
.end method

.method public final zzc()I
    .locals 0

    iget p0, p0, Lxbj;->a:I

    return p0
.end method

.method public final zzd()Z
    .locals 0

    iget-boolean p0, p0, Lxbj;->d:Z

    return p0
.end method
