.class public final Lcom/google/android/gms/internal/ads/i7;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfwf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfwf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwf;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/d7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/d7;-><init>(Lcom/google/android/gms/internal/ads/zzfwf;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwf;->zzh(Lcom/google/android/gms/internal/ads/zzfwf;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwf;->zzk()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->size()I

    move-result p0

    return p0
.end method
