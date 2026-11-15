.class public final Lb6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lq6f;

.field public final synthetic c:Ls5f;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/t3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t3;JLq6f;Ls5f;)V
    .locals 0

    iput-wide p2, p0, Lb6f;->a:J

    iput-object p4, p0, Lb6f;->b:Lq6f;

    iput-object p5, p0, Lb6f;->c:Ls5f;

    iput-object p1, p0, Lb6f;->d:Lcom/google/android/gms/internal/ads/t3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    check-cast p1, Lr6f;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lb6f;->a:J

    sub-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGmsg /jsLoaded. JsLoaded latency is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lb6f;->d:Lcom/google/android/gms/internal/ads/t3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t3;->f(Lcom/google/android/gms/internal/ads/t3;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    const-string v0, "loadJavascriptEngine > /jsLoaded handler: Lock acquired"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lb6f;->b:Lq6f;

    invoke-virtual {v0}, Llff;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Llff;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/t3;->k(Lcom/google/android/gms/internal/ads/t3;I)V

    iget-object p0, p0, Lb6f;->c:Ls5f;

    const-string v1, "/log"

    sget-object v2, Lm3f;->g:Ln3f;

    invoke-interface {p0, v1, v2}, Lr6f;->b(Ljava/lang/String;Ln3f;)V

    const-string v1, "/result"

    sget-object v2, Lm3f;->o:Ld4f;

    invoke-interface {p0, v1, v2}, Lr6f;->b(Ljava/lang/String;Ln3f;)V

    invoke-virtual {v0, p0}, Llff;->e(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/t3;->j(Lcom/google/android/gms/internal/ads/t3;Lq6f;)V

    const-string p0, "Successfully loaded JS Engine."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "loadJavascriptEngine > /jsLoaded handler: Lock released"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string p0, "loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
