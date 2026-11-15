.class public final Lzlh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5h;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfal;)V
    .locals 0

    iput-object p1, p0, Lzlh;->a:Lcom/google/android/gms/internal/ads/zzfal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object p0, p0, Lzlh;->a:Lcom/google/android/gms/internal/ads/zzfal;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfal;->zzt(Lcom/google/android/gms/internal/ads/zzfal;Lwig;)V

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
    .locals 2

    iget-object p0, p0, Lzlh;->a:Lcom/google/android/gms/internal/ads/zzfal;

    check-cast p1, Lwig;

    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfal;->zzt(Lcom/google/android/gms/internal/ads/zzfal;Lwig;)V

    sget-object v0, Lcye;->M3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lwig;->k()Lxmh;

    move-result-object p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfal;->zzs(Lcom/google/android/gms/internal/ads/zzfal;)Lwmh;

    move-result-object v0

    iput-object v0, p1, Lxmh;->a:Lwmh;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfal;->zzr(Lcom/google/android/gms/internal/ads/zzfal;)Lwig;

    move-result-object p1

    invoke-virtual {p1}, Lbuf;->b()V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
