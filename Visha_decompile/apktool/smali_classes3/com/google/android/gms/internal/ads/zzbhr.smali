.class final Lcom/google/android/gms/internal/ads/zzbhr;
.super Lcom/google/android/gms/internal/ads/zzbgw;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/q3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/q3;Lp1f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhr;->zza:Lcom/google/android/gms/internal/ads/q3;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbgn;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhr;->zza:Lcom/google/android/gms/internal/ads/q3;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/q3;->a(Lcom/google/android/gms/internal/ads/q3;)Lcom/google/android/gms/ads/formats/zzf;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/q3;->a(Lcom/google/android/gms/internal/ads/q3;)Lcom/google/android/gms/ads/formats/zzf;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/q3;->e(Lcom/google/android/gms/internal/ads/q3;Lcom/google/android/gms/internal/ads/zzbgn;)Lh1f;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lcom/google/android/gms/ads/formats/zzf;->zzb(Lh1f;Ljava/lang/String;)V

    return-void
.end method
