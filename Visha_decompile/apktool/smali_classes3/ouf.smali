.class public final Louf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lim5;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lim5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Louf;->d:Z

    iput-object p1, p0, Louf;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Louf;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Louf;->c:Lim5;

    return-void
.end method

.method public static synthetic a(Louf;Lv7i;Lim5;Lbuf;)Lim5;
    .locals 2

    if-eqz p3, :cond_0

    invoke-interface {p1, p3}, Lv7i;->zzb(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lm0f;->a:Leze;

    invoke-virtual {p1}, Leze;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Louf;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, v0, v1, p1, p0}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Louf;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Louf;->d:Z

    return-void
.end method

.method public static bridge synthetic c(Louf;Ljava/util/List;Lv7i;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim5;

    new-instance v2, Lkuf;

    invoke-direct {v2, p2}, Lkuf;-><init>(Lv7i;)V

    iget-object v3, p0, Louf;->a:Ljava/util/concurrent/Executor;

    const-class v4, Ljava/lang/Throwable;

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    new-instance v2, Lluf;

    invoke-direct {v2, p0, p2, v1}, Lluf;-><init>(Louf;Lv7i;Lim5;)V

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p1, Lnuf;

    invoke-direct {p1, p0, p2}, Lnuf;-><init>(Louf;Lv7i;)V

    iget-object p0, p0, Louf;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    :goto_1
    iget-object p0, p0, Louf;->a:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcqq;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcqq;-><init>(Lv7i;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic d(Louf;)V
    .locals 2

    sget-object v0, Lzef;->f:Lg8i;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcqp;-><init>(Louf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final e(Lv7i;)V
    .locals 1

    new-instance v0, Lmuf;

    invoke-direct {v0, p0, p1}, Lmuf;-><init>(Louf;Lv7i;)V

    iget-object p1, p0, Louf;->a:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Louf;->c:Lim5;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Louf;->d:Z

    return p0
.end method
