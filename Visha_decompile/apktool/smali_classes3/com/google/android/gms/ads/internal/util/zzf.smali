.class public final Lcom/google/android/gms/ads/internal/util/zzf;
.super Lpzh;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Lpzh;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lpzh;->a(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p1

    invoke-virtual {p1}, Lqef;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzN(Landroid/content/Context;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "AdMobHandler.handleMessage"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
