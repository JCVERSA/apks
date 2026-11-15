.class public final Lnwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/a$b;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/m0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/m0;)V
    .locals 0

    iput-object p1, p0, Lnwe;->b:Lcom/google/android/gms/internal/ads/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object p0, p0, Lnwe;->b:Lcom/google/android/gms/internal/ads/m0;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/m0;->e(Lcom/google/android/gms/internal/ads/m0;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/m0;->k(Lcom/google/android/gms/internal/ads/m0;Lcom/google/android/gms/internal/ads/zzbau;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/m0;->c(Lcom/google/android/gms/internal/ads/m0;)Lpwe;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/m0;->f(Lcom/google/android/gms/internal/ads/m0;Lpwe;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/m0;->e(Lcom/google/android/gms/internal/ads/m0;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
