.class final Lcom/google/android/gms/ads/internal/client/zzeq;
.super Lcom/google/android/gms/ads/internal/client/zzdj;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzes;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/internal/client/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzet;->zzf()Lcom/google/android/gms/ads/internal/client/zzet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzet;->e(Lcom/google/android/gms/ads/internal/client/zzet;)Lcom/google/android/gms/ads/OnAdInspectorClosedListener;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdInspectorError;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/ads/AdInspectorError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/OnAdInspectorClosedListener;->onAdInspectorClosed(Lcom/google/android/gms/ads/AdInspectorError;)V

    :cond_1
    return-void
.end method
