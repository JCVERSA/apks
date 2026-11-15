.class public final Li6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgff;


# instance fields
.field public final synthetic a:Lq6f;

.field public final synthetic b:Lwrh;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/t3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t3;Lq6f;Lwrh;)V
    .locals 0

    iput-object p2, p0, Li6f;->a:Lq6f;

    iput-object p3, p0, Li6f;->b:Lwrh;

    iput-object p1, p0, Li6f;->c:Lcom/google/android/gms/internal/ads/t3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    const-string v0, "loadNewJavascriptEngine (failure): Trying to acquire lock"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Li6f;->c:Lcom/google/android/gms/internal/ads/t3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/t3;->f(Lcom/google/android/gms/internal/ads/t3;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v2, "loadNewJavascriptEngine (failure): Lock acquired"

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/t3;->k(Lcom/google/android/gms/internal/ads/t3;I)V

    const-string v2, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Li6f;->a:Lq6f;

    invoke-virtual {v2}, Lq6f;->h()V

    sget-object v2, Lsze;->d:Leze;

    invoke-virtual {v2}, Leze;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/t3;->e(Lcom/google/android/gms/internal/ads/t3;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/t3;->e(Lcom/google/android/gms/internal/ads/t3;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v0

    iget-object p0, p0, Li6f;->b:Lwrh;

    const-string v2, "Failed loading new engine"

    invoke-interface {p0, v2}, Lwrh;->zzc(Ljava/lang/String;)Lwrh;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {p0}, Lwrh;->zzm()Lash;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "loadNewJavascriptEngine (failure): Lock released"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
