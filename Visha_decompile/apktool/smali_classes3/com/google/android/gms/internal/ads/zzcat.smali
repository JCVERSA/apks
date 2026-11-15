.class final Lcom/google/android/gms/internal/ads/zzcat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcau;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcat;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcat;->zzb:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcat;->zza:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVisible"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcat;->zzb:Lcom/google/android/gms/internal/ads/zzcau;

    const-string v1, "windowVisibilityChanged"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcau;->d(Lcom/google/android/gms/internal/ads/zzcau;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
