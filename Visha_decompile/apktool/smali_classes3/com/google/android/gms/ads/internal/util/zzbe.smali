.class public final Lcom/google/android/gms/ads/internal/util/zzbe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:D

.field public final zzc:D

.field public final zzd:D

.field public final zze:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzc:D

    iput-wide p4, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzb:D

    iput-wide p6, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzd:D

    iput p8, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zze:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/util/zzbe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/ads/internal/util/zzbe;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/zzbe;->zza:Ljava/lang/String;

    invoke-static {v0, v2}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzb:D

    iget-wide v4, p1, Lcom/google/android/gms/ads/internal/util/zzbe;->zzb:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzc:D

    iget-wide v4, p1, Lcom/google/android/gms/ads/internal/util/zzbe;->zzc:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zze:I

    iget v2, p1, Lcom/google/android/gms/ads/internal/util/zzbe;->zze:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzd:D

    iget-wide p0, p1, Lcom/google/android/gms/ads/internal/util/zzbe;->zzd:D

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zza:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzb:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzc:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzd:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget p0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zze:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljc7;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljc7;->c(Ljava/lang/Object;)Ljc7$a;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljc7$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljc7$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzc:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "minBound"

    invoke-virtual {v0, v2, v1}, Ljc7$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljc7$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzb:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "maxBound"

    invoke-virtual {v0, v2, v1}, Ljc7$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljc7$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzd:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "percent"

    invoke-virtual {v0, v2, v1}, Ljc7$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljc7$a;

    move-result-object v0

    iget p0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zze:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "count"

    invoke-virtual {v0, v1, p0}, Ljc7$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljc7$a;

    move-result-object p0

    invoke-virtual {p0}, Ljc7$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
