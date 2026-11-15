.class public final Lrmg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;

.field public final synthetic b:Lsmg;


# direct methods
.method public constructor <init>(Lsmg;)V
    .locals 0

    iput-object p1, p0, Lrmg;->b:Lsmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lrmg;->a:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic a(Lrmg;)Lrmg;
    .locals 2

    iget-object v0, p0, Lrmg;->b:Lsmg;

    iget-object v1, p0, Lrmg;->a:Ljava/util/Map;

    invoke-static {v0}, Lsmg;->c(Lsmg;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public static synthetic f(Lrmg;)V
    .locals 1

    iget-object v0, p0, Lrmg;->b:Lsmg;

    invoke-static {v0}, Lsmg;->b(Lsmg;)Lxmg;

    move-result-object v0

    iget-object p0, p0, Lrmg;->a:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lzmg;->f(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic g(Lrmg;)V
    .locals 1

    iget-object v0, p0, Lrmg;->b:Lsmg;

    invoke-static {v0}, Lsmg;->b(Lsmg;)Lxmg;

    move-result-object v0

    iget-object p0, p0, Lrmg;->a:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lzmg;->g(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lrmg;)V
    .locals 1

    iget-object v0, p0, Lrmg;->b:Lsmg;

    invoke-static {v0}, Lsmg;->b(Lsmg;)Lxmg;

    move-result-object v0

    iget-object p0, p0, Lrmg;->a:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lzmg;->e(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lrmg;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrmg;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final c(Lhmh;)Lrmg;
    .locals 2

    iget-object v0, p1, Lhmh;->w:Ljava/lang/String;

    const-string v1, "aai"

    invoke-virtual {p0, v1, v0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string v0, "request_id"

    iget-object v1, p1, Lhmh;->n0:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    iget p1, p1, Lhmh;->b:I

    invoke-static {p1}, Lhmh;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ad_format"

    invoke-virtual {p0, v0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    return-object p0
.end method

.method public final d(Lkmh;)Lrmg;
    .locals 1

    const-string v0, "gqi"

    iget-object p1, p1, Lkmh;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrmg;->b:Lsmg;

    invoke-static {v0}, Lsmg;->b(Lsmg;)Lxmg;

    move-result-object v0

    iget-object p0, p0, Lrmg;->a:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lzmg;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lrmg;->b:Lsmg;

    invoke-static {v0}, Lsmg;->d(Lsmg;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdrc;-><init>(Lrmg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lrmg;->b:Lsmg;

    invoke-static {v0}, Lsmg;->d(Lsmg;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdra;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdra;-><init>(Lrmg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lrmg;->b:Lsmg;

    invoke-static {v0}, Lsmg;->d(Lsmg;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdrb;-><init>(Lrmg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
