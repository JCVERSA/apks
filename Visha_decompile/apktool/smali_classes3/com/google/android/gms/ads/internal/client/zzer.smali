.class final Lcom/google/android/gms/ads/internal/client/zzer;
.super Lcom/google/android/gms/internal/ads/zzbln;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzet;Lcom/google/android/gms/ads/internal/client/zzes;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzer;->zza:Lcom/google/android/gms/ads/internal/client/zzet;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbln;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzer;->zza:Lcom/google/android/gms/ads/internal/client/zzet;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzet;->h(Lcom/google/android/gms/ads/internal/client/zzet;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/gms/ads/internal/client/zzet;->k(Lcom/google/android/gms/ads/internal/client/zzet;Z)V

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/google/android/gms/ads/internal/client/zzet;->j(Lcom/google/android/gms/ads/internal/client/zzet;Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzet;->i(Lcom/google/android/gms/ads/internal/client/zzet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzet;->i(Lcom/google/android/gms/ads/internal/client/zzet;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzet;->f(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
