.class public final Lcrh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public final c:Lim5;

.field public final d:Ljava/util/List;

.field public final e:Lim5;

.field public final synthetic f:Lerh;


# direct methods
.method public constructor <init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcrh;->f:Lerh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcrh;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcrh;->b:Ljava/lang/String;

    iput-object p4, p0, Lcrh;->c:Lim5;

    iput-object p5, p0, Lcrh;->d:Ljava/util/List;

    iput-object p6, p0, Lcrh;->e:Lim5;

    return-void
.end method

.method public synthetic constructor <init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;Ldrh;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-direct/range {v0 .. v6}, Lcrh;-><init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;)V

    return-void
.end method


# virtual methods
.method public final a()Lrqh;
    .locals 4

    new-instance v0, Lrqh;

    iget-object v1, p0, Lcrh;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcrh;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcrh;->f:Lerh;

    invoke-virtual {v2, v1}, Lerh;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcrh;->e:Lim5;

    invoke-direct {v0, v1, v2, v3}, Lrqh;-><init>(Ljava/lang/Object;Ljava/lang/String;Lim5;)V

    iget-object v1, p0, Lcrh;->f:Lerh;

    invoke-static {v1}, Lerh;->c(Lerh;)Lfrh;

    move-result-object v1

    invoke-interface {v1, v0}, Lfrh;->q(Lrqh;)V

    iget-object v1, p0, Lcrh;->c:Lim5;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzffh;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzffh;-><init>(Lcrh;Lrqh;)V

    sget-object v3, Lzef;->g:Lg8i;

    invoke-interface {v1, v2, v3}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lbrh;

    invoke-direct {v1, p0, v0}, Lbrh;-><init>(Lcrh;Lrqh;)V

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcrh;
    .locals 1

    iget-object v0, p0, Lcrh;->f:Lerh;

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lerh;->b(Ljava/lang/Object;Lim5;)Lcrh;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Class;Lk7i;)Lcrh;
    .locals 8

    new-instance v7, Lcrh;

    iget-object v1, p0, Lcrh;->f:Lerh;

    invoke-static {v1}, Lerh;->e(Lerh;)Lg8i;

    move-result-object v0

    iget-object v2, p0, Lcrh;->e:Lim5;

    invoke-static {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v6

    iget-object v2, p0, Lcrh;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcrh;->b:Ljava/lang/String;

    iget-object v4, p0, Lcrh;->c:Lim5;

    iget-object v5, p0, Lcrh;->d:Ljava/util/List;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcrh;-><init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;)V

    return-object v7
.end method

.method public final d(Lim5;)Lcrh;
    .locals 1

    new-instance v0, Larh;

    invoke-direct {v0, p1}, Larh;-><init>(Lim5;)V

    sget-object p1, Lzef;->g:Lg8i;

    invoke-virtual {p0, v0, p1}, Lcrh;->g(Lk7i;Ljava/util/concurrent/Executor;)Lcrh;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lpqh;)Lcrh;
    .locals 1

    new-instance v0, Lzqh;

    invoke-direct {v0, p1}, Lzqh;-><init>(Lpqh;)V

    invoke-virtual {p0, v0}, Lcrh;->f(Lk7i;)Lcrh;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lk7i;)Lcrh;
    .locals 1

    iget-object v0, p0, Lcrh;->f:Lerh;

    invoke-static {v0}, Lerh;->e(Lerh;)Lg8i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcrh;->g(Lk7i;Ljava/util/concurrent/Executor;)Lcrh;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lk7i;Ljava/util/concurrent/Executor;)Lcrh;
    .locals 8

    new-instance v7, Lcrh;

    iget-object v0, p0, Lcrh;->e:Lim5;

    iget-object v1, p0, Lcrh;->f:Lerh;

    iget-object v2, p0, Lcrh;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcrh;->b:Ljava/lang/String;

    iget-object v4, p0, Lcrh;->c:Lim5;

    iget-object v5, p0, Lcrh;->d:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcrh;-><init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;)V

    return-object v7
.end method

.method public final h(Ljava/lang/String;)Lcrh;
    .locals 8

    iget-object v4, p0, Lcrh;->c:Lim5;

    iget-object v5, p0, Lcrh;->d:Ljava/util/List;

    iget-object v6, p0, Lcrh;->e:Lim5;

    new-instance v7, Lcrh;

    iget-object v1, p0, Lcrh;->f:Lerh;

    iget-object v2, p0, Lcrh;->a:Ljava/lang/Object;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcrh;-><init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;)V

    return-object v7
.end method

.method public final i(JLjava/util/concurrent/TimeUnit;)Lcrh;
    .locals 8

    new-instance v7, Lcrh;

    iget-object v1, p0, Lcrh;->f:Lerh;

    invoke-static {v1}, Lerh;->g(Lerh;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v2, p0, Lcrh;->e:Lim5;

    invoke-static {v2, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object v6

    iget-object v2, p0, Lcrh;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcrh;->b:Ljava/lang/String;

    iget-object v4, p0, Lcrh;->c:Lim5;

    iget-object v5, p0, Lcrh;->d:Ljava/util/List;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcrh;-><init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;)V

    return-object v7
.end method
