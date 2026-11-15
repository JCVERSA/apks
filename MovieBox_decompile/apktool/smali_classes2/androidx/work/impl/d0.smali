.class public Landroidx/work/impl/d0;
.super Landroidx/work/WorkManager;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/d0$b;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String;

.field private static l:Landroidx/work/impl/d0;

.field private static m:Landroidx/work/impl/d0;

.field private static final n:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/work/a;

.field private c:Landroidx/work/impl/WorkDatabase;

.field private d:Lk4/c;

.field private e:Ljava/util/List;

.field private f:Landroidx/work/impl/Processor;

.field private g:Landroidx/work/impl/utils/o;

.field private h:Z

.field private i:Landroid/content/BroadcastReceiver$PendingResult;

.field private final j:Li4/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkManagerImpl"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/d0;->k:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-object v0, Landroidx/work/impl/d0;->l:Landroidx/work/impl/d0;

    .line 11
    .line 12
    sput-object v0, Landroidx/work/impl/d0;->m:Landroidx/work/impl/d0;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroidx/work/impl/d0;->n:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lk4/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/work/R$bool;->workmanager_test_configuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/work/impl/d0;-><init>(Landroid/content/Context;Landroidx/work/a;Lk4/c;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lk4/c;Landroidx/work/impl/WorkDatabase;)V
    .locals 9

    .line 7
    invoke-direct {p0}, Landroidx/work/WorkManager;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    new-instance v1, Landroidx/work/j$a;

    invoke-virtual {p2}, Landroidx/work/a;->j()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/work/j$a;-><init>(I)V

    invoke-static {v1}, Landroidx/work/j;->h(Landroidx/work/j;)V

    .line 10
    new-instance v1, Li4/n;

    invoke-direct {v1, v0, p3}, Li4/n;-><init>(Landroid/content/Context;Lk4/c;)V

    iput-object v1, p0, Landroidx/work/impl/d0;->j:Li4/n;

    .line 11
    invoke-virtual {p0, v0, p2, v1}, Landroidx/work/impl/d0;->j(Landroid/content/Context;Landroidx/work/a;Li4/n;)Ljava/util/List;

    move-result-object v0

    .line 12
    new-instance v8, Landroidx/work/impl/Processor;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/Processor;-><init>(Landroid/content/Context;Landroidx/work/a;Lk4/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    move-object v2, p0

    .line 13
    invoke-direct/range {v2 .. v8}, Landroidx/work/impl/d0;->v(Landroid/content/Context;Landroidx/work/a;Lk4/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/Processor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lk4/c;Z)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-interface {p3}, Lk4/c;->b()Lk4/a;

    move-result-object v1

    .line 5
    invoke-static {v0, v1, p4}, Landroidx/work/impl/WorkDatabase;->g0(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p4

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/work/impl/d0;-><init>(Landroid/content/Context;Landroidx/work/a;Lk4/c;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Landroidx/work/a;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/work/impl/d0;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/work/impl/d0;->l:Landroidx/work/impl/d0;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget-object v2, Landroidx/work/impl/d0;->m:Landroidx/work/impl/d0;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object v1, Landroidx/work/impl/d0;->m:Landroidx/work/impl/d0;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    new-instance v1, Landroidx/work/impl/d0;

    .line 34
    .line 35
    new-instance v2, Lk4/d;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/work/a;->m()Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v2, v3}, Lk4/d;-><init>(Ljava/util/concurrent/Executor;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/d0;-><init>(Landroid/content/Context;Landroidx/work/a;Lk4/c;)V

    .line 45
    .line 46
    .line 47
    sput-object v1, Landroidx/work/impl/d0;->m:Landroidx/work/impl/d0;

    .line 48
    .line 49
    :cond_2
    sget-object p0, Landroidx/work/impl/d0;->m:Landroidx/work/impl/d0;

    .line 50
    .line 51
    sput-object p0, Landroidx/work/impl/d0;->l:Landroidx/work/impl/d0;

    .line 52
    .line 53
    :cond_3
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public static n()Landroidx/work/impl/d0;
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/d0;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/work/impl/d0;->l:Landroidx/work/impl/d0;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Landroidx/work/impl/d0;->m:Landroidx/work/impl/d0;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public static o(Landroid/content/Context;)Landroidx/work/impl/d0;
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/d0;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroidx/work/impl/d0;->n()Landroidx/work/impl/d0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    instance-of v1, p0, Landroidx/work/a$c;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    move-object v1, p0

    .line 19
    check-cast v1, Landroidx/work/a$c;

    .line 20
    .line 21
    invoke-interface {v1}, Landroidx/work/a$c;->a()Landroidx/work/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p0, v1}, Landroidx/work/impl/d0;->h(Landroid/content/Context;Landroidx/work/a;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Landroidx/work/impl/d0;->o(Landroid/content/Context;)Landroidx/work/impl/d0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    .line 38
    .line 39
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    :goto_0
    monitor-exit v0

    .line 44
    return-object v1

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method private v(Landroid/content/Context;Landroidx/work/a;Lk4/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/Processor;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/work/impl/d0;->a:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/work/impl/d0;->b:Landroidx/work/a;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/work/impl/d0;->d:Lk4/c;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/work/impl/d0;->c:Landroidx/work/impl/WorkDatabase;

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/work/impl/d0;->e:Ljava/util/List;

    .line 14
    .line 15
    iput-object p6, p0, Landroidx/work/impl/d0;->f:Landroidx/work/impl/Processor;

    .line 16
    .line 17
    new-instance p2, Landroidx/work/impl/utils/o;

    .line 18
    .line 19
    invoke-direct {p2, p4}, Landroidx/work/impl/utils/o;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Landroidx/work/impl/d0;->g:Landroidx/work/impl/utils/o;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Landroidx/work/impl/d0;->h:Z

    .line 26
    .line 27
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 p3, 0x18

    .line 30
    .line 31
    if-lt p2, p3, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Landroidx/work/impl/d0$b;->a(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/work/impl/d0;->d:Lk4/c;

    .line 49
    .line 50
    new-instance p3, Landroidx/work/impl/utils/ForceStopRunnable;

    .line 51
    .line 52
    invoke-direct {p3, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/d0;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, p3}, Lk4/c;->c(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public A(Landroidx/work/impl/u;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->d:Lk4/c;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/utils/StartWorkRunnable;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/utils/StartWorkRunnable;-><init>(Landroidx/work/impl/d0;Landroidx/work/impl/u;Landroidx/work/WorkerParameters$a;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lk4/c;->c(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public B(Lj4/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->d:Lk4/c;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/utils/StopWorkRunnable;

    .line 4
    .line 5
    new-instance v2, Landroidx/work/impl/u;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Landroidx/work/impl/u;-><init>(Lj4/m;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-direct {v1, p0, v2, p1}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/d0;Landroidx/work/impl/u;Z)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lk4/c;->c(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public C(Landroidx/work/impl/u;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->d:Lk4/c;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/utils/StopWorkRunnable;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/d0;Landroidx/work/impl/u;Z)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lk4/c;->c(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Landroidx/work/p;
    .locals 1

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/work/impl/w;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/work/impl/w;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p2, "beginUniqueWork needs at least one OneTimeWorkRequest."

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public d(Ljava/util/List;)Landroidx/work/l;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/work/impl/w;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/w;-><init>(Landroidx/work/impl/d0;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/work/impl/w;->a()Landroidx/work/l;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "enqueue needs at least one WorkRequest."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public e(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/m;)Landroidx/work/l;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p3}, Landroidx/work/impl/WorkerUpdater;->c(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/r;)Landroidx/work/l;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/impl/d0;->k(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/m;)Landroidx/work/impl/w;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/work/impl/w;->a()Landroidx/work/l;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public g(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->c:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lj4/v;->B(Ljava/util/List;)Landroidx/lifecycle/LiveData;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Landroidx/work/impl/d0$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroidx/work/impl/d0$a;-><init>(Landroidx/work/impl/d0;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/work/impl/d0;->d:Lk4/c;

    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Landroidx/work/impl/utils/LiveDataUtils;->a(Landroidx/lifecycle/LiveData;Ll/a;Lk4/c;)Landroidx/lifecycle/LiveData;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public i(Ljava/util/UUID;)Landroidx/work/l;
    .locals 1

    .line 1
    invoke-static {p1, p0}, Landroidx/work/impl/utils/CancelWorkRunnable;->forId(Ljava/util/UUID;Landroidx/work/impl/d0;)Landroidx/work/impl/utils/CancelWorkRunnable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/work/impl/d0;->d:Lk4/c;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lk4/c;->c(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/work/impl/utils/CancelWorkRunnable;->getOperation()Landroidx/work/l;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public j(Landroid/content/Context;Landroidx/work/a;Li4/n;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p1, p0}, Landroidx/work/impl/t;->a(Landroid/content/Context;Landroidx/work/impl/d0;)Landroidx/work/impl/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/work/impl/background/greedy/a;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2, p3, p0}, Landroidx/work/impl/background/greedy/a;-><init>(Landroid/content/Context;Landroidx/work/a;Li4/n;Landroidx/work/impl/d0;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    new-array p1, p1, [Landroidx/work/impl/s;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    aput-object v0, p1, p2

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    aput-object v1, p1, p2

    .line 18
    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public k(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/m;)Landroidx/work/impl/w;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    sget-object p2, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 9
    .line 10
    :goto_0
    new-instance v0, Landroidx/work/impl/w;

    .line 11
    .line 12
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/work/impl/w;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public l()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Landroidx/work/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->b:Landroidx/work/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Landroidx/work/impl/utils/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->g:Landroidx/work/impl/utils/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Landroidx/work/impl/Processor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->f:Landroidx/work/impl/Processor;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Li4/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->j:Li4/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->c:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lk4/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/d0;->d:Lk4/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/d0;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Landroidx/work/impl/d0;->h:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/work/impl/d0;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Landroidx/work/impl/d0;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public x()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/d0;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/work/impl/background/systemjob/k;->a(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lj4/v;->p()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Landroidx/work/impl/d0;->r()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v1, v2}, Landroidx/work/impl/t;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public y(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/d0;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroidx/work/impl/d0;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/work/impl/d0;->h:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroidx/work/impl/d0;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public z(Landroidx/work/impl/u;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/work/impl/d0;->A(Landroidx/work/impl/u;Landroidx/work/WorkerParameters$a;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
