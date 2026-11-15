.class public final Lcxe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public final synthetic c:Lexe;


# direct methods
.method public synthetic constructor <init>(Lexe;[BLdxe;)V
    .locals 0

    iput-object p1, p0, Lcxe;->c:Lexe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcxe;->a:[B

    return-void
.end method

.method public static synthetic b(Lcxe;)V
    .locals 0

    invoke-virtual {p0}, Lcxe;->d()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcxe;
    .locals 0

    iput p1, p0, Lcxe;->b:I

    return-object p0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcxe;->c:Lexe;

    invoke-static {v0}, Lexe;->a(Lexe;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbj;-><init>(Lcxe;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcxe;->c:Lexe;

    iget-boolean v1, v0, Lexe;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lexe;->a:Lcom/google/android/gms/internal/ads/zzayc;

    iget-object v2, p0, Lcxe;->a:[B

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zzj([B)V

    iget-object v1, v0, Lexe;->a:Lcom/google/android/gms/internal/ads/zzayc;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zzi(I)V

    iget-object v1, v0, Lexe;->a:Lcom/google/android/gms/internal/ads/zzayc;

    iget v2, p0, Lcxe;->b:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zzg(I)V

    iget-object v1, v0, Lexe;->a:Lcom/google/android/gms/internal/ads/zzayc;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zzh([I)V

    iget-object v0, v0, Lexe;->a:Lcom/google/android/gms/internal/ads/zzayc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayc;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    const-string v1, "Clearcut log failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
