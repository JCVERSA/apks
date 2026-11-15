.class public final Liyh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public final synthetic d:Lcom/google/android/gms/internal/ads/i6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/i6;[BLjyh;)V
    .locals 0

    iput-object p1, p0, Liyh;->d:Lcom/google/android/gms/internal/ads/i6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Liyh;->a:[B

    return-void
.end method


# virtual methods
.method public final a(I)Liyh;
    .locals 0

    iput p1, p0, Liyh;->c:I

    return-object p0
.end method

.method public final b(I)Liyh;
    .locals 0

    iput p1, p0, Liyh;->b:I

    return-object p0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liyh;->d:Lcom/google/android/gms/internal/ads/i6;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/i6;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/i6;->a:Lcom/google/android/gms/internal/ads/zzfou;

    iget-object v1, p0, Liyh;->a:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfou;->zzj([B)V

    iget v1, p0, Liyh;->b:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfou;->zzi(I)V

    iget v1, p0, Liyh;->c:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfou;->zzg(I)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfou;->zzh([I)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfou;->zzf()V
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
    const-string v1, "GASS"

    const-string v2, "Clearcut log failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
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
