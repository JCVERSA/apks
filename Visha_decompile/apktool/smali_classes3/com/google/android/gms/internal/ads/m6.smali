.class public abstract Lcom/google/android/gms/internal/ads/m6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lk3i;)Lk3i;
    .locals 1

    instance-of v0, p0, Lm3i;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfup;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfup;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfup;-><init>(Lk3i;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lm3i;

    invoke-direct {v0, p0}, Lm3i;-><init>(Lk3i;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method
