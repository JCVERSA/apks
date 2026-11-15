.class final Lcom/google/android/libraries/places/internal/zzbpx;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private zzb:Z

.field private zzc:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbpx;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbpx;->zza:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zza()V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzc:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v6

    .line 16
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbpx;->zza:Ljava/util/logging/Logger;

    .line 17
    .line 18
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v3, "Exception while executing runnable "

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v3, "io.grpc.internal.SerializeReentrantCallsDirectExecutor"

    .line 31
    .line 32
    const-string v4, "completeQueuedTasks"

    .line 33
    .line 34
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    const-string v0, "\'task\' must not be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzb:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzb:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzc:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbpx;->zza()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzb:Z

    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v6

    .line 28
    :try_start_1
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbpx;->zza:Ljava/util/logging/Logger;

    .line 29
    .line 30
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 31
    .line 32
    const-string v3, "io.grpc.internal.SerializeReentrantCallsDirectExecutor"

    .line 33
    .line 34
    const-string v4, "execute"

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v7, "Exception while executing runnable "

    .line 46
    .line 47
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzc:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbpx;->zza()V

    .line 65
    .line 66
    .line 67
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzb:Z

    .line 68
    .line 69
    return-void

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzc:Ljava/util/ArrayDeque;

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbpx;->zza()V

    .line 77
    .line 78
    .line 79
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzb:Z

    .line 80
    .line 81
    throw p1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzc:Ljava/util/ArrayDeque;

    .line 83
    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    new-instance v0, Ljava/util/ArrayDeque;

    .line 87
    .line 88
    const/4 v1, 0x4

    .line 89
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzc:Ljava/util/ArrayDeque;

    .line 93
    .line 94
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpx;->zzc:Ljava/util/ArrayDeque;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method
