.class public final Ljaj;
.super Lcom/google/android/gms/ads/internal/util/client/zzw;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/client/zzw;-><init>()V

    iput p1, p0, Ljaj;->a:I

    iput p2, p0, Ljaj;->b:I

    iput-boolean p3, p0, Ljaj;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/ads/internal/util/client/zzw;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/ads/internal/util/client/zzw;

    iget v1, p0, Ljaj;->a:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zzb()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljaj;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zza()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean p0, p0, Ljaj;->c:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zzc()Z

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Ljaj;->c:Z

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v0, 0x4cf

    :goto_0
    iget v1, p0, Ljaj;->a:I

    iget p0, p0, Ljaj;->b:I

    const v2, 0xf4243

    xor-int/2addr v1, v2

    mul-int/2addr v1, v2

    xor-int/2addr p0, v1

    mul-int/2addr p0, v2

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflineAdConfig{impressionPrerequisite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljaj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickPrerequisite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljaj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationFlowEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ljaj;->c:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Ljaj;->b:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Ljaj;->a:I

    return p0
.end method

.method public final zzc()Z
    .locals 0

    iget-boolean p0, p0, Ljaj;->c:Z

    return p0
.end method
