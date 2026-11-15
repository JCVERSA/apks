.class public final Lcom/google/android/gms/internal/ads/i5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5h;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzexa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzexa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i5;->a:Lcom/google/android/gms/internal/ads/zzexa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i5;->a:Lcom/google/android/gms/internal/ads/zzexa;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzexa;->zza:Lnrf;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lnrf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i5;->a:Lcom/google/android/gms/internal/ads/zzexa;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexa;->zza:Lnrf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbuf;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexa;->zza:Lnrf;

    invoke-virtual {p1, p0}, Lnrf;->j(Lmve;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzexa;->zzm(Lcom/google/android/gms/internal/ads/zzexa;)Lfih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzexa;->zzm(Lcom/google/android/gms/internal/ads/zzexa;)Lfih;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzexa;->zzh(Lcom/google/android/gms/internal/ads/zzexa;)Lsmg;

    move-result-object v3

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcnu;-><init>(Lnrf;Lcom/google/android/gms/ads/internal/client/zzbx;Lfih;Lsmg;)V

    invoke-virtual {v0, v1}, Lfih;->n(Lcom/google/android/gms/internal/ads/zzbaa;)V

    invoke-virtual {p1}, Lbuf;->b()V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
