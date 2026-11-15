.class public abstract Lcom/google/android/gms/internal/ads/d8;
.super Lo8i;
.source "SourceFile"

# interfaces
.implements Lim5;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/y7;

.field static final zze:Ljava/lang/Object;

.field static final zzf:Le8i;

.field static final zzg:Z

.field public static final synthetic zzh:I


# instance fields
.field private volatile listeners:Lcom/google/android/gms/internal/ads/u7;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Lcom/google/android/gms/internal/ads/c8;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/d8;->zze:Ljava/lang/Object;

    new-instance v0, Le8i;

    const-class v1, Lcom/google/android/gms/internal/ads/x7;

    invoke-direct {v0, v1}, Le8i;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/d8;->zzf:Le8i;

    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ads/d8;->zzg:Z

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/b8;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/b8;-><init>(Le7i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    move-object v9, v5

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/ads/z7;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/z7;-><init>(Le7i;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v0

    move-object v5, v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v2

    new-instance v3, Lcom/google/android/gms/internal/ads/a8;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/a8;-><init>(Le7i;)V

    move-object v5, v1

    move-object v9, v2

    move-object v1, v3

    :goto_1
    sput-object v1, Lcom/google/android/gms/internal/ads/d8;->zza:Lcom/google/android/gms/internal/ads/y7;

    if-eqz v9, :cond_0

    sget-object v6, Lcom/google/android/gms/internal/ads/d8;->zzf:Le8i;

    invoke-virtual {v6}, Le8i;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "<clinit>"

    const-string v4, "UnsafeAtomicHelper is broken!"

    const-string v2, "com.google.common.util.concurrent.AbstractFutureState"

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Le8i;->a()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v0, "<clinit>"

    const-string v8, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    const-string v6, "com.google.common.util.concurrent.AbstractFutureState"

    move-object v5, v7

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo8i;-><init>()V

    return-void
.end method

.method public static synthetic zzA(Lcom/google/android/gms/internal/ads/c8;Ljava/lang/Thread;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/d8;->zza:Lcom/google/android/gms/internal/ads/y7;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/y7;->d(Lcom/google/android/gms/internal/ads/c8;Ljava/lang/Thread;)V

    return-void
.end method

.method public static zzD(Lcom/google/android/gms/internal/ads/d8;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/d8;->zza:Lcom/google/android/gms/internal/ads/y7;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/y7;->f(Lcom/google/android/gms/internal/ads/d8;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/d8;)Lcom/google/android/gms/internal/ads/u7;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d8;->listeners:Lcom/google/android/gms/internal/ads/u7;

    return-object p0
.end method

.method public static bridge synthetic zzs(Lcom/google/android/gms/internal/ads/d8;)Lcom/google/android/gms/internal/ads/c8;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d8;->waiters:Lcom/google/android/gms/internal/ads/c8;

    return-object p0
.end method

.method public static bridge synthetic zzt(Lcom/google/android/gms/internal/ads/d8;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic zzx(Lcom/google/android/gms/internal/ads/d8;Lcom/google/android/gms/internal/ads/u7;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d8;->listeners:Lcom/google/android/gms/internal/ads/u7;

    return-void
.end method

.method public static bridge synthetic zzy(Lcom/google/android/gms/internal/ads/d8;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic zzz(Lcom/google/android/gms/internal/ads/d8;Lcom/google/android/gms/internal/ads/c8;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d8;->waiters:Lcom/google/android/gms/internal/ads/c8;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/c8;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/c8;->a:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d8;->waiters:Lcom/google/android/gms/internal/ads/c8;

    sget-object v1, Lcom/google/android/gms/internal/ads/c8;->c:Lcom/google/android/gms/internal/ads/c8;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/c8;->b:Lcom/google/android/gms/internal/ads/c8;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/c8;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/c8;->b:Lcom/google/android/gms/internal/ads/c8;

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/c8;->a:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/d8;->zza:Lcom/google/android/gms/internal/ads/y7;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/y7;->g(Lcom/google/android/gms/internal/ads/d8;Lcom/google/android/gms/internal/ads/c8;Lcom/google/android/gms/internal/ads/c8;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final zzB()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/c8;->c:Lcom/google/android/gms/internal/ads/c8;

    sget-object v1, Lcom/google/android/gms/internal/ads/d8;->zza:Lcom/google/android/gms/internal/ads/y7;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/ads/y7;->b(Lcom/google/android/gms/internal/ads/d8;Lcom/google/android/gms/internal/ads/c8;)Lcom/google/android/gms/internal/ads/c8;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c8;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/c8;->a:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c8;->b:Lcom/google/android/gms/internal/ads/c8;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzC(Lcom/google/android/gms/internal/ads/u7;Lcom/google/android/gms/internal/ads/u7;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/d8;->zza:Lcom/google/android/gms/internal/ads/y7;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/y7;->e(Lcom/google/android/gms/internal/ads/d8;Lcom/google/android/gms/internal/ads/u7;Lcom/google/android/gms/internal/ads/u7;)Z

    move-result p0

    return p0
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/u7;)Lcom/google/android/gms/internal/ads/u7;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/d8;->zza:Lcom/google/android/gms/internal/ads/y7;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/y7;->a(Lcom/google/android/gms/internal/ads/d8;Lcom/google/android/gms/internal/ads/u7;)Lcom/google/android/gms/internal/ads/u7;

    move-result-object p0

    return-object p0
.end method

.method public final zzr()Lcom/google/android/gms/internal/ads/u7;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d8;->listeners:Lcom/google/android/gms/internal/ads/u7;

    return-object p0
.end method

.method public final zzu()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x7;->zzm(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x7;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d8;->waiters:Lcom/google/android/gms/internal/ads/c8;

    sget-object v3, Lcom/google/android/gms/internal/ads/c8;->c:Lcom/google/android/gms/internal/ads/c8;

    if-eq v0, v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/ads/c8;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/c8;-><init>()V

    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/ads/d8;->zza:Lcom/google/android/gms/internal/ads/y7;

    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/ads/y7;->c(Lcom/google/android/gms/internal/ads/c8;Lcom/google/android/gms/internal/ads/c8;)V

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/ads/y7;->g(Lcom/google/android/gms/internal/ads/d8;Lcom/google/android/gms/internal/ads/c8;Lcom/google/android/gms/internal/ads/c8;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x7;->zzm(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x7;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/d8;->a(Lcom/google/android/gms/internal/ads/c8;)V

    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d8;->waiters:Lcom/google/android/gms/internal/ads/c8;

    sget-object v4, Lcom/google/android/gms/internal/ads/c8;->c:Lcom/google/android/gms/internal/ads/c8;

    if-ne v0, v4, :cond_2

    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/x7;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public final zzv(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/x7;->zzm(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/x7;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/d8;->waiters:Lcom/google/android/gms/internal/ads/c8;

    sget-object v15, Lcom/google/android/gms/internal/ads/c8;->c:Lcom/google/android/gms/internal/ads/c8;

    if-eq v6, v15, :cond_9

    new-instance v15, Lcom/google/android/gms/internal/ads/c8;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/c8;-><init>()V

    :cond_3
    sget-object v7, Lcom/google/android/gms/internal/ads/d8;->zza:Lcom/google/android/gms/internal/ads/y7;

    invoke-virtual {v7, v15, v6}, Lcom/google/android/gms/internal/ads/y7;->c(Lcom/google/android/gms/internal/ads/c8;Lcom/google/android/gms/internal/ads/c8;)V

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/ads/y7;->g(Lcom/google/android/gms/internal/ads/d8;Lcom/google/android/gms/internal/ads/c8;Lcom/google/android/gms/internal/ads/c8;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/x7;->zzm(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/x7;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/d8;->a(Lcom/google/android/gms/internal/ads/c8;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/d8;->a(Lcom/google/android/gms/internal/ads/c8;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_8
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/d8;->waiters:Lcom/google/android/gms/internal/ads/c8;

    sget-object v7, Lcom/google/android/gms/internal/ads/c8;->c:Lcom/google/android/gms/internal/ads/c8;

    if-ne v6, v7, :cond_3

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x7;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    if-eqz v4, :cond_b

    move v5, v8

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/x7;->zzm(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/x7;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Waited "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_14

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sub-long v4, v4, v16

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v9, v4, v13

    if-lez v9, :cond_f

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    :cond_10
    :goto_5
    if-lez v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_11

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_11
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v8, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_14
    invoke-interface/range {p0 .. p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, " but future completed as timeout expired"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final zzw()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d8;->value:Ljava/lang/Object;

    return-object p0
.end method
