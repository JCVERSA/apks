.class final Lcom/google/android/play/core/appupdate/internal/zzq;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "source.java"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lcom/google/android/play/core/appupdate/internal/zzn;

.field final synthetic zzc:Lcom/google/android/play/core/appupdate/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/internal/h;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/appupdate/internal/zzn;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzb:Lcom/google/android/play/core/appupdate/internal/zzn;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->e(Lcom/google/android/play/core/appupdate/internal/h;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    invoke-static {v0, v2}, Lcom/google/android/play/core/appupdate/internal/h;->k(Lcom/google/android/play/core/appupdate/internal/h;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->g(Lcom/google/android/play/core/appupdate/internal/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->d(Lcom/google/android/play/core/appupdate/internal/h;)Lcom/google/android/play/core/appupdate/internal/f;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "Already connected to the service."

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    new-array v4, v4, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4}, Lcom/google/android/play/core/appupdate/internal/f;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzb:Lcom/google/android/play/core/appupdate/internal/zzn;

    .line 38
    .line 39
    invoke-static {v0, v2}, Lcom/google/android/play/core/appupdate/internal/h;->m(Lcom/google/android/play/core/appupdate/internal/h;Lcom/google/android/play/core/appupdate/internal/zzn;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0
.end method
