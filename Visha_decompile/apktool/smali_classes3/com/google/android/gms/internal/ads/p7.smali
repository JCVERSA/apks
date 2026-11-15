.class public abstract Lcom/google/android/gms/internal/ads/p7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "initialArraySize"

    invoke-static {p0, v0}, Lt3i;->a(ILjava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static b(Ljava/util/List;Lm2i;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfxj;-><init>(Ljava/util/List;Lm2i;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfxl;-><init>(Ljava/util/List;Lm2i;)V

    :goto_0
    return-object v0
.end method
