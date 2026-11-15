.class public final Lc6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final synthetic a:Ls5f;

.field public final synthetic b:Lcom/google/android/gms/ads/internal/util/zzby;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/t3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t3;Lfre;Ls5f;Lcom/google/android/gms/ads/internal/util/zzby;)V
    .locals 0

    iput-object p3, p0, Lc6f;->a:Ls5f;

    iput-object p4, p0, Lc6f;->b:Lcom/google/android/gms/ads/internal/util/zzby;

    iput-object p1, p0, Lc6f;->c:Lcom/google/android/gms/internal/ads/t3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lr6f;

    const-string p1, "loadJavascriptEngine > /requestReload handler: Trying to acquire lock"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lc6f;->c:Lcom/google/android/gms/internal/ads/t3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t3;->f(Lcom/google/android/gms/internal/ads/t3;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    const-string v0, "loadJavascriptEngine > /requestReload handler: Lock acquired"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t3;->a(Lcom/google/android/gms/internal/ads/t3;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/t3;->k(Lcom/google/android/gms/internal/ads/t3;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/t3;->d(Lfre;)Lq6f;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lc6f;->a:Ls5f;

    const-string v0, "/requestReload"

    iget-object p0, p0, Lc6f;->b:Lcom/google/android/gms/ads/internal/util/zzby;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzby;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln3f;

    invoke-interface {p1, v0, p0}, Lr6f;->a(Ljava/lang/String;Ln3f;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "loadJavascriptEngine > /requestReload handler: Lock released"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
