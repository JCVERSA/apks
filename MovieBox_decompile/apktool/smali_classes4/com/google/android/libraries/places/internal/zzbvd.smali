.class final Lcom/google/android/libraries/places/internal/zzbvd;
.super Lcom/google/android/libraries/places/internal/zzbbm;
.source "source.java"


# instance fields
.field final synthetic zzf:Lcom/google/android/libraries/places/internal/zzbvg;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbvg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvd;->zzf:Lcom/google/android/libraries/places/internal/zzbvg;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbm;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvd;->zzf:Lcom/google/android/libraries/places/internal/zzbvg;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzh(Lcom/google/android/libraries/places/internal/zzbvg;)Lcom/google/android/libraries/places/internal/zzbbd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbbc;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v2, p1}, Lcom/google/android/libraries/places/internal/zzbbc;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "GracefulSwitchLoadBalancer must switch to a load balancing policy before handling ResolvedAddresses"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final zze()V
    .locals 0

    .line 1
    return-void
.end method
