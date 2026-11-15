.class public final Lm6f;
.super Llff;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Lq6f;

.field public e:Z


# direct methods
.method public constructor <init>(Lq6f;)V
    .locals 1

    invoke-direct {p0}, Llff;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm6f;->c:Ljava/lang/Object;

    iput-object p1, p0, Lm6f;->d:Lq6f;

    return-void
.end method

.method public static bridge synthetic g(Lm6f;)Lq6f;
    .locals 0

    iget-object p0, p0, Lm6f;->d:Lq6f;

    return-object p0
.end method


# virtual methods
.method public final h()V
    .locals 3

    const-string v0, "release: Trying to acquire lock"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lm6f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "release: Lock acquired"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-boolean v1, p0, Lm6f;->e:Z

    if-eqz v1, :cond_0

    const-string p0, "release: Lock already released"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lm6f;->e:Z

    new-instance v1, Lj6f;

    invoke-direct {v1, p0}, Lj6f;-><init>(Lm6f;)V

    new-instance v2, Lhff;

    invoke-direct {v2}, Lhff;-><init>()V

    invoke-virtual {p0, v1, v2}, Llff;->f(Liff;Lgff;)V

    new-instance v1, Lk6f;

    invoke-direct {v1, p0}, Lk6f;-><init>(Lm6f;)V

    new-instance v2, Ll6f;

    invoke-direct {v2, p0}, Ll6f;-><init>(Lm6f;)V

    invoke-virtual {p0, v1, v2}, Llff;->f(Liff;Lgff;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "release: Lock released"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
