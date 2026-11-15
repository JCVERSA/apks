.class public final Lcom/google/android/gms/internal/ads/g7;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfwf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfwf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzd(Lcom/google/android/gms/internal/ads/zzfwf;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzj(Lcom/google/android/gms/internal/ads/zzfwf;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lt2i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/e7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/e7;-><init>(Lcom/google/android/gms/internal/ads/zzfwf;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 8

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzr()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzc(Lcom/google/android/gms/internal/ads/zzfwf;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzi(Lcom/google/android/gms/internal/ads/zzfwf;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzs(Lcom/google/android/gms/internal/ads/zzfwf;)[I

    move-result-object v5

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzt(Lcom/google/android/gms/internal/ads/zzfwf;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzu(Lcom/google/android/gms/internal/ads/zzfwf;)[Ljava/lang/Object;

    move-result-object v7

    move v3, v0

    invoke-static/range {v1 .. v7}, Lb4i;->b(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzq(II)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzb(Lcom/google/android/gms/internal/ads/zzfwf;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwf;->zzm(Lcom/google/android/gms/internal/ads/zzfwf;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzo()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g7;->b:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwf;->size()I

    move-result p0

    return p0
.end method
