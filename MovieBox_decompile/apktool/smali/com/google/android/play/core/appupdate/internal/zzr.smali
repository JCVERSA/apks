.class final Lcom/google/android/play/core/appupdate/internal/zzr;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "source.java"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/appupdate/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/internal/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6

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
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->g(Lcom/google/android/play/core/appupdate/internal/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->g(Lcom/google/android/play/core/appupdate/internal/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-gtz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->d(Lcom/google/android/play/core/appupdate/internal/h;)Lcom/google/android/play/core/appupdate/internal/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "Leaving the connection open for other ongoing calls."

    .line 34
    .line 35
    new-array v3, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Lcom/google/android/play/core/appupdate/internal/f;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->c(Lcom/google/android/play/core/appupdate/internal/h;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->d(Lcom/google/android/play/core/appupdate/internal/h;)Lcom/google/android/play/core/appupdate/internal/f;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v4, "Unbind from service."

    .line 55
    .line 56
    new-array v5, v3, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {v2, v4, v5}, Lcom/google/android/play/core/appupdate/internal/f;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->a(Lcom/google/android/play/core/appupdate/internal/h;)Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->b(Lcom/google/android/play/core/appupdate/internal/h;)Landroid/content/ServiceConnection;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v3}, Lcom/google/android/play/core/appupdate/internal/h;->i(Lcom/google/android/play/core/appupdate/internal/h;Z)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v0}, Lcom/google/android/play/core/appupdate/internal/h;->j(Lcom/google/android/play/core/appupdate/internal/h;Landroid/os/IInterface;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v0}, Lcom/google/android/play/core/appupdate/internal/h;->h(Lcom/google/android/play/core/appupdate/internal/h;Landroid/content/ServiceConnection;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->l(Lcom/google/android/play/core/appupdate/internal/h;)V

    .line 82
    .line 83
    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw v0
.end method
