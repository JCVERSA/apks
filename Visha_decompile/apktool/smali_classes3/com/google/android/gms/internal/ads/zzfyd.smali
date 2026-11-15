.class final Lcom/google/android/gms/internal/ads/zzfyd;
.super Lcom/google/android/gms/internal/ads/zzfuy;
.source "SourceFile"


# instance fields
.field final transient zza:Lk3i;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lk3i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfuy;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfyd;->zza:Lk3i;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfyd;->zza:Lk3i;

    invoke-interface {p0}, Lk3i;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final zzj()Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzk()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final zzl()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzm()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
