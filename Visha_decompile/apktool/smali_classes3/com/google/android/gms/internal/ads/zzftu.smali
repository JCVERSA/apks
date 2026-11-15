.class public abstract Lcom/google/android/gms/internal/ads/zzftu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzftu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfta;->zza:Lcom/google/android/gms/internal/ads/zzfta;

    return-object v0
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzftu;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfta;->zza:Lcom/google/android/gms/internal/ads/zzfta;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfub;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfub;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract zza(Lm2i;)Lcom/google/android/gms/internal/ads/zzftu;
.end method

.method public abstract zzb(Ljava/lang/Object;)Ljava/lang/Object;
.end method
