.class public final Ldnj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Ldnj;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Lxfj;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxfj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxfj;-><init>(Ldnj;Lvdj;)V

    iput-object v0, p0, Ldnj;->c:Lxfj;

    const/4 v0, 0x1

    iput v0, p0, Ldnj;->d:I

    iput-object p2, p0, Ldnj;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ldnj;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Ldnj;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ldnj;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ldnj;
    .locals 4

    const-class v0, Ldnj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldnj;->e:Ldnj;

    if-nez v1, :cond_0

    new-instance v1, Ldnj;

    invoke-static {}, Livg;->a()Love;

    new-instance v2, Lcom/google/android/gms/common/util/concurrent/a;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ldnj;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Ldnj;->e:Ldnj;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ldnj;->e:Ldnj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic e(Ldnj;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Ldnj;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public final c(ILandroid/os/Bundle;)Lxda;
    .locals 2

    new-instance v0, Liij;

    invoke-virtual {p0}, Ldnj;->f()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Liij;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Ldnj;->g(Lrjj;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final d(ILandroid/os/Bundle;)Lxda;
    .locals 2

    new-instance v0, Lcmj;

    invoke-virtual {p0}, Ldnj;->f()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcmj;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Ldnj;->g(Lrjj;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized f()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldnj;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldnj;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized g(Lrjj;)Lxda;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Queueing "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessengerIpcClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ldnj;->c:Lxfj;

    invoke-virtual {v0, p1}, Lxfj;->g(Lrjj;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lxfj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxfj;-><init>(Ldnj;Lvdj;)V

    iput-object v0, p0, Ldnj;->c:Lxfj;

    invoke-virtual {v0, p1}, Lxfj;->g(Lrjj;)Z

    :cond_1
    iget-object p1, p1, Lrjj;->b:Lzda;

    invoke-virtual {p1}, Lzda;->a()Lxda;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
