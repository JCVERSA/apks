.class public final Lcom/google/android/gms/ads/internal/client/zzfo;
.super Lcom/google/android/gms/ads/internal/client/zzdp;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/OnPaidEventListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzfo;->zza:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfo;->zza:Lcom/google/android/gms/ads/OnPaidEventListener;

    if-eqz p0, :cond_0

    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zzt;->zzb:I

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzt;->zzc:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/ads/internal/client/zzt;->zzd:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdValue;->zza(ILjava/lang/String;J)Lcom/google/android/gms/ads/AdValue;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/OnPaidEventListener;->onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V

    :cond_0
    return-void
.end method

.method public final zzf()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfo;->zza:Lcom/google/android/gms/ads/OnPaidEventListener;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
