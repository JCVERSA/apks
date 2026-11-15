.class public abstract Lcom/google/android/gms/internal/ads/f8;
.super Lcom/google/android/gms/internal/ads/g8;
.source "SourceFile"


# static fields
.field public static final i:Le8i;


# instance fields
.field public f:Lcom/google/android/gms/internal/ads/zzfwr;

.field public final g:Z

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le8i;

    const-class v1, Lcom/google/android/gms/internal/ads/f8;

    invoke-direct {v0, v1}, Le8i;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/f8;->i:Le8i;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfwr;ZZ)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/g8;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->f:Lcom/google/android/gms/internal/ads/zzfwr;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/f8;->g:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/f8;->h:Z

    return-void
.end method

.method public static synthetic A(Lcom/google/android/gms/internal/ads/f8;ILim5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/f8;->x(ILim5;)V

    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 7

    const/4 v0, 0x1

    instance-of v1, p0, Ljava/lang/Error;

    if-eq v0, v1, :cond_0

    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const-string v0, "Input Future failed with Error"

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/f8;->i:Le8i;

    invoke-virtual {v0}, Le8i;->a()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static y(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic z(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/zzfwr;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f8;->u(Lcom/google/android/gms/internal/ads/zzfwr;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/util/Set;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->zzi()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/f8;->y(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public abstract p(ILjava/lang/Object;)V
.end method

.method public abstract q()V
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->f:Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->f:Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f8;->q()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/f8;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->f:Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zze()Lx5i;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim5;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/f8;->x(ILim5;)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgaq;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgaq;-><init>(Lcom/google/android/gms/internal/ads/f8;ILim5;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgbg;->zza:Lcom/google/android/gms/internal/ads/zzgbg;

    invoke-interface {v2, v4, v1}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->f:Lcom/google/android/gms/internal/ads/zzfwr;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/f8;->h:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgar;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzgar;-><init>(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/zzfwr;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zze()Lx5i;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim5;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/f8;->u(Lcom/google/android/gms/internal/ads/zzfwr;)V

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgbg;->zza:Lcom/google/android/gms/internal/ads/zzgbg;

    invoke-interface {v3, v2, v4}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public s(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->f:Lcom/google/android/gms/internal/ads/zzfwr;

    return-void
.end method

.method public final t(ILjava/util/concurrent/Future;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Ln8i;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/f8;->p(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f8;->v(Ljava/lang/Throwable;)V

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f8;->v(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzfwr;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/g8;->j()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Less than 0 remaining futures"

    invoke-static {v2, v3}, Lv2i;->m(ZLjava/lang/Object;)V

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwr;->zze()Lx5i;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/f8;->t(ILjava/util/concurrent/Future;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/g8;->o()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f8;->q()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f8;->s(I)V

    :cond_3
    return-void
.end method

.method public final v(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/f8;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->zzd(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/g8;->l()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/f8;->y(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/f8;->w(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/f8;->w(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final x(ILim5;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->f:Lcom/google/android/gms/internal/ads/zzfwr;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/f8;->t(ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/f8;->u(Lcom/google/android/gms/internal/ads/zzfwr;)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/f8;->u(Lcom/google/android/gms/internal/ads/zzfwr;)V

    throw p1
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->f:Lcom/google/android/gms/internal/ads/zzfwr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "futures="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/x7;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->f:Lcom/google/android/gms/internal/ads/zzfwr;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/f8;->s(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->isCancelled()Z

    move-result v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->zzo()Z

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zze()Lx5i;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method
