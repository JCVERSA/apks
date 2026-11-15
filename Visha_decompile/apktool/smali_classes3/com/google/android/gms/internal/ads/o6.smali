.class public final Lcom/google/android/gms/internal/ads/o6;
.super Lw4i;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/q6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/q6;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o6;->b:Lcom/google/android/gms/internal/ads/q6;

    invoke-direct {p0}, Lw4i;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/o6;->b:Lcom/google/android/gms/internal/ads/q6;

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/o6;->b:Lcom/google/android/gms/internal/ads/q6;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q6;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lv3i;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/p6;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/o6;->b:Lcom/google/android/gms/internal/ads/q6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/p6;-><init>(Lcom/google/android/gms/internal/ads/q6;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lw4i;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/o6;->b:Lcom/google/android/gms/internal/ads/q6;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q6;->e:Lcom/google/android/gms/internal/ads/zzfvp;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvp;->zzo(Lcom/google/android/gms/internal/ads/zzfvp;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
