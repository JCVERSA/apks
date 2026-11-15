.class public final Lio/appmetrica/analytics/impl/Hf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

.field public final c:Lio/appmetrica/analytics/impl/ga;


# direct methods
.method public constructor <init>(Ljava/io/File;Lio/appmetrica/analytics/impl/G1;Lio/appmetrica/analytics/impl/ga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hf;->a:Ljava/io/File;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Hf;->b:Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Hf;->c:Lio/appmetrica/analytics/impl/ga;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Hf;->c:Lio/appmetrica/analytics/impl/ga;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/impl/ga;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/D9;

    move-result-object v4

    :try_start_0
    iget-object v5, v4, Lio/appmetrica/analytics/impl/D9;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v5, v4, Lio/appmetrica/analytics/impl/D9;->b:Lio/appmetrica/analytics/impl/fa;

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/fa;->a()V

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Hf;->b:Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    invoke-interface {v5, v3}, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;->consume(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/D9;->c()V

    goto :goto_1

    :catchall_0
    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/D9;->c()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
