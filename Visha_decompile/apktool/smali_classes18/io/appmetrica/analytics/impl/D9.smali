.class public final Lio/appmetrica/analytics/impl/D9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Lio/appmetrica/analytics/impl/fa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/fa;

    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/impl/fa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/D9;-><init>(Ljava/util/concurrent/locks/ReentrantLock;Lio/appmetrica/analytics/impl/fa;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;Lio/appmetrica/analytics/impl/fa;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/D9;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/D9;->b:Lio/appmetrica/analytics/impl/fa;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/D9;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/D9;->b:Lio/appmetrica/analytics/impl/fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/fa;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/D9;->b:Lio/appmetrica/analytics/impl/fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/fa;->b()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/D9;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/D9;->b:Lio/appmetrica/analytics/impl/fa;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/fa;->b()V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/fa;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/D9;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
