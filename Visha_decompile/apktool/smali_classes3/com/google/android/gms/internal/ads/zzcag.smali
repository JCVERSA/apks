.class final Lcom/google/android/gms/internal/ads/zzcag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcak;II)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcag;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcag;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcag;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcag;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->f(Lcom/google/android/gms/internal/ads/zzcak;)Lqgf;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcag;->zza:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcag;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->f(Lcom/google/android/gms/internal/ads/zzcak;)Lqgf;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lqgf;->zzj(II)V

    :cond_0
    return-void
.end method
