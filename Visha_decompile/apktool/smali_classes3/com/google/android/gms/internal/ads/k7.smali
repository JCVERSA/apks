.class public final Lcom/google/android/gms/internal/ads/k7;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfwf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfwf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/k7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/k7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/f7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/f7;-><init>(Lcom/google/android/gms/internal/ads/zzfwf;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/k7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->size()I

    move-result p0

    return p0
.end method
