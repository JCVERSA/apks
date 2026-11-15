.class public abstract Lasg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/a$a;
.implements Lcom/google/android/gms/common/internal/a$b;


# instance fields
.field public final b:Leff;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Z

.field public f:Lcom/google/android/gms/internal/ads/zzbuy;

.field public g:Lgbf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Leff;

    invoke-direct {v0}, Leff;-><init>()V

    iput-object v0, p0, Lasg;->b:Leff;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lasg;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lasg;->d:Z

    iput-boolean v0, p0, Lasg;->e:Z

    return-void
.end method

.method public static b(Landroid/content/Context;Lim5;Ljava/util/concurrent/Executor;)V
    .locals 1

    sget-object v0, Lrze;->j:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lrze;->h:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lvrg;

    invoke-direct {v0, p0}, Lvrg;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lasg;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lasg;->e:Z

    iget-object v1, p0, Lasg;->g:Lgbf;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lasg;->g:Lgbf;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lasg;->g:Lgbf;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->disconnect()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Disconnected from remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdxq;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    iget-object p0, p0, Lasg;->b:Leff;

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void
.end method
