.class final Lcom/google/android/gms/internal/ads/zzaou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/c;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaov;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaov;Lcom/google/android/gms/internal/ads/c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/c;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaov;->zza(Lcom/google/android/gms/internal/ads/zzaov;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/c;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
