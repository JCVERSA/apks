.class final Lcom/google/android/gms/internal/ads/zzfjq;
.super Lcom/google/android/gms/internal/ads/zzbwj;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/n8;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbwd;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/a6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/a6;Lcom/google/android/gms/internal/ads/n8;Lcom/google/android/gms/internal/ads/zzbwd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/n8;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzb:Lcom/google/android/gms/internal/ads/zzbwd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzc:Lcom/google/android/gms/internal/ads/a6;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbwj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(I)V
    .locals 0

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->zzb()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzc:Lcom/google/android/gms/internal/ads/a6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z5;->e:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zza:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load rewarded ad with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adUnitId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/z5;->x(Lcom/google/android/gms/internal/ads/z5;Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final zzg()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzb:Lcom/google/android/gms/internal/ads/zzbwd;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/n8;

    invoke-static {v0, p0}, Lyth;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/n8;)V

    return-void
.end method
