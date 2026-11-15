.class final Lcom/google/android/play/core/review/internal/zzm;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lzda;

.field final synthetic zzb:Lcom/google/android/play/core/review/internal/zzj;

.field final synthetic zzc:Lykj;


# direct methods
.method public constructor <init>(Lykj;Lzda;Lzda;Lcom/google/android/play/core/review/internal/zzj;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/play/core/review/internal/zzm;->zza:Lzda;

    iput-object p4, p0, Lcom/google/android/play/core/review/internal/zzm;->zzb:Lcom/google/android/play/core/review/internal/zzj;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/review/internal/zzj;-><init>(Lzda;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lykj;->e(Lykj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/review/internal/zzm;->zza:Lzda;

    invoke-static {v0, v2}, Lykj;->k(Lykj;Lzda;)V

    invoke-static {v0}, Lykj;->g(Lykj;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0}, Lykj;->d(Lykj;)Lo1j;

    move-result-object v2

    const-string v3, "Already connected to the service."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lo1j;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzm;->zzb:Lcom/google/android/play/core/review/internal/zzj;

    invoke-static {v0, p0}, Lykj;->m(Lykj;Lcom/google/android/play/core/review/internal/zzj;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
