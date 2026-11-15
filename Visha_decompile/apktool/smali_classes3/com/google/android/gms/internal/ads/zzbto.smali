.class final Lcom/google/android/gms/internal/ads/zzbto;
.super Lcom/google/android/gms/internal/ads/zzbye;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/v3;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbto;->zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbye;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/query/QueryInfo;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzew;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/android/gms/ads/internal/client/zzew;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/query/QueryInfo;-><init>(Lcom/google/android/gms/ads/internal/client/zzew;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V

    return-void
.end method
