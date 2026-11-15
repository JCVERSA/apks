.class public final Lcom/doman/core/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doman/core/d/a/a$b;,
        Lcom/doman/core/d/a/a$a;
    }
.end annotation


# instance fields
.field public a:J

.field b:Z

.field c:Z

.field final d:Lcom/doman/core/d/a/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/doman/core/d/a/b<",
            "Lcom/doman/core/d/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/doman/core/d/a/a;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doman/core/d/a/a;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doman/core/d/a/a;->c:Z

    new-instance v0, Lcom/doman/core/d/a/b;

    invoke-direct {v0}, Lcom/doman/core/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/doman/core/d/a/a;->d:Lcom/doman/core/d/a/b;

    new-instance v0, Lcom/doman/core/d/a/a$a;

    invoke-static {}, Lcom/doman/core/d/a/a;->b()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/doman/core/d/a/a$a;-><init>(Landroid/os/Looper;Lcom/doman/core/d/a/a;)V

    iput-object v0, p0, Lcom/doman/core/d/a/a;->e:Landroid/os/Handler;

    return-void
.end method

.method private static b()Landroid/os/Looper;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/doman/core/d/a/a;
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/doman/core/d/a/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/doman/core/d/a/a;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/doman/core/d/a/a;->b:Z

    iget-object v0, p0, Lcom/doman/core/d/a/a;->e:Landroid/os/Handler;

    const/16 v1, 0x2766

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final a(Lcom/doman/core/d/a/a$b;)V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/doman/core/d/a/a;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/doman/core/d/a/a;->d:Lcom/doman/core/d/a/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/doman/core/d/a/a;->d:Lcom/doman/core/d/a/b;

    :goto_0
    iget-object v2, v1, Lcom/doman/core/d/a/b;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/doman/core/d/a/b;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/doman/core/d/a/a;->d:Lcom/doman/core/d/a/b;

    iget-object v1, p0, Lcom/doman/core/d/a/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq p1, v2, :cond_3

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/doman/core/d/a/b;->b:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/doman/core/d/a/a$b;)V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/doman/core/d/a/a;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/doman/core/d/a/a;->d:Lcom/doman/core/d/a/b;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/doman/core/d/a/a;->d:Lcom/doman/core/d/a/b;

    iget-object v1, p0, Lcom/doman/core/d/a/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_1

    iget-object p0, p0, Lcom/doman/core/d/a/b;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
