.class public final Lzqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liue;


# instance fields
.field public b:Lejf;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Llqf;

.field public final e:Lfy0;

.field public f:Z

.field public g:Z

.field public final h:Lnqf;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Llqf;Lfy0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzqf;->f:Z

    iput-boolean v0, p0, Lzqf;->g:Z

    new-instance v0, Lnqf;

    invoke-direct {v0}, Lnqf;-><init>()V

    iput-object v0, p0, Lzqf;->h:Lnqf;

    iput-object p1, p0, Lzqf;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lzqf;->d:Llqf;

    iput-object p3, p0, Lzqf;->e:Lfy0;

    return-void
.end method

.method public static synthetic a(Lzqf;Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling AFMA_updateActiveView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    iget-object p0, p0, Lzqf;->b:Lejf;

    const-string v0, "AFMA_updateActiveView"

    invoke-interface {p0, v0, p1}, Lx5f;->zzp(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lzqf;->d:Llqf;

    iget-object v1, p0, Lzqf;->h:Lnqf;

    invoke-virtual {v0, v1}, Llqf;->a(Lnqf;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lzqf;->b:Lejf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzqf;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnd;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcnd;-><init>(Lzqf;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "Failed to call video active view js"

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzqf;->f:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzqf;->f:Z

    invoke-direct {p0}, Lzqf;->f()V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lzqf;->g:Z

    return-void
.end method

.method public final e(Lejf;)V
    .locals 0

    iput-object p1, p0, Lzqf;->b:Lejf;

    return-void
.end method

.method public final zzdn(Lhue;)V
    .locals 4

    iget-boolean v0, p0, Lzqf;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lhue;->j:Z

    :goto_0
    iget-object v1, p0, Lzqf;->h:Lnqf;

    iput-boolean v0, v1, Lnqf;->a:Z

    iget-object v0, p0, Lzqf;->e:Lfy0;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lnqf;->d:J

    iput-object p1, v1, Lnqf;->f:Lhue;

    iget-boolean p1, p0, Lzqf;->f:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lzqf;->f()V

    :cond_1
    return-void
.end method
