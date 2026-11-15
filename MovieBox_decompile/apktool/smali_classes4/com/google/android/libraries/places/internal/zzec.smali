.class final Lcom/google/android/libraries/places/internal/zzec;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzajv;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzaka;

.field final synthetic zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/libraries/places/internal/zzaka;Lcom/google/android/gms/tasks/CancellationTokenSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzec;->zzb:Lcom/google/android/libraries/places/internal/zzaka;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzec;->zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzec;->zzb:Lcom/google/android/libraries/places/internal/zzaka;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzec;->zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Exception;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 28
    .line 29
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
