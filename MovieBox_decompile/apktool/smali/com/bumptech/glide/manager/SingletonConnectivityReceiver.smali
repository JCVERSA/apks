.class final Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;,
        Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;,
        Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityMonitor"

.field private static volatile instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;


# instance fields
.field private final frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

.field private isRegistered:Z

.field final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/bumptech/glide/util/GlideSuppliers;->memorize(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;)Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;)V

    .line 23
    .line 24
    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v3, 0x18

    .line 28
    .line 29
    if-lt v2, v3, :cond_0

    .line 30
    .line 31
    new-instance p1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;

    .line 32
    .line 33
    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;-><init>(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v2, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    .line 38
    .line 39
    invoke-direct {v2, p1, v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;-><init>(Landroid/content/Context;Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    .line 40
    .line 41
    .line 42
    move-object p1, v2

    .line 43
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    .line 44
    .line 45
    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_2
    sget-object p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 31
    .line 32
    return-object p0
.end method

.method private maybeRegisterReceiver()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;->register()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method private maybeUnregisterReceiver()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;->unregister()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method static reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method declared-synchronized register(Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->maybeRegisterReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method declared-synchronized unregister(Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->maybeUnregisterReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method
