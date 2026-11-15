.class public final Lh6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liff;


# instance fields
.field public final synthetic a:Lq6f;

.field public final synthetic b:Lwrh;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/t3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t3;Lq6f;Lwrh;)V
    .locals 0

    iput-object p2, p0, Lh6f;->a:Lq6f;

    iput-object p3, p0, Lh6f;->b:Lwrh;

    iput-object p1, p0, Lh6f;->c:Lcom/google/android/gms/internal/ads/t3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ls5f;

    const-string p1, "loadNewJavascriptEngine (success): Trying to acquire lock"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lh6f;->c:Lcom/google/android/gms/internal/ads/t3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t3;->f(Lcom/google/android/gms/internal/ads/t3;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "loadNewJavascriptEngine (success): Lock acquired"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/t3;->k(Lcom/google/android/gms/internal/ads/t3;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t3;->c(Lcom/google/android/gms/internal/ads/t3;)Lq6f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh6f;->a:Lq6f;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t3;->c(Lcom/google/android/gms/internal/ads/t3;)Lq6f;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t3;->c(Lcom/google/android/gms/internal/ads/t3;)Lq6f;

    move-result-object v1

    invoke-virtual {v1}, Lq6f;->h()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lh6f;->a:Lq6f;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/t3;->j(Lcom/google/android/gms/internal/ads/t3;Lq6f;)V

    sget-object v1, Lsze;->d:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t3;->e(Lcom/google/android/gms/internal/ads/t3;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t3;->e(Lcom/google/android/gms/internal/ads/t3;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    iget-object p0, p0, Lh6f;->b:Lwrh;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {p0}, Lwrh;->zzm()Lash;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "loadNewJavascriptEngine (success): Lock released"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
