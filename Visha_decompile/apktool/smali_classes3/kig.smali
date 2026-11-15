.class public final Lkig;
.super Luhg;
.source "SourceFile"

# interfaces
.implements Lt8g;


# instance fields
.field public g:Lt8g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Luhg;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Lcom/google/android/gms/ads/internal/client/zza;Lr1f;Lcom/google/android/gms/ads/internal/overlay/zzr;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;Lt8g;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Luhg;->a(Lcom/google/android/gms/ads/internal/client/zza;Lr1f;Lcom/google/android/gms/ads/internal/overlay/zzr;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;)V

    iput-object p6, p0, Lkig;->g:Lt8g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzdd()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkig;->g:Lt8g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lt8g;->zzdd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzu()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkig;->g:Lt8g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lt8g;->zzu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
